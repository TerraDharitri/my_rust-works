use core::convert::TryFrom;

use router::multi_pair_swap::{
    SWAP_TOKENS_FIXED_INPUT_FUNC_NAME, SWAP_TOKENS_FIXED_OUTPUT_FUNC_NAME,
};

use crate::{
    config::{ROUTER_SWAP_ARGS_LEN, SEND_TOKENS_ARGS_LEN, SWAP_ARGS_LEN},
    external_sc_interactions,
};

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

pub type PaymentsVec<M> = ManagedVec<M, DcdtTokenPayment<M>>;

#[derive(TypeAbi, TopEncode, TopDecode, PartialEq, ManagedVecItem)]
pub enum TaskType {
    WrapREWA,
    UnwrapREWA,
    Swap,
    RouterSwap,
    SendRewaOrDcdt,
}

#[dharitri_sc::module]
pub trait TaskCall:
    external_sc_interactions::pair_actions::PairActionsModule
    + external_sc_interactions::router_actions::RouterActionsModule
    + external_sc_interactions::wrewa_swap::WrewaWrapModule
{
    #[payable("*")]
    #[endpoint(composeTasks)]
    fn compose_tasks(
        &self,
        min_expected_token_out: RewaOrDcdtTokenPayment,
        tasks: MultiValueEncoded<MultiValue2<TaskType, ManagedVec<ManagedBuffer>>>,
    ) {
        let mut payment_for_next_task = self.call_value().rewa_or_single_dcdt();
        let mut payments_to_return = PaymentsVec::new();

        let mut dest_addr = self.blockchain().get_caller();

        for task in tasks.into_iter() {
            let (task_type, args) = task.into_tuple();

            let payment_for_current_task = payment_for_next_task.clone();

            payment_for_next_task = match task_type {
                TaskType::WrapREWA => self.wrap_rewa(payment_for_current_task),
                TaskType::UnwrapREWA => self.unwrap_rewa(payment_for_current_task),
                TaskType::Swap => {
                    self.swap(payment_for_current_task, &mut payments_to_return, args)
                }
                TaskType::RouterSwap => {
                    self.router_swap(payment_for_current_task, &mut payments_to_return, args)
                }
                TaskType::SendRewaOrDcdt => {
                    require!(
                        args.len() == SEND_TOKENS_ARGS_LEN,
                        "Invalid number of arguments!"
                    );
                    let new_destination = ManagedAddress::try_from(args.get(0).clone_value())
                        .unwrap_or_else(|err| sc_panic!(err));

                    dest_addr = new_destination;
                    break;
                }
            };
        }
        self.send_resulted_payments(
            dest_addr,
            min_expected_token_out,
            payment_for_next_task,
            &mut payments_to_return,
        )
    }

    fn swap(
        &self,
        payment_for_current_task: RewaOrDcdtTokenPayment,
        payments_to_return: &mut PaymentsVec<Self::Api>,
        args: ManagedVec<ManagedBuffer>,
    ) -> RewaOrDcdtTokenPayment {
        require!(
            !payment_for_current_task.token_identifier.is_rewa(),
            "REWA can't be swapped!"
        );
        let payment_in = payment_for_current_task.unwrap_dcdt();

        require!(
            args.len() == SWAP_ARGS_LEN,
            "Incorrect arguments for swap task!"
        );

        let function_in_out = args.get(0).clone_value();
        let token_out = TokenIdentifier::from(args.get(1).clone_value());
        let min_amount_out = BigUint::from(args.get(2).clone_value());

        // if function_in_out
        let swap_tokens_fixed_input_function =
            ManagedBuffer::from(SWAP_TOKENS_FIXED_INPUT_FUNC_NAME);
        let swap_tokens_fixed_output_function =
            ManagedBuffer::from(SWAP_TOKENS_FIXED_OUTPUT_FUNC_NAME);
        require!(
            function_in_out == swap_tokens_fixed_input_function
                || function_in_out == swap_tokens_fixed_output_function,
            "Invalid function name for swap"
        );

        let payment_out = if function_in_out == swap_tokens_fixed_input_function {
            self.perform_swap_tokens_fixed_input(
                payment_in.token_identifier,
                payment_in.amount,
                token_out,
                min_amount_out,
            )
        } else {
            let returned_payments_by_pair = self.perform_swap_tokens_fixed_output(
                payment_in.token_identifier,
                payment_in.amount,
                token_out,
                min_amount_out,
            );
            let payment_out = returned_payments_by_pair.get(0);
            if returned_payments_by_pair.len() == 2 {
                let payment_in_leftover = returned_payments_by_pair.get(1);
                payments_to_return.push(payment_in_leftover);
            }
            payment_out
        };

        payment_out.into()
    }

    fn router_swap(
        &self,
        payment_for_current_task: RewaOrDcdtTokenPayment,
        payments_to_return: &mut PaymentsVec<Self::Api>,
        args: ManagedVec<ManagedBuffer>,
    ) -> RewaOrDcdtTokenPayment {
        require!(
            !payment_for_current_task.token_identifier.is_rewa(),
            "REWA can't be swapped!"
        );
        require!(
            args.len() % ROUTER_SWAP_ARGS_LEN == 0,
            "Invalid number of router swap arguments"
        );
        let payment_in = payment_for_current_task.unwrap_dcdt();
        let mut returned_payments_by_router = self.multi_pair_swap(payment_in, args);

        require!(
            !returned_payments_by_router.is_empty(),
            "Router swap returned 0 payments"
        );

        let last_payment_index = returned_payments_by_router.len() - 1;
        let payment_out = returned_payments_by_router.take(last_payment_index);
        payments_to_return.append_vec(returned_payments_by_router);
        RewaOrDcdtTokenPayment::from(payment_out)
    }

    fn send_resulted_payments(
        &self,
        dest_addr: ManagedAddress,
        min_expected_token_out: RewaOrDcdtTokenPayment,
        payment_for_current_task: RewaOrDcdtTokenPayment,
        payments_to_return: &mut PaymentsVec<Self::Api>,
    ) {
        self.require_min_expected_token(&min_expected_token_out, &payment_for_current_task);
        if payment_for_current_task.token_identifier.is_rewa() {
            self.send()
                .direct_rewa(&dest_addr, &payment_for_current_task.amount);
        } else {
            payments_to_return.push(DcdtTokenPayment::new(
                payment_for_current_task.token_identifier.unwrap_dcdt(),
                payment_for_current_task.token_nonce,
                payment_for_current_task.amount,
            ));
        }
        if !payments_to_return.is_empty() {
            self.send().direct_multi(&dest_addr, payments_to_return);
        }
    }

    fn require_min_expected_token(
        &self,
        expected_token: &RewaOrDcdtTokenPayment,
        token_out: &RewaOrDcdtTokenPayment,
    ) {
        require!(
            expected_token.token_identifier == token_out.token_identifier
                && expected_token.amount <= token_out.amount,
            "The output token is less or different than the one required by user!"
        );
    }
}
