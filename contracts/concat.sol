//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract Concat{
    string public s1 = "ab";
    string public s2 = "cd";

    function start() public view returns(string memory) {
        return string(abi.encodePacked(s1, s2));
    }
}