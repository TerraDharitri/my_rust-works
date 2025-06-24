#!/bin/bash

# sc-meta account --api https://devnet-gateway.dharitri.org --address drt1qqqqqqqqqqqqqpgqyxel2ed6lf4q0wdprc9g2e0g6f7hujxnwadsxnw335 > bytes4.json
# sc-meta account --api https://devnet-gateway.dharitri.org --address drt1qqqqqqqqqqqqqpgqkgj6xrrg3qejh30kxxw4h7cg6aecyy7vwadszejyys > bytes8.json
# sc-meta account --api https://devnet-gateway.dharitri.org --address drt1qqqqqqqqqqqqqpgq9m6p365l2dhl0u8pqr8ag00e8lt68umrwadsyg0xlq > bytes16.json
# sc-meta account --api https://devnet-gateway.dharitri.org --address drt1qqqqqqqqqqqqqpgq0uahuqnu0afru3803ueg7eklruea633lwadsq7xq5t > bytes32.json


sc-meta account --api http://localhost:8085 --address drt1k0tdvsvsf84j8xkkjgjhg2m0kw3ltcev8utk5jc6lzeaqmmkwads34hlnt > owner.json
sc-meta account --api http://localhost:8085 --address drt1qqqqqqqqqqqqqpgquecqjfz44kml4xkulha43xfghueuxvlmwads88fehl > bytes4.json
sc-meta account --api http://localhost:8085 --address drt1qqqqqqqqqqqqqpgqdz4rsucjvgggavmjyw742lm6eh4pfm9twadsq6c2yf > bytes8.json
sc-meta account --api http://localhost:8085 --address drt1qqqqqqqqqqqqqpgqxakesav5v2znzdpdkwsx53n4lqt3dqmawads6hzn92 > bytes16.json
sc-meta account --api http://localhost:8085 --address drt1qqqqqqqqqqqqqpgqfexagv6z25a34u5x6rcdezntsk7l09hrwadszs46gt > bytes32.json
