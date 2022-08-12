// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.7;

contract Porperty {
    int public value;

    uint8 public x = 255;

    function setValue(int _value) public{
        value = _value;
    }

    function f1() public{
        // on current conditions, it will fail because of overflow
        x=x+1;
    }
}