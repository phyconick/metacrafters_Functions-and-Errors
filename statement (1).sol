// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolGradingSystem {
    mapping(address => uint8) public studentGrades;

    // Function to set the grade of a student
    function setGrade(address student, uint8 grade) public {
        require(grade <= 100, "Grade must be between 0 and 100");

        studentGrades[student] = grade;
    }

    // Function to get the grade of a student
    function getGrade(address student) public view returns (uint8) {
        uint8 grade = studentGrades[student];
        require(grade <= 100, "Invalid grade stored");

        return grade;
    }

    // Function to adjust (increase) the grade of a student
    function adjustGrade(address student, uint8 increaseBy) public {
        uint8 currentGrade = studentGrades[student];
        uint8 newGrade = currentGrade + increaseBy;

        // Ensure the new grade does not exceed 100
        if (newGrade > 100) {
            revert("Adjusted grade cannot exceed 100");
        }

        studentGrades[student] = newGrade;

        // Ensure the grade was correctly updated
        assert(studentGrades[student] == newGrade);
    }
}
