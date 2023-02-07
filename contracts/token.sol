// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

contract Token {
    string public name = "Hardhat Token";
    string public symbol = "HHT";
    uint public totalSupply = 10000;

    address public owner;

    mapping(address=> uint) balances;

    constructor() {
        balances[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address to, uint amount) external {
        require(balances[msg.sender]>= amount, "Not enough tokens");
        balances[msg.sender]-=amount; //balances[msg.sender] = balances[msg.sender] - amount;
        balances[to]+= amount;
    }
    function balanceOf(address acc) external view returns(uint){
        return balances[acc];
    }
}