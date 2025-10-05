// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract MyContract {
    // 🔹 State Variable
    // Declared inside the contract but outside any function.
    // Stored permanently on the blockchain (in contract storage).
    // It keeps its value between function calls and even between transactions.
    string public message;  

    // 🔹 Function: setMessage
    // This public function allows users to update the 'message' variable.
    // 'string memory newMsg' means the input string is stored temporarily in memory,
    // and then assigned to the state variable 'message'.
    function setMessage(string memory newMsg) public {
        message = newMsg;  // here, the value is saved permanently in blockchain storage
    }


    // 🔹 Example of a Local Variable
    // Local variables are declared inside functions.
    // They exist only while the function is running,
    // and are destroyed after the function finishes.
    // They are NOT stored on the blockchain permanently.

    function add(uint x, uint y) public pure returns (uint) {
        // 'sum' is a local variable.
        // It only lives temporarily during this function call.
        // After the function ends, 'sum' is discarded.
        uint sum = x + y;  
        return sum;  // return the temporary result
}

// 🔹 Example: How to use Global Variables

    address public lastSender;  // stores the address of the last caller
    uint public lastValue;      // stores the ether amount sent
 
     function recordCall() public payable {
        // msg.sender → global variable that represents 
        // the address of the account calling this function
        lastSender = msg.sender; // who called     

        // msg.value → global variable that represents 
        // the amount of ether (in wei) sent with this function call
        lastValue = msg.value;    //ether send
    }

 /*   👉 Important: Global variables do not store themselves permanently.
         They are temporary built-ins provided by Solidity.
         But we can copy their values into state variables 
         (like lastSender and lastValue) to save them on the blockchain.

         ⚡ Other global variables include:
         - block.number → current block number
         - block.timestamp → current block’s timestamp
         - block.coinbase → miner’s address
         - tx.origin → original sender of the transaction (use with caution)
*/


}
