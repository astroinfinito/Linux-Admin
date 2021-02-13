#!/bin/bash

#Autor: Rafael Alberto Zarzo Torres

#Declaración de variables.

declare -r greenColour="\e[0;32m\033[1m"
declare -r endColour="\033[0m\e[0m"
declare -r redColour="\e[0;31m\033[1m"
declare -r blueColour="\e[0;34m\033[1m"
declare -r yellowColour="\e[0;33m\033[1m"
declare -r purpleColour="\e[0;35m\033[1m"
declare -r turquoiseColour="\e[0;36m\033[1m"
declare -r grayColour="\e[0;37m\033[1m"

#Comprobación de que es el root quien está ejecuando este programa

function admin(){
    if ! [ $(id -u) = 0 ]; then echo 
        echo -e "\n${redColour}¡Necesitas ser el root para ejecutar este script!${endColour}\n"
        exit 1 
    else
        banner
    fi
}

function banner(){
    clear
    echo -e "${redColour}                                                 

                                                                 #####
                                                                #######
                   #                                            ##O#O##
  ######          ###                                           #VVVVV#
    ##             #                                          ##  VVV  ##
    ##         ###    ### ####   ###    ###  ##### #####     #          ##
    ##        #  ##    ###    ##  ##     ##    ##   ##      #            ##          
    ##       #   ##    ##     ##  ##     ##      ###        #            ###      
    ##          ###    ##     ##  ##     ##      ###       QQ#           ##Q
    ##       # ###     ##     ##  ##     ##     ## ##    QQQQQQ#       #QQQQQQ
    ##      ## ### #   ##     ##  ###   ###    ##   ##   QQQQQQQ#     #QQQQQQQ
  ############  ###   ####   ####   #### ### ##### #####   QQQQQ#######QQQQQ
    ${endColour}\n
    ${greenColour}Linux Admin - By Alberto.\n${endColour}
    "
}

admin