// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/proxy/Clones.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

// Basic Factory contract used to create a new state holder contract
contract Factory is Ownable2Step {

    address public stateTemplate;

    // TODO: add Events

    function changeStateTemplate(address newStateTemplate) external onlyOwner {
        stateTemplate = newStateTemplate;
    }

    function deployExNFT() external returns (address)  {
        return Clones.clone(stateTemplate);
    }
}