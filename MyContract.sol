// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint Number;
    uint32 private RecordId = 0;

    struct Transaction {
        uint256 Amount;
        address Sender;
        string Receiver;
    }

    mapping(uint32 => Transaction) private Transactions;

    function SetNumber(uint _num) public {
        Number = _num;
    }

    function GetNumber() public view returns(uint) {
        return Number;
    }

    function CreateTransaction(uint256 _amount, string calldata _reciever) public returns(uint32) {
        Transactions[RecordId] = Transaction(_amount, msg.sender, _reciever);
        RecordId++;
        return RecordId;
    }

    function GetTransactionById(uint32 _id) public view returns(Transaction memory){
        return Transactions[_id];
    }
}
