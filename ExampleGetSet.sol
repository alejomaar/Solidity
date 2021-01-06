pragma solidity ^0.4.17;

contract Test {
    string value;
    constructor() public{
        value="Alejandro";
    }
    
    function get() public view returns(string){
      return value;
    }
    
    function set(string _value) public{
        value=_value;
    }
   
}
