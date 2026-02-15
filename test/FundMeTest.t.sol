// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {MockV3Aggregator} from "../test/mock/MockV3Aggregator.sol";

contract FundMeTest is Test {
  FundMe fundMe;
  function setUp() external {

    fundMe = new FundMe();
  }

  function testDemo() public view {
    assertEq(fundMe.MINIMUM_USD(), 5e18);
  }

  function testOwner() public view {
    console.log("Owner is: ", fundMe.i_owner());
    console.log("Msg sender is: ", msg.sender);
    assertEq(fundMe.i_owner(), address(this));
  }

  function testgestVersion() public view {
    console.log("Version is: ", fundMe.getVersion());
    // assertEq(fundMe.getVersion(), 4);
  }
}


// main issue or the reason that the owner is not the same as msg.sender is (we are calling the fundMe test so it deployes the contract and have this access not me)
