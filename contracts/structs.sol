// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

struct Teacher{
    string name;
    uint age;
    address addr;
}

contract Class {
    Teacher public teacher;

    constructor(string memory _name, uint _age){
        teacher.name = _name;
        teacher.age = _age;
        teacher.addr = msg.sender;
    }

    function changeTeacher(string memory _name, uint _age, address _addr) public{
        Teacher memory nTeacher = Teacher({
            name: _name,
            age: _age,
            addr: _addr
        });

        teacher = nTeacher;
    }
}