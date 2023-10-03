// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

/// @title  Simple Contract Explain Yul Types
/// @author Ifechukwu Daniel
/// @notice This is just listing the yul types

contract YulTypes {
    function getUint256() external pure returns (uint256) {
        uint256 value;
        assembly {
            value := 256
        }
        return value;
    }

    function getHex() external pure returns (uint256) {
        uint256 value;
        assembly {
            value := 0x64
        }
        return value;
    }

    function getReprentation() external pure returns (address) {
        address _rep;

        assembly {
            _rep := 1
        }

        return _rep;
    }

    function getBool() external pure returns (bool) {
        bool _value;

        assembly {
            _value := 1
        }

        return _value;
    }
}
