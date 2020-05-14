//
// Created by Raz on 12/05/2020.
//
#include <iostream>

#include "include/Calculator.h"

using namespace std;

#define SIGN(x) (x >= 0 ? 1 : -1)

int Calculator::add(float num1, float num2, float& result)
{
    // Check for overflow\underflow.
    if( (SIGN(num1) == SIGN(num2)) && ( abs(num2) > FLT_MAX - abs(num1)) )
    {
        return CALCULATOR_OVERFLOW_UNDERFLOW;
    }

    result = num1 + num2;
    return CALCULATOR_SUCCESS;
}

int Calculator::subtract(float num1, float num2, float& result)
{
    return add(num1, -num2, result);
    /*
    // Check for overflow\underflow.
    if( (SIGN(num1) != SIGN(num2)) && ( abs(num2) > FLT_MAX - abs(num1)) )
    {
        return CALCULATOR_OPERAND_ERROR;
    }

    result = num1 - num2;
    return CALCULATOR_SUCCESS;*/
}

int Calculator::multiply(float num1, float num2, float& result)
{
    // Check for overflow\underflow.
    if( abs(num2) > FLT_MAX / abs(num1) )
    {
        return CALCULATOR_OVERFLOW_UNDERFLOW;
    }

    result = num1 * num2;
    return CALCULATOR_SUCCESS;
}

int Calculator::divide(float num1, float num2, float& result)
{
    if(num2 == 0)
    {
        return CALCULATOR_OPERAND_ERROR;
    }

    // Check for overflow\underflow.
    if( abs(num1) > FLT_MAX * abs(num2) )
    {
        return CALCULATOR_OVERFLOW_UNDERFLOW;
    }

    result = num1 / num2;
    return CALCULATOR_SUCCESS;
}

//int Calculator::calculate(float num1, float num2, char operation, float& result)
//{
//    switch(operation)
//    {
//        case CALCULATOR_ADD:
//            return add(num1, num2, result);
//        case CALCULATOR_SUBTRACT:
//            return subtract(num1, num2, result);
//        case CALCULATOR_MULTIPLY:
//            return multiply(num1, num2, result);
//        case CALCULATOR_DIVIDE:
//            return divide(num1, num2, result);
//        default:
//            return CALCULATOR_OPERATION_ERROR;
//    }
//}
