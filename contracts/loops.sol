//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract Loops {

    event Number(
        uint date,
        address add,
        uint number,
        uint i
    );

    function showNumbers(uint number, uint amount) public {
        for(uint i = 0; i< amount; i++){
            emit Number(block.timestamp, msg.sender, number, i);
        }
    }

    function showNumbersWithBreak(uint number, uint amount) public {
        for(uint i = 0; i< amount; i++){

            if(i > 5){
                break;
            }
            emit Number(block.timestamp, msg.sender, number, i);
        }
    }

    function whileLoopNumbers(uint number, uint amount) public {
        bool check = false;
        
        uint i = 0;

        while(!check){
            emit Number(block.timestamp, msg.sender, number, i);
            i++;
            if(i == amount){
                check = true;
            }
        }
    }

    function doWhileLoopNumbers(uint number, uint amount) public {
        require(amount > 0, "amount has to be greater than zero");
        bool check = true;

        uint i = 0;

        // calls the function in the do{} at least once
        do{
            emit Number(block.timestamp, msg.sender, number, i);
            i++;
            if(amount == 0 || i == amount){
                check = true;
            }
        } while(!check);
    }
}