//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract ErrorHandling{

    uint demo_var = 10;

    // require
    function func1(uint num) public view returns(uint){
        require(demo_var % num == 0, "invalid number");
        uint div = demo_var / num;
        return div;
    }

    // if + revert
    function func2(uint num) public view returns(uint){
        if(demo_var % num != 0){
            revert("invalid number, revert");
        }
        uint div = demo_var / num;
        return div;
    }

    // assert
    function func3(uint num) public view returns(uint){
        assert(demo_var % num == 0);
        uint div = demo_var / num;
        return div;
    }


}