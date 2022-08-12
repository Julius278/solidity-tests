// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Bytes{
    
    bytes public b = '10';

    function getLength() public view returns(uint){
        return b.length;
    }

    function getElement(uint i) public view returns(bytes1){
        if(i < b.length){
            return b[i];
        }
    }
}