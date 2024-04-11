#!/bin/bash

# Function to check if a number is divisible by 5
is_divisible_by_5() {
    num=$1

    if [ $((num % 5)) -eq 0 ]; then
        echo "$num is divisible by 5."
    else
        echo "$num is not divisible by 5."
    fi
}

# Main script starts here
echo "Enter a number: "
read number

is_divisible_by_5 $number
