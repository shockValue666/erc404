//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;


import {ERC404} from "./erc404.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

contract DescientistsERC404 is ERC404 {
    // Events, mappings, variables, constructor, and additional functions (to be added)
    constructor(address _owner) ERC404(
        "",
        "",
        18,
        5000,
        _owner
    ){
        balanceOf[_owner] = totalSupply;
        setWhitelist(_owner, true);
    }

    function tokenURI(uint256 id) public pure override returns (string memory){
        return string.concat("https://example.com/token/",String.toString(id));
    }
}
