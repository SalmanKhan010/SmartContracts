// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.17;

import "../node_modules/hardhat/console.sol";

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
        console.log("**Sender balance is %s tokens**", balances[msg.sender]);
        console.log("**Sender is sending %s tokens to %s address**",amount, to);

        require(balances[msg.sender]>= amount, "Not enough tokens");
        balances[msg.sender]-=amount; //balances[msg.sender] = balances[msg.sender] - amount;
        balances[to]+= amount;
    }
    function balanceOf(address acc) external view returns(uint){
        return balances[acc];
    }
} 