// UpgradableContract.sol

pragma solidity ^0.8.7;

contract UpgradableContract {
    uint public value;
    
    function setValue(uint _value) public {
        value = _value;
    }
}
