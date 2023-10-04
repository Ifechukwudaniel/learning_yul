// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "forge-std/console.sol";
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

    function testGetBool() public {
        bool value = types.getBool();
        assertEq(value, true);
    }

    function testGetReprentation() public {
        address rep = types.getReprentation();
        assertEq(rep, address(1));
    }

    function testCheckProofShitValues() public {
        bool val1;
        bool val2;
        (val1, val2) = types.proofBoolZeroShiftByte();
        assertEq(val1, true);
        assertEq(val2, false);
    }

    function testYulString() public {
        string memory expected = "Hello World";
        bytes memory message = bytes(types.getString());

        assertEq(
            bytes32(abi.encodePacked(message)),
            bytes32(abi.encodePacked(expected))
        );
    }
}
