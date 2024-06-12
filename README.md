### Creating a Token

This Solidity program is a simple "CREATING A TOKEN " program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to create a token having token name,token abbrivation, total suuply.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has  functions that can mint and one function is there for burn.It has mint function that takes two parameters: an address and a value. The function then increases the total supply by that number and increases the balance of the address by that amount and it has a burn function, which works the opposite of the mint function, as it will destroy tokens. It will take an address and value just like the mint functions. It will then deduct the value from the total supply and from the balance of the address. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., myToken.sol). Copy and paste the following code into the file
```javascript
//SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract MyToken
{
    //public variables here
    string public tokenName = "BETA BY GURJOT";
    string public tokenAbbrivation = "MTA Gurjot of Chandigarh university";
    uint public totalSupply = 0;

    //mapping variable here
    mapping(address => uint )public balances;

    //mint function
    function mint (address _address,uint _value) public
    {
        totalSupply = totalSupply + _value;
        balances[_address] += _value;

    }

    //burn function
    function burn (address _address,uint _value) public
    {
        if(balances[_address] >= _value)
        {
        totalSupply = totalSupply - _value;
        balances[_address] -= _value;
        }

    }
}

```





To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile myToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint function and burn function. Click on the "MyToken" contract in the left-hand sidebar, and then click on the "mint" function and put values of address and value. Finally, click on the "transact" button to execute the function will do the changes in totalSupply and value at that particular address. Similarly you can use burn function by giving appropriate paramters of address and value and thus clicking on the "transact" will subtract the given value from the already present value at that particular address. 

## Authors

GURJOT SINGH  
[gurjotsinghsidhu090@gmail.com]


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
