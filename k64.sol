// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Metacrafters is ERC20, Ownable {
    constructor( address initialOwner) ERC20("KC064RIL", "K64")  Ownable(initialOwner){}

    function mintToken(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burnToken(uint256 amount) external {
        _burn(msg.sender, amount);
    }

    function transferToken(address recipient, uint256 amount) external  returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

 
   
}
