// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Batman is ERC20Capped, Ownable {



    constructor(uint cap) ERC20("Batman", "BAT") ERC20Capped(cap*(10**18)){}
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function getOwner() external view returns(address) {
        return super.owner();
    }

}