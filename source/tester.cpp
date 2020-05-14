//
// Created by Raz on 12/05/2020.
//
#include <iostream>
#include "include/Calculator.h"
#include "google_tests/googletest/include/gtest/gtest.h"

using namespace std;

#define ARITHMETIC_ERROR (0.00001)

Calculator calculator{};
float result{};

TEST(CalculatorTest, SanityTests) {
    // Positive operands.
    EXPECT_EQ(calculator.add(5, 3, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 8);
    EXPECT_EQ(calculator.subtract(7, 6, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 1);
    EXPECT_EQ(calculator.divide(10, 5, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 2);
    EXPECT_EQ(calculator.multiply(6, 3, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 18);

    // Negative operands.
    EXPECT_EQ(calculator.add(-2, -9, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -11);
    EXPECT_EQ(calculator.subtract(-5, -1, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -4);
    EXPECT_EQ(calculator.divide(-6, -3, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 2);
    EXPECT_EQ(calculator.multiply(-9, -2, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 18);

    // Fractured operands.
    EXPECT_EQ(calculator.add(2.4, 1.5, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 3.9);
    EXPECT_EQ(calculator.subtract(4.5, 1.5, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 3);
    EXPECT_EQ(calculator.divide(10, 2.5, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 4);
    EXPECT_EQ(calculator.multiply(6, 3.5, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 21);

    // Positive + negative operands.
    EXPECT_EQ(calculator.add(-5, 2, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -3);
    EXPECT_EQ(calculator.subtract(10, -7, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 17);
    EXPECT_EQ(calculator.divide(8, -4, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -2);
    EXPECT_EQ(calculator.multiply(-3, 3, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -9);

    // Positive + negative + fractured operands.
    EXPECT_EQ(calculator.add(6.7, -2.3, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 4.4);
    EXPECT_EQ(calculator.subtract(7.6, -8.8, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, 16.4);
    EXPECT_EQ(calculator.divide(7.5, -2.1, result), CALCULATOR_SUCCESS);
    EXPECT_NEAR(result, -3.57142, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.multiply(-1.4, 6, result), CALCULATOR_SUCCESS);
    EXPECT_FLOAT_EQ(result, -8.4);
}

TEST(CalculatorTest, SpecialCases) {
    // Division by 0.
    EXPECT_EQ(calculator.divide(5, 0, result), CALCULATOR_OPERAND_ERROR);
}

TEST(CalculatorTest, PrecisionTests) {
    EXPECT_EQ(calculator.add(6.721514561321984, -2.334241987498, result), CALCULATOR_SUCCESS);
    EXPECT_NEAR(result, 4.387272573823984, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.subtract(7.61111344, -8.6111152334, result), CALCULATOR_SUCCESS);
    EXPECT_NEAR(result, 16.2222286734, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.divide(7.5546159, -2.112354, result), CALCULATOR_SUCCESS);
    EXPECT_NEAR(result, -3.576396711914764, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.multiply(-1.4233434, 6.000000012, result), CALCULATOR_SUCCESS);
    EXPECT_NEAR(result, -8.540060417080121, ARITHMETIC_ERROR);
}

TEST(CalculatorTest, EdgeCases) {
    // Overflow.
    EXPECT_EQ(calculator.add(FLT_MAX, 1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.subtract(FLT_MAX, -1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.divide(FLT_MAX, 0.5, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.multiply(FLT_MAX, 1.00001, result), CALCULATOR_OVERFLOW_UNDERFLOW);

    // Underflow.
    EXPECT_EQ(calculator.add(-FLT_MAX, -1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.subtract(-FLT_MAX, 1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.divide(-FLT_MAX, 0.5, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_EQ(calculator.multiply(-FLT_MAX, 1.00001, result), CALCULATOR_OVERFLOW_UNDERFLOW);
}

TEST(CalculatorTest, FlowTests) {
    // Validate function failure doesn't change result's value.
    result = 1.1;
    EXPECT_EQ(calculator.add(FLT_MAX, 1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_NEAR(result, 1.1, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.subtract(FLT_MAX, -1, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_NEAR(result, 1.1, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.divide(FLT_MAX, 0.5, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_NEAR(result, 1.1, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.divide(5, 0, result), CALCULATOR_OPERAND_ERROR);
    EXPECT_NEAR(result, 1.1, ARITHMETIC_ERROR);
    EXPECT_EQ(calculator.multiply(FLT_MAX, 1.00001, result), CALCULATOR_OVERFLOW_UNDERFLOW);
    EXPECT_NEAR(result, 1.1, ARITHMETIC_ERROR);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}