//SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

// Example: Arithmetic in Solidity
contract ArithmeticExample {
    uint public a = 10;
    uint public b = 3;
    uint public sum = a + b;       // 13
    uint public diff = a - b;      // 7
    uint public product = a * b;   // 30
    uint public quotient = a / b;  // 3 (integer division)
    uint public remainder = a % b; // 1
}

// Example: Comparison in Solidity
contract ComparisonExample {
    function compare(uint x, uint y) public pure returns (bool equal, bool greater) {
        equal = (x == y);       // true if x and y are the same
        greater = (x > y);      // true if x is larger than y
    }
}

// Example: Logical operators in Solidity
contract LogicalExample {
    function logic(bool a, bool b) public pure returns (bool bothTrue, bool anyTrue, bool notA) {
        bothTrue = a && b;     // true only if a and b are both true
        anyTrue = a || b;      // true if either a or b (or both) is true
        notA = !a;             // true if a is false, false if a is true
    }
}

// Example: Assignment operators in Solidity
contract AssignmentExample {
    uint public count = 5;
    function increment() public {
        count += 10;   // now count is 15
    }
    function reset() public {
        count = 3;     // now count is 3
    }
    function multiply() public {
        count *= 2;    // doubles the count
    }
}

// Example: Bitwise in Solidity
contract BitwiseExample {
    function bitwiseOp() public pure returns (uint) {
        uint x = 5;   // binary 0101
        uint y = 3;   // binary 0011
        uint z = x & y; // bitwise AND: 0101 & 0011 = 0001 (which is 1)
        return z;
    }
}




