pragma solidity ^0.4.17;

contract getData {
    
    function getAddress() public view returns(address){
      return msg.sender;
    }
    
    function getBalance() public view returns(uint256){
      return msg.sender.balance;
    }
    
   
}