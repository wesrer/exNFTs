// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// TODO: assign Access control roles by default during cloning

contract State {
    address public diamondAddress;

    // FIMXE: this should only be accessible by the contract owner
    function changeDiamonAddress(address newDiamond) external {
        diamondAddress = newDiamond;
    }

    // Route all function calls to the main Diamond contract
    fallback() external payable {
        // Need to copy address because only local addresses are supported in assembly
        address diamond = diamondAddress;

        assembly {
            // copy function selector
            calldatacopy(0,0, calldatasize())
            // call the diamond with this contract's context
            let result := delegatecall(gas(), diamond, 0, calldatasize(), 0, 0)
            // copy the return value from the previous call
            returndatacopy(0, 0, returndatasize())

            switch result
                case 0 { 
                    revert(0, returndatasize()) 
                }
                default { 
                    return (0, returndatasize()) 
                }
        }
    }

    receive() external payable {}
}