// SPDX-License-Identifier: MIT

pragma solidity ^0.8.8;

contract TodoList{
    struct userList {
        string listItem;
    }

    mapping(address=> userList[]) public userListArray;

    function addToDo(string memory _listItem) public {
        userListArray[msg.sender].push(userList(_listItem));
    }

    function getToDo() public view returns(userList[] memory) {
        return userListArray[msg.sender];
    }
}
