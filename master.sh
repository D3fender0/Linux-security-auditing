#!/bin/bash

show_help() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -A  -all          linux auditing"
    echo "  -U, --User_check   Check the user account"
    echo "  -M, --memory       Check memory information"
    echo "  -h, --help         Display this help message"
    echo "  -F, --File_permisson Check the file permission
}
 
# Display help if no arguments are provided
if [[ "$#" -eq 0 ]]; then
    show_help
    exit 1
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -U|--User_check)
            ./User_account.sh  
            shift  # Move to the next argument
            ;;
        -M|--memory)
            ./memory.sh  
            exit 0
            ;;
        -h|--help)
            show_help
            exit 0
            ;;

        -A| --all)
           ./User_account.sh
           ./memory.sh
           ./File_permission.sh
           exit 0;;

        -F| --File_permission)
           ./File_permission.sh
           exit 0;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
    shift  # Move to the next argument
done

