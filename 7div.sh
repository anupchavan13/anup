#!/bin/bash

# Function to check if a number is divisible by 7
is_divisible_by_7() {
    num=$1

    if [ $((num % 7)) -eq 0 ]; then
        echo "$num is divisible by 7."
    else
        echo "$num is not divisible by 7."
    fi
}

# Main script starts here
echo "Enter a number: "
read number

is_divisible_by_7 $number
