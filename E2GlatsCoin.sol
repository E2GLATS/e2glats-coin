pragma solidity ^0.4.2;

import './MintableToken.sol';

contract E2GlatsCoin is MintableToken {
    string public name = "E2GlatsCoin";
    string public symbol = "E2C";
    uint256 public decimals = 18;
}