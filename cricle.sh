#!/bin/bash

# Function to calculate area of a circle
calculate_area() {
    radius=$1
    area=$(echo "scale=2; 3.14 * $radius * $radius" | bc)
    echo "Area of the circle with radius $radius is: $area"
}

# Function to calculate perimeter of a circle
calculate_perimeter() {
    radius=$1
    perimeter=$(echo "scale=2; 2 * 3.14 * $radius" | bc)
    echo "Perimeter of the circle with radius $radius is: $perimeter"
}

# Main script starts here
echo "Enter the radius of the circle: "
read radius

calculate_area $radius
calculate_perimeter $radius
