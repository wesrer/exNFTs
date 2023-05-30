// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BoolArrays {
    mapping (string => bool[]) private vars;

    function setVarBoolArr(string memory name, bool[] memory val) public {
        vars[name] = val;
    }

    function getVarBoolArr(string memory name) public view returns (bool[] memory) {
        return vars[name];
    }
}