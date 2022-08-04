// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MyContract {
    uint myNumber;
    uint32 RecordId;

    struct Record {
        uint32 Id;
        string Decription;
    }

    function SetRecordId(uint32 _id) public {
        RecordId = _id;
    }

    function GetRecordId() public view returns(uint32) {
        return RecordId;
    }
}
