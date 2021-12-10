pragma solidity >=0.6.0 <0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Capped.sol";

//可销毁代币
contract ERC20WithCapped is ERC20, ERC20Detailed, ERC20Capped {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply,
        uint256 cap
     ) public ERC20Detailed(name, symbol, decimals) ERC20Capped(cap * (10**uint256(decimals))){
        _mint(msg.sender, totalSupply * (10**uint256(decimals)));
    }
}