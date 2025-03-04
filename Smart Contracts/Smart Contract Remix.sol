// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DocumentRegistry {
    string public documentHash;

    // Event to emit when a document is stored
    event DocumentStored(string docHash, uint timestamp);

    // Function to store document hash
    function storeDocumentHash(string memory _documentHash) public {
        documentHash = _documentHash;
        emit DocumentStored(_documentHash, block.timestamp);
    }

    // Function to retrieve document hash
    function retrieveDocumentHash() public view returns (string memory) {
        return documentHash;
    }
}
