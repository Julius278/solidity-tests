// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Teacher{
    string name;
    uint age;
    address addr;
}

contract Class {
    Teacher public teacher;

    enum Quality {Good, Ok, Bad}
    Quality public classQuality = Quality.Good;

    constructor(string memory _name, uint _age){
        teacher.name = _name;
        teacher.age = _age;
        teacher.addr = msg.sender;
    }

    function changeTeacher(string memory _name, uint _age, address _addr) public{
        if(classQuality == Quality.Bad){
            Teacher memory nTeacher = Teacher({
                name: _name,
                age: _age,
                addr: _addr
            });
            teacher = nTeacher;
        }
    }

    function setQualityToBad() public{
        classQuality = Quality.Bad;
    }

    function setQualityToGood() public{
        classQuality = Quality.Good;
    }
}