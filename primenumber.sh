#!/bin/bash

# Function to check if a number is prime
is_prime() {
    num=$1
    # 0 and 1 are not prime numbers
    if [ $num -le 1 ]; then
        echo "$num is not a prime number."
        exit 1
    fi
    
    # Check divisibility from 2 to sqrt(num)
    for ((i=2; i*i<=num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            echo "$num is not a prime number."
            exit 1
        fi
    done
    
    echo "$num is a prime number."
}

# Main script starts here
echo "Enter a number: "
read number

is_prime $number
