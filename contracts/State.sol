// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// TODO: assign Access control roles by default during cloning

contract State {
    address public diamondAddress;

    // FIMXE: this should only be accessible by the contract owner
    function changeDiamonAddress(address newDiamond) external {
        diamondAddress = newDiamond;
    }
}