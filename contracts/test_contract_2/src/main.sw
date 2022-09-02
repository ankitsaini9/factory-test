contract;

use std::vec::Vec;


abi MyContract {
    fn test_function() -> (Vec<u64>, Vec<u64>);
}

impl MyContract for Contract {
    fn test_function() -> (Vec<u64>, Vec<u64>) {
        let mut v1 = ~Vec::new();
        v1.push(123);
        v1.push(456);

        let mut v2 = ~Vec::new();
        v2.push(123);
        v2.push(456);

        (v1, v2)
    }

}

