REMIX DEFAULT WORKSPACE

Remix default workspace is present when:
i. Remix loads for the very first time 
ii. A new workspace is created with 'Default' template
iii. There are no files existing in the File Explorer

This workspace contains 3 directories:

1. 'contracts': Holds three contracts with increasing levels of complexity.
2. 'scripts': Contains four typescript files to deploy a contract. It is explained below.
3. 'tests': Contains one Solidity test file for 'Ballot' contract & one JS test file for 'Storage' contract.

SCRIPTS

The 'scripts' folder has four typescript files which help to deploy the 'Storage' contract using 'web3.js' and 'ethers.js' libraries.

For the deployment of any other contract, just update the contract's name from 'Storage' to the desired contract and provide constructor arguments accordingly 
in the file `deploy_with_ethers.ts` or  `deploy_with_web3.ts`

In the 'tests' folder there is a script containing Mocha-Chai unit tests for 'Storage' contract.

To run a script, right click on file name in the file explorer and click 'Run'. Remember, Solidity file must already be compiled.
Output from script will appear in remix terminal.

Please note, require/import is supported in a limited manner for Remix supported modules.
For now, modules supported by Remix are ethers, web3, swarmgw, chai, multihashes, remix and hardhat only for hardhat.ethers object/plugin.
For unsupported modules, an error like this will be thrown: '<module_name> module require is not supported by Remix IDE' will be shown.


Overall learning of solidity and blockchain



Full node, light node, archive node in ethereum network
Externally owned account->created while making transaction
Contract account->created when deployed
Decentralized autonomous organization
Decentralized autonomous organization attack
softfork hardfork

tongue lake way give sentence curious shed habit phrase best second forget

Abi => application or other smart contract communicate with smart contracts
Bytecode code will be deployed in ethereum blockchain

something.sol=>abi(abstract binary interface) + bytecode

Solidity

State variable is stored in contract storage
It is expensive which mean takes a lot of gas
A variable which is outside of a function or constructor is called state variable

Local Variables:
=> stored in the stack storage
=> always stored in function or constructor
=>string by default store in a contract storage that's why it give error, to avoid this use memory which will store in stack
=> memory key cannot be used in a contract level

In conclusion, avoid declaring state variables because it costs lots of gas. Local variables do not cost gas.


Pure: neither changing any state variables nor reading state variables.
View: can read the state variables but not write

bytes : can give us access to use various method on string as we cannot use method on byte because it cost a lot of gas

