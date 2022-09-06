//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract MultiReturn{

    function start() public pure returns(uint, uint, uint) {
        uint a = 2;
        uint b = 3;
        uint c = 4;
        return(a,b, c) ;
    }
}