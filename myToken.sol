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