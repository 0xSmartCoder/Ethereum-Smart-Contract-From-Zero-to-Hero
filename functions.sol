// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.29;

contract functionsInSolidity{
function multiply (uint x, uint y)public pure returns(uint){
    return x*y;
}

// function functionName (parameterList) visibility returns(returnsType){
//     // code block
// } 



function add(uint a, uint b) public pure returns (uint) {
        uint sum = a + b;
        return sum;
    }


function subtract(uint a, uint b) public pure returns (uint) {
    uint diff = a - b;
return diff;
//  this substract function return only 1 uint
}
// Multiple returns
function stats(uint a, uint b) public pure returns (uint sum, uint prod) {
    sum = a + b;
    prod = a * b;
}

function pubFunc() public {/* anyone can call */}
function extFunc() external {/* only external calls*/}
function intFunc() internal {/* only this contract or children */}
function privFunc() private {/* only this contract  */}

// view and pure

uint x = 10;
function getX  ()public view returns(uint){
    return x;   
    // reads only state
} 

// now pure

function  multiply_01(uint a, uint b)public pure returns(uint){
    return a*b;
    // doesn't touch any contract state...
}

// for example
function acceptEther () public payable {
    // this function can accept ethers now 
}

// for example
function getSum(uint a, uint b) public pure returns (uint) {
    return a + b;
}
function getSum(uint a, uint b, uint c) public pure returns (uint) {
    return a+b+c;
}

}
// Calling function this is second contract you hav to deploy 2 contracts 1st upper one 2nd this one.
contract Example {
    uint public  mainNum = 12;
    function foo() public{
        bar(5);      // internal call
        // calling bar function in foo and for external functions use : this.bar()
    }
    function bar(uint _num) public{
        mainNum = mainNum+_num;
        // ...
    }
}
