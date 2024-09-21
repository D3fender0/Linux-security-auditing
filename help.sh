#!/bin/bash

show_help() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -U, --User_check   Check the user account"
    echo "  -M, --memory       Check memory information"
}

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -U|--User_check)
             ./user_account.sh 
                exit 0
            else
                echo "Error: --User_check requires an argument."
                exit 1
            fi
            ;;
        -M|--memory)
            ./memory.sh  # Execute the memory script
            exit 0
            ;;
        -h|--help)
            show_help
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
    shift  # Move to the next argument
done

# If no arguments are provided, show help
show_help
             
