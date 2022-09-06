//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract Loops {

    event Number(
        uint date,
        address add,
        uint number
    );

    function showNumbers(uint number, uint amount) public {
        for(uint i = 0; i< amount; i++){
            emit Number(block.timestamp, msg.sender, number);
        }
    }
}