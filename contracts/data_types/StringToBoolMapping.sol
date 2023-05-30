// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StringToBoolMapping {
    mapping (string => mapping (string => bool)) private vars;

    function setVarStringToBoolMapping(string calldata name, string calldata key, bool val) public {
        vars[name][key] = val;
    }

    function getVarStringToBoolMapping(string calldata name, string calldata key) public view returns (bool) {
        return vars[name][key];
    }
}