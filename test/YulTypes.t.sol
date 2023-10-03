// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/YulTypes.sol";

contract YulTypesTest is Test {
    YulTypes public types;

    function setUp() public {
        types = new YulTypes();
    }

    function testGetUint256() public {
        uint256 number = types.getUint256();
        assertEq(number, 256);
    }

    function testGetHex() public {
        uint256 number = types.getUint256();
        assertEq(number, 256);
    }
}
