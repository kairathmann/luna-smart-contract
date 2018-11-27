pragma solidity ^0.4.24;


import "./StandardToken.sol";


/**
 * @title Luna token
 * Luna ERC20 Token
 * Based on OpenZeppelin 1.12 StandardToken
 */
contract LunaToken is StandardToken {

  string public constant name = "Luna Stars";
  string public constant symbol = "LSTR";
  uint8 public constant decimals = 18;

  uint256 public constant INITIAL_SUPPLY = 38000000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
  }
}
