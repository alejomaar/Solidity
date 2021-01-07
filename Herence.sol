pragma solidity ^0.5.7;

contract Herence {
    
    address owner;
    uint fortune;
    bool isDeceased;
    
    address payable[] familyWallets;
    mapping(address=>uint) inheritance;
    
    constructor () public payable {
        owner = msg.sender;
        fortune = msg.value;
        isDeceased = false;
        
    }
    
    modifier onlyOwner{
        require(msg.sender==owner);
        _;
    }
    
    modifier mustBeDecaesed{
        require(isDeceased==true);
        _;
    }
    
    function setInheritance(address payable wallet,uint inheritAmount) public onlyOwner{
        familyWallets.push(wallet);
        inheritance[wallet] = inheritAmount;
    }
    
    function payOut() private mustBeDecaesed{
        for(uint i=0;i< familyWallets.length; i++){
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
        }
    }
    
    
    function decaesed() public onlyOwner{
        isDeceased =true;
        payOut();
    }
    

   
}