#!/bin/bash

# Function to calculate area of a rectangle
calculate_area() {
    length=$1
    breadth=$2
    area=$(echo "$length * $breadth" | bc)
    echo "Area of the rectangle with length $length and breadth $breadth is: $area"
}

# Function to calculate perimeter of a rectangle
calculate_perimeter() {
    length=$1
    breadth=$2
    perimeter=$(echo "2 * ($length + $breadth)" | bc)
    echo "Perimeter of the rectangle with length $length and breadth $breadth is: $perimeter"
}

# Main script starts here
echo "Enter the length of the rectangle: "
read length

echo "Enter the breadth of the rectangle: "
read breadth

calculate_area $length $breadth
calculate_perimeter $length $breadth
