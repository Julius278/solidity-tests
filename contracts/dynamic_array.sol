// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract DynamicArray{
    uint[] public numbers;

    function getLength() public view returns(uint){
        return numbers.length;
    }

    //Add a new element to the dynamic array
    function pushNumber(uint _number) public{
        numbers.push(_number);
    }

    //included getter with a check of NullPointer
    function getElement(uint _index) public view returns(uint){
        if(_index < numbers.length){
            return numbers[_index];
        }
        return 0;
    }

    // deletes the last number in the dynamic array
    function popNumber() public {
        if(numbers.length > 0){
            numbers.pop();
        }
    }
    
}