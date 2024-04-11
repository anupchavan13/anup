#!/bin/bash

# Function to calculate the factorial of a number
factorial() {
    num=$1
    fact=1

    if [ $num -lt 0 ]; then
        echo "Factorial is not defined for negative numbers."
        return 1
    fi

    for ((i=1; i<=num; i++)); do
        fact=$((fact * i))
    done

    echo "Factorial of $num is $fact"
}

# Main script starts here
echo "Enter a number: "
read number

factorial $number


