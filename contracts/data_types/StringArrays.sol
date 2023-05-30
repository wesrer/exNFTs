// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringArrays {
    mapping (string => string[]) private vars;

    function setVarBoolArr(string memory name, string[] memory val) public {
        vars[name] = val;
    }

    function getVarBoolArr(string memory name) public view returns (string[] memory) {
        return vars[name];
    }
}