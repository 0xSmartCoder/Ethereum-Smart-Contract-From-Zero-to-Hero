// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract Data_Types {
    // Example of declaring variables with different data types
    uint public age = 25;
    string public name = "Alice";
    bool public isRegistered = true;
   //uint (Unsigned integer) it means whole numbers - no decimals, and no negative
   uint public _age = 30; //only positive numbers

   //Integers (int)
   // unlike uint, the type int can also store negative numbers

   int public tempreature = -5;
   // Boolean variable can only be true or false

   bool public isActive = true;

   //Address
//    Ethereum accounts and contract each have an address
  address public owner = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


  //Bytes
  // Bytes are used to store rawa data, the most common is bytes32

  bytes32 public data = "HelloBlockchain";

//   Enums let you create your own set of options, they make contract easier to read

enum status{
    pending,
    shipped,
    Selivered
}
status public orderStatus = status.pending;

// Arrays
// arrays ket you store a collection of values of the same type
uint[] public numbers = [1,2,3,4,5];

//structs
// structs allow you to group different variables under same name
struct student{
    string name;
    uint256 age;
}
student public students = student("Alice", 20);

//Mappings are like dictionaries they connect key to a value
mapping (address => uint) public balances;
}

