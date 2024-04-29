

### 1. Upgradable Contract Design

### 2. Proxy Contract Design

### 3. Deployment and Update Process

#### Deployment:
1. Deploy `UpgradableContract` and obtain the contract address `0xContractAddress1`.
2. Deploy `ProxyContract`, passing `0xContractAddress1` as a parameter to the constructor, and obtain the proxy contract address `0xProxyContractAddress`.

#### Functionality Update:
1. Design a new version of the contract, `UpgradableContractV2.sol`, which includes additional functionality such as retrieving the square of the stored integer value.
2. Deploy `UpgradableContractV2` and obtain the new contract address `0xContractAddress2`.
3. Call the `upgrade` method of the proxy contract, passing `0xContractAddress2` as the new implementation address:

ProxyContract.upgrade(0xContractAddress2)

Now, the proxy contract points to the new version of the contract, enabling users to interact with the updated functionality while maintaining the same proxy contract address.

This process allows for seamless updates to the contract's functionality without changing the contract address, enhancing flexibility and maintainability in decentralized applications.
