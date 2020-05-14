//
// Created by Raz on 12/05/2020.
//

#ifndef CALCULATOR_CALCULATOR_H
#define CALCULATOR_CALCULATOR_H

enum calculatorReturnValue
{
    CALCULATOR_SUCCESS,
    CALCULATOR_OPERAND_ERROR,
    CALCULATOR_OVERFLOW_UNDERFLOW
};

/*enum calculatorOperations
{
    CALCULATOR_ADD = '+',
    CALCULATOR_SUBTRACT = '-',
    CALCULATOR_MULTIPLY = '*',
    CALCULATOR_DIVIDE = '/'
};*/

class Calculator
{
//private:
public:
    int add(float num1, float num2, float& result);
    int subtract(float num1, float num2, float& result);
    int multiply(float num1, float num2, float& result);
    int divide(float num1, float num2, float& result);
//public:
//    int calculate(float num1, float num2, char operation, float& result);
};


#endif //CALCULATOR_CALCULATOR_H
