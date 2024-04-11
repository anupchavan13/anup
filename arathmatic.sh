#!/bin/bash

# Function to perform multiplication
multiply() {
    result=$(echo "scale=2; $1 * $2" | bc)
    echo "Result of multiplication: $result"
}

# Function to perform division
divide() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        return 1
    fi
    result=$(echo "scale=2; $1 / $2" | bc)
    echo "Result of division: $result"
}

# Function to perform modulo
modulo() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero is not allowed."
        return 1
    fi
    result=$(echo "$1 % $2" | bc)
    echo "Result of modulo: $result"
}

# Main script starts here
if [ $# -ne 3 ]; then
    echo "Usage: $0 operation operand1 operand2"
    exit 1
fi

operation=$1
operand1=$2
operand2=$3

case $operation in
    "*")
        multiply $operand1 $operand2
        ;;
    "/")
        divide $operand1 $operand2
        ;;
    "%")
        modulo $operand1 $operand2
        ;;
    *)
        echo "Invalid operation: $operation"
        exit 1
        ;;
esac