// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SizedBytes {
    mapping (string => bytes1) bytes1Vars;
    mapping (string => bytes2) bytes2Vars;
    mapping (string => bytes3) bytes3Vars;
    mapping (string => bytes4) bytes4Vars;
    mapping (string => bytes5) bytes5Vars;
    mapping (string => bytes6) bytes6Vars;
    mapping (string => bytes7) bytes7Vars;
    mapping (string => bytes32) bytes32Vars;

    function setVarBytes1(string memory name, bytes1 val) public {
        bytes1Vars[name] = val;
    }

    function getVarBytes1(string memory name) public view returns (bytes1) {
        return bytes1Vars[name];
    }

    function setVarBytes2(string memory name, bytes2 val) public {
        bytes2Vars[name] = val;
    }

    function getVarBytes2(string memory name) public view returns (bytes2) {
        return bytes2Vars[name];
    }

    function setVarBytes3(string memory name, bytes3 val) public {
        bytes3Vars[name] = val;
    }

    function getVarBytes3(string memory name) public view returns (bytes3) {
        return bytes3Vars[name];
    }

    function setVarBytes4(string memory name, bytes4 val) public {
        bytes4Vars[name] = val;
    }

    function getVarBytes4(string memory name) public view returns (bytes4) {
        return bytes4Vars[name];
    }

    function setVarBytes5(string memory name, bytes5 val) public {
        bytes5Vars[name] = val;
    }

    function getVarBytes5(string memory name) public view returns (bytes5) {
        return bytes5Vars[name];
    }

    function setVarBytes6(string memory name, bytes6 val) public {
        bytes6Vars[name] = val;
    }

    function getVarBytes6(string memory name) public view returns (bytes26) {
        return bytes6Vars[name];
    }

    function setVarBytes7(string memory name, bytes7 val) public {
        bytes7Vars[name] = val;
    }

    function getVarBytes7(string memory name) public view returns (bytes7) {
        return bytes7Vars[name];
    }
}