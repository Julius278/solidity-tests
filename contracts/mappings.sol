// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Guess{

    mapping(address => string) public guesses;

    function addGuess(string memory _guess) public {
        guesses[msg.sender] = _guess;
    }
}