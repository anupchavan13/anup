#!/bin/bash

# Function to check if a string is palindrome
is_palindrome() {
    str=$1
    reversed_str=$(echo $str | rev)

    if [ "$str" = "$reversed_str" ]; then
        echo "$str is a palindrome."
    else
        echo "$str is not a palindrome."
    fi
}

# Main script starts here
echo "Enter a string: "
read input_string

is_palindrome "$input_string"
