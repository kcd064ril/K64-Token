// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BazuToken {
    address public  owner;
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;


    constructor() {
        owner = msg.sender;
        name = "KC064RIL";
        symbol = "K64";
        decimals = 18;

    }

    function transferToken(address _to, uint256 _amt) external returns (bool success) {
        require(balanceOf[msg.sender] >= _amt, "Insufficient balance");

        balanceOf[msg.sender] -= _amt;
        balanceOf[_to] += _amt;
        return true;
    }

    function burnToken(uint256 _amt) external returns (bool success) {
        require(balanceOf[msg.sender] >= _amt, "low balance");

        balanceOf[msg.sender] -= _amt;
        totalSupply -= _amt;
        return true;
    }

    function mintToken( uint256 _amt) external returns (bool success) {
        require(msg.sender == owner, "Only owner can call this");
        balanceOf[msg.sender] += _amt;
        totalSupply += _amt;
        return true;
    }
}

