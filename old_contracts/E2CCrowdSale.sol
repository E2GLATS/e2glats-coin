pragma solidity ^0.4.2;

import './E2GlatsCoin.sol';
import './Crowdsale.sol';

contract E2CCrowdSale is Crowdsale {

  /**
  * @dev Throws if called by any account other than the owner.
  */
  modifier onlyWallet() {
    require(msg.sender == wallet);
    _;
  }

  function E2CCrowdSale(uint256 _startTime, uint256 _endTime, uint256 _rate, address _wallet) 
    E2CCrowdSale(_startTime, _endTime, _rate, _wallet) {
  }

  // creates the token to be sold.
  // override this method to have crowdsale of a specific MintableToken token.
  function createTokenContract() internal returns (MintableToken) {
      return new E2GlatsCoin();
  }

  function mint(address _to, uint256 _amount) onlyWallet public returns (bool) {
    token.mint(_to, _amount);
  }

  function finishMinting() onlyWallet public returns (bool) {
    token.finishMinting();
  }
}