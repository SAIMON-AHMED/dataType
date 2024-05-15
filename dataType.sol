// SPDX-License-Identifier: MIT
pragma solidity ^0.4.0;

contract DataType {

    bool myBool = false;

    int8 myInt = -128;
    uint myUInt = 255;

    string myString;
    uint8[] myStringArr;

    byte myValue;
    bytes1 myBytes1;
    bytes32 myBytes32;



    enum Action {ADD, REMOVE, UPDATE}
    Action myAction = Action.ADD;

    address myAddress;

    function assignAddress() public {
        myAddress = msg.sender;
    }

    uint[] public myIntArr = [1, 2, 3];
    uint public len = myIntArr.length;

    function arrFunc() public {
        for (uint i = 0; i < 3; i++ ) {
            myIntArr.push(i);
        }
        len = myIntArr.length; // Update length after pushing new elements
    }

    uint[10] public myFixedArr;

    struct Account {
        uint balance;
        uint dailyLimit;
    }

    Account public myAccount;

    function structFunc() public {
        myAccount.balance = 100;
    }

    mapping (address => Account) public _accounts;

    function mappingFunc() public payable {
        _accounts[msg.sender].balance += msg.value;
    }

}
