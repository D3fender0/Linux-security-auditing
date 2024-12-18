#!/bin/bash

show_help() {
    echo "Usage: $0 [option]"
    echo "Options:"
    echo "  -A , --all          linux auditing"
    echo "  -U, --User_check   Check the user account"
    echo "  -M, --memory       Check memory information"
    echo "  -h, --help         Display this help message"
    echo "  -F, --File_permisson Check the file permission"
    echo "  -S  --File_system    check the file system"
    echo "  -H  --hardware      hardware information"
    echo "  -P  --process       process information"
    echo "  -s   --Service       running services"
    echo "  -K   --kernel       Kernel informayion"
    echo " -SS  --software      software information"
    echo " -Sm  --systemd       systemd "
    echo " -n   --ssh           ssh configuration"
}
 
# Display help if no arguments are provided
if [[ "$#" -eq 0 ]]; then
    show_help
    exit 1
fi

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        -U|--User_check)
               ./design.sh
            ./User_account.sh 
            shift  # Move to the next argument
            ;;
        -M|--memory)
              ./design.sh
            ./memory.sh  
            shift
            ;;
        -h|--help)
            show_help
            exit 0
            ;;

        -A| --all)
            ./design.sh
           ./User_account.sh
           ./memory.sh
           ./File_permission.sh
           ./File_system.sh
           ./hardware.sh
           ./process.sh
           ./service.sh
           ./kernel.sh
           ./systemd.sh
           ./ssh.sh
           ./software.sh
           exit 0;;

        -F| --File_permission)
             ./design.sh
           ./File_permission.sh
           shift ;;

        -H| --hardware)
            ./design.sh
           ./hardware.sh
           shift ;;
        -s| --service)
           ./design.sh
           ./service.sh
           shift ;;

        -K| --kernel)
         ./kernel.sh
         ./design.sh
         shift ;;

         -SS| --software)
         ./software.sh
         ./design.sh
         shift ;;

         --Sm| --systemd)
         ./systemd.sh
         ./design.sh
         shift ;;

         -n| --ssh)
         ./ssh.sh
         ./desgin.sh
         shift ;;

        -S| --File_system)
           ./design.sh
           ./File_system.sh
           shift ;;

        -P| --process)
          ./design.sh
         ./process.sh
         shift ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
    shift  # Move to the next argument
done

