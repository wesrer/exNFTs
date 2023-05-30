// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Basic Solidity Data Types
contract BasicDataTypes {
    mapping (string => bool) boolVars;
    mapping (string => string) stringVars;
    mapping (string => bytes) bytesVars;
    mapping (string => address) addressVars;
    mapping (string => address payable) payableAddressVars;
    mapping (string => int256) intVars;
    mapping (string => uint256) uintVars;

    function setVarBool(string memory name, bool val) public {
        boolVars[name] = val;
    }

    function getVarBoolArr(string memory name) public view returns (bool) {
        return boolVars[name];
    }

    function setVarString(string memory name, string memory val) public {
        stringVars[name] = val;
    }

    function getVarString(string memory name) public view returns (string memory) {
        return stringVars[name];
    }

    function setVarBytes(string memory name, bytes memory val) public {
        bytesVars[name] = val;
    }

    function getVarBytes(string memory name) public view returns (bytes memory) {
        return bytesVars[name];
    }

    function setVarAddress(string memory name, address val) public {
        addressVars[name] = val;
    }

    function getVarAddress(string memory name) public view returns (address) {
        return addressVars[name];
    }

    function setVarPayableAddress(string memory name, address payable val) public {
        payableAddressVars[name] = val;
    }

    function getVarPayableAddress(string memory name) public view returns (address payable) {
        return payableAddressVars[name];
    }

    function setVarInt256(string memory name, int256 val) public {
        intVars[name] = val;
    }

    function getVarInt256(string memory name) public view returns (int256) {
        return intVars[name];
    }

    function setVarUint256(string memory name, uint256 val) public {
        uintVars[name] = val;
    }

    function getVarUint256(string memory name) public view returns (uint256) {
        return uintVars[name];
    }
}