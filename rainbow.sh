#!/bin/bash

# Function to check if a color exists in the rainbow
check_color() {
    color=$1
    rainbow=("red" "orange" "yellow" "green" "blue" "indigo" "violet")

    for c in "${rainbow[@]}"; do
        if [ "$c" = "$color" ]; then
            echo "Yes, $color is in the rainbow."
            return 0
        fi
    done
    
    echo "No, $color is not in the rainbow."
    return 1
}

# Main script starts here
echo "Enter a color: "
read input_color

check_color "$input_color"
