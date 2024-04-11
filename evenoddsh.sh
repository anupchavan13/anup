#!/bin/bash

# Function to check if a number is even or odd
is_even_or_odd() {
    num=$1

    if [ $((num % 2)) -eq 0 ]; then
        echo "$num is even."
    else
        echo "$num is odd."
    fi
}

# Main script starts here
echo "Enter a number: "
read number

is_even_or_odd $number
