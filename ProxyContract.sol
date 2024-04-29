// ProxyContract.sol

pragma solidity ^0.8.7;

contract ProxyContract {
    address public implementation;
    
    constructor(address _implementation) {
        implementation = _implementation;
    }
    
    function upgrade(address _newImplementation) public {
        implementation = _newImplementation;
    }
    
    fallback() external {
        (bool success, ) = implementation.delegatecall(msg.data);
        require(success, "Delegatecall failed");
    }
}
