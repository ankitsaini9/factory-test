contract;

use std::vec::Vec;

struct test_struct {
    v1: Vec<u64>,
    v2: Vec<u64>,
}

abi MyContract {
    fn test_function() -> test_struct;
    fn test_function_2() -> Vec<u64>;
}

impl MyContract for Contract {
    fn test_function() -> test_struct {
        let mut v1 = ~Vec::new();
        v1.push(123);
        v1.push(456);

        let mut v2 = ~Vec::new();
        v2.push(123);
        v2.push(456);

        let res = test_struct{
            v1: v1,
            v2: v2,
        };

        res
    }

    fn test_function_2() -> Vec<u64> {
        ~Vec::new()
    }
}

