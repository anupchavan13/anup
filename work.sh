#!/bin/bash

# Function to display system configurations
show_system_configurations() {
    echo "Currently logged user and their login name:"
    whoami
    echo

    echo "Your current shell:"
    echo $SHELL
    echo

    echo "Home directory:"
    echo $HOME
    echo

    echo "Operating system type:"
    uname -s
    echo

    echo "Current path setting:"
    echo $PATH
    echo

    echo "Last login details:"
    last -1
    echo

    echo "Current working directory:"
    echo $PWD
    echo
}

# Function to upgrade and clean the system
upgrade_and_clean_system() {
    echo "Upgrading system..."
    sudo apt update && sudo apt upgrade -y

    echo "Cleaning system..."
    sudo apt autoremove -y && sudo apt autoclean
}

# Main script starts here
echo "System Configurations:"
show_system_configurations

echo "Upgrading and cleaning the system..."
upgrade_and_clean_system
