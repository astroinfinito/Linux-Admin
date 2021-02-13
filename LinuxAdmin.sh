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
        echo -e "\n${redColour}¡Necesitas ser el usuario root para ejecutar este script!${endColour}\n"
        exit 1 
    else
        bienvenida
    fi
}

#Función que te mostrará el banner de bienvenida y definición de variables con declare para establecer los colores

function banner(){
    clear
    echo -e "${redColour}                                                 

                                                                 #####
                                                                #######
                   #                                            ##O#O##
  ######          ###                                           #VVVVV#
    ##             #                                          ##  VVV  ##
    ##         ###    ### ####   ###    ###  ##### #####     #          ##
    ##        #  ##    ###    ##  ##     ##    ##   ##      #            ##      ${endColour}${greenColour}Linux Admin - By Alberto.${endColour}${redColour} 
    ##       #   ##    ##     ##  ##     ##      ###        #            ###     ${greenColour}Hecho con amor y café.${endColour}${redColour}
    ##       # ###     ##     ##  ##     ##     ## ##    QQQQQQ#       #QQQQQQ
    ##      ## ### #   ##     ##  ###   ###    ##   ##   QQQQQQQ#     #QQQQQQQ
  ############  ###   ####   ####   #### ### ##### #####   QQQQQ#######QQQQQ
    
    ${endColour}
    "
}

#Función que te muestra el menú principal con sus diferentes opciones

function bienvenida(){
        banner
        echo -e  "${yellowColour}¿Qué quieres hacer?"${endColour}
        while :
        do
        read respuesta
        case $respuesta in
            1)
                echo -e "${yellowColour}Prueba 1${endColour}"
                ;;
            2)
                echo -e "${yellowColour}Prueba 2${endColour}"
                ;;
            0)
                echo -e "${yellowColour}Saliendo...${endColour}"
                exit 0; ##Se produce la salida sin errores, por eso se pone exit 0
                break
                ;;
            
            *)
                echo -e "${yellowColour}Opción incorrecta${endColour}"
                ;;
        esac
        done
}

admin
