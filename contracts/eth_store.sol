// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ETHStore{

    receive() external payable {}
    fallback() external payable {}

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function sendEther() payable public{
    }

    function transferEther(address payable recipient, uint amount) public returns(bool){
        if(amount <= getBalance() ){
            recipient.transfer(amount);
            return true;
        } else{
            return false;
        }
    }
}