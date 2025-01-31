// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract CompareString {
    function compare(string calldata _garri, string calldata _sugar)
        public
        pure
    {
        bytes calldata garriByte = bytes(_garri);
        bytes calldata sugarByte = bytes(_sugar);

        require(garriByte.length == sugarByte.length, "they're not the same!");

        for (uint256 i = 0; i < garriByte.length; i++) {
            require(garriByte[i] == sugarByte[i], "characters do not match!");
        }
    }
}
