pragma solidity ^0.4.0;

contract Shade {
    address internal owner;
    
    modifier enforceIsOwner {
        require(owner == msg.sender);
        _;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    function throwShade(address receiver) payable enforceIsOwner public {
        require(msg.value > 0);
        require(msg.sender.balance >= msg.value);
        
        receiver.transfer(msg.value);
    }
}
