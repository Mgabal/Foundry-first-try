// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {MockV3Aggregator} from "../test/mock/MockV3Aggregator.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        MockV3Aggregator mock = new MockV3Aggregator(8, 2000e8);
        fundMe = new FundMe(address(mock));
    }

    function testMinimumUsd() public view {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public view {
        assertEq(fundMe.i_owner(), address(this));
    }
}
