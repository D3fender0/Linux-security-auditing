#!/bin/bash

show_help() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -U, --User_check [username]   Check the user account"
    echo "  -M, --memory                  Check memory information"
}

if [[ "$#" -eq 0 ]]; then
    show_help
    exit 1
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -U|--User_check)
            if [[ -n "$2" && "$2" != -* ]]; then  # Check if argument for user is provided
                ./user_account.sh "$2"  # Pass the user account as an argument
                shift  # Shift to skip the username argument
            else
                echo "Error: --User_check requires a username as an argument."
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
