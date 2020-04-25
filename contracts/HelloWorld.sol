pragma solidity >=0.5.0 <0.7.0;


contract HelloWorld {
    string message = "Hello world!";
    address public creator;

    constructor() public {
        creator = msg.sender;
    }

    function get() public view returns (string memory) {
        return message;
    }

    function set(string memory _message) public {
        message = _message;
    }
}
