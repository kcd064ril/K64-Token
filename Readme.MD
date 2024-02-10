
# K64 Smart Contract

## Overview

Metacrafters is an ERC20 token smart contract implemented in Solidity. It allows for minting, burning, and transferring tokens. The contract inherits from the OpenZeppelin ERC20 contract and Ownable contract.

## License

This smart contract is released under the MIT License.

## Usage

### Contract Details

- **Name**: KC064RIL
- **Symbol**:  K64
- **Version**: 1.0.0
- **Solidity Version**: ^0.8.9
- **Dependencies**: OpenZeppelin contracts (ERC20.sol, Ownable.sol)

### Functions

- **constructor**: Initializes the token with a given initial owner.
- **mintToken**: Mints new tokens and assigns them to the specified recipient. Only the contract owner can call this function.
- **burnToken**: Burns a specified amount of tokens from the caller's balance.
- **transferToken**: Transfers tokens from the caller's balance to the specified recipient.

## Installation

1. Clone the repository.
2. Install dependencies using npm:

```bash
npm install
