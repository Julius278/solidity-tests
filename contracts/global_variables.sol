// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GlobalVars{
    address public owner;
    uint sentValue;

    constructor(){
        owner = msg.sender;
    }

    function changeOwner() public {
        owner = msg.sender;
    }

    function sendEther() public payable {
        sentValue = msg.value;
    }

    function getContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function howMuchGas() public view returns(uint){
        uint start = gasleft();
        uint j = 2;

        for(uint i = 0; i<30; i++){
            j = j*i;
        }

        uint end = gasleft();
        return start - end;
    }
}