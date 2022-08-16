// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A {
    uint public x = 25;
    uint y = 12;

    function get_y() public view returns(uint){
        return y;
    }

    function f1() private view returns(uint){
        return x;
    }

    function f2() public view returns(uint){
        uint a = f1();
        return a;
    }

    // only accessible from within the contract or derived contracts
    function f3() internal view returns(uint){
        return x;
    }

    // only accessible from other contracts or eth addresses
    function f4() external view returns(uint){
        return x;
    }
}

contract B is A{
    // possible because f3() is internal
    uint public xi = f3();
}

contract C {
    A public contract_a = new A();
    address public a = address(contract_a);
    uint public xa = contract_a.f4(); 
}