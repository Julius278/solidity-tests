//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract Events{
    
    //indexed for filtering
    event Address_info(
        uint indexed date,
        address indexed sender,
        uint number
    );

    function emit_event() external {
        emit Address_info(block.timestamp, msg.sender, 55);
    }
}