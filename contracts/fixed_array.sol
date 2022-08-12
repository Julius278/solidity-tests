// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FixedSizeArray{
    uint[3] public numbers = [2, 5, 8];

    function setElement(uint index, uint number) public{
        numbers[index] = number;
    }

    function getLength() public view returns(uint){
        return numbers.length;
    }
}