// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Diamond {
    // When no function exists for function called
    error FunctionNotFound(bytes4 _functionSelector);

    bytes32 constant DIAMOND_STORAGE_POSITION = keccak256("diamond.standard.diamond.storage");

     struct FacetAddressAndSelectorPosition {
        address facetAddress;
        uint16 selectorPosition;
    }

    struct DiamondStorage {
        // function selector => facet address and selector position in selectors array
        mapping(bytes4 => FacetAddressAndSelectorPosition) facetAddressAndSelectorPosition;
        bytes4[] selectors;
        mapping(bytes4 => bool) supportedInterfaces;
        // owner of the contract
        address contractOwner;
    }

    function diamondStorage() internal pure returns (DiamondStorage storage ds) {
        bytes32 position = DIAMOND_STORAGE_POSITION;
        assembly {
            ds.slot := position
        }
    }

    fallback() external payable {
        DiamondStorage storage ds = diamondStorage();

        // get facet from function selector
        address facet = ds.facetAddressAndSelectorPosition[msg.sig].facetAddress;
        if(facet == address(0)) {
            revert FunctionNotFound(msg.sig);
        }

        assembly {
            // copy function selector
            calldatacopy(0,0, calldatasize())
            // call the diamond with this contract's context
            let result := delegatecall(gas(), facet, 0, calldatasize(), 0, 0)
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
}