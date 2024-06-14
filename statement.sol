// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract SimpleContract {
    uint256 public value;

    // Function to set a value with require statement
    function setValue(uint256 _value) public {
        // Ensure the value is positive
        require(_value > 0, "Value must be greater than zero");
        value = _value;
    }

    // Function to increment the value with assert statement
    function incrementValue(uint256 _increment) public {
        // Ensure the increment does not cause overflow
        uint256 newValue = value + _increment;
        assert(newValue >= value);
        value = newValue;
    }

    // Function to reset the value with revert statement
    function resetValue() public {
        // Ensure the value is not already zero
        if (value == 0) {
            revert("Value is already zero");
        }
        value = 0;
    }
}
