pragma solidity ^0.4.0;

contract Person {
    string internal name;
    bool internal isProneToCrying;
    
    constructor(string newName, bool newIsProneToCrying) public {
        setName(newName);
        setIsProneToCrying(newIsProneToCrying);
    }
    
    function getIsProneToCrying() public view returns(bool) {
        return isProneToCrying;
    }
    
    function setIsProneToCrying(bool newIsProneToCrying) public {
        isProneToCrying = newIsProneToCrying;
    }
    
    function getName() public view returns(string) {
        return name;
    }
    
    function setName(string newName) public {
        name = newName;
    }
}
