use convert_case::{Case, Casing};

use super::stg_section::ScenarioTestFn;

pub type WriteTestFn = fn(&str) -> String;

pub const DEFAULT_TEST_GO: &str = "";
pub const DEFAULT_TEST_RS: &str = "use dharitri_sc_scenario::*;

fn world() -> ScenarioWorld {
    todo!()
}";

pub fn format_test_fn_rs(scenario_file_name: &str) -> String {
    format!(
        "
fn {}_rs() {{
    dharitri_sc_scenario::run_rs(\"scenarios/{}.scen.json\", world());
}}",
        scenario_file_name.to_case(Case::Snake),
        scenario_file_name,
    )
}

pub fn format_test_fn_go(scenario_file_name: &str) -> String {
    format!(
        "
fn {}_go() {{
    dharitri_sc_scenario::run_go(\"scenarios/{}.scen.json\");
}}",
        scenario_file_name.to_case(Case::Snake),
        scenario_file_name,
    )
}

pub fn format_section(test_fn: &ScenarioTestFn, write_test_fn: WriteTestFn) -> String {
    let mut section_str = test_fn.docs.clone();
    section_str.push_str(&test_fn.test_line);
    if let Some(ignore_line) = &test_fn.ignore_line {
        section_str.push('\n');
        section_str.push_str(ignore_line);
    }
    section_str.push_str(&write_test_fn(&test_fn.scenario_file_name));
    section_str
}
