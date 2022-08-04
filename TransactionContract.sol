// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract TransactionContract {
    uint32 RecordId = 0;
    uint32 TransactionId = 0;

    address Owner;

    struct Transaction {
        int Amount;
        address Sender;
        string Receiver;
    }

    mapping(uint32 => Transaction) public Transactions;

    constructor() {
        Owner = msg.sender;
    }

    function getRecordId() public view returns(uint32) {
        return (RecordId - 1);
    }

    function setTransaction(int _amount, string calldata _reciever) public returns(uint32) {
        if(_amount >= 0) {
            RecordId++;
            uint32 _txnId = TransactionId++;
            Transactions[_txnId] = Transaction(_amount, msg.sender, _reciever);
            return _txnId;
        }
        return 0;
    }

    function getTransaction(uint32 _id) public view returns(Transaction memory){
        return (Transactions[_id]);
    }

    function getOwner() public view returns(address) {
        return Owner;
    }

}
