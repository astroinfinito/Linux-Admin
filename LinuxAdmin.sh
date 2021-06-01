#!/bin/bash

function comprueba(){ #Comrpueba que tienes privilegios de administrador.
	if ! [ $(id -u) = "0" ]; then 
		echo "Debes ser administrador para poder ejecutar este script" 
		exit 1 
	fi
}

comprueba #Llamada a la función

#Aquí podemos verificar que el programa dos2unix está instalado. Recuerda que puede ser necesario para la ejecucción del script. En el caso de que no lo tengas instalado, el script lo instalará automaticamente.

function compruebaPrograma(){
	dpkg-query --show dos2unix #Orden que comprueba que el programa necesario está instalado
	if [ "$?" = "0" ]; 
	then
		echo -e ""
	else
		clear
		echo -e "El programa dos2unix es necesario para ejectuar este script."
		sudo apt install dos2unix
	fi

}

compruebaPrograma #Llamada a la función

function principal(){ #Para poder ejecutar este script 
		clear
		echo -e "-----Scrpting Linux-----\n"
		echo -e "Opciones del programa\n"
		echo "1) Administración de la red."
		echo "2) Administración de los usuarios y grupos."
		echo "3) Administración de los discos duros"
		echo "4) Administración de seguridad"
		echo -e "5) Salir del programa\n"
		echo -e "Pulsa un botón del 1 al 4 para continuar\n"
		echo -e "Pulsa el botón 5 para salir del programa\n"
		while :
		do
		read -e opcion
		case $opcion in
	1)
		clear
		echo -e "-----Administración de la red-----\n"
		echo "1) Comando ping." #Comprobación de que un host está conectado a la red
		echo "2) Comando netstat." #Listado de conexiónes activas en la computadora
		echo "3) Comando whois." #Comando para consultar la base de datos whois
		echo "4) Comando ifconfig." #Comando para saber las interfaces de red y sus direcciones IP.
		echo "5) Comando nslookup." #Comando para saber la dirección IP tras una dirección DNS.
		echo "6) Comando traceroute." #Comando para saber los saltos por los que pasa una dirección IP.
		echo "7) Comando ss." #Una utilidad que nos permite investigar los sockets dentro de la red
		echo "8) Comando arp." #Comando para saber las direcciones IP asociadas a una dirección MAC.
		echo "9) Comando tcpdump." #Comando para analizar el tráfico de la red.
		echo "10) Comando ethtool. " #Comando para gestionar nuestra tarjeta de red
		echo -e "11) Salir al menú principal.\n"
		echo -e "Pulsa un botón del 1 al 10 para continuar\n"
		echo -e "Pulsa el botón 11 para salir al menú principal del script\n"

		while :
		do #Este es un switch case anidado dentro del case principal
		  read  opcion2
		  case $opcion2 in
			
			1) #Esta es la parte que utilizaremos para gestionar la red. Considero que es necesario añadirla porque esto nos permitirá conocer más en profundidad un sistema operativo como el de Linux.
				clear
				echo -e "Usarás el comando ping.\n"
				echo -e "Introduce los paramétros si quieres y la dirección ip o sitio web.\n" 
				read op1
				echo -e "\n"
				ping $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
				;;
			2)
				clear
				echo -e "Usarás el comando netstat.\n" 
				echo -e "Introduce los paramétros si quieres.\n" 
				read op1
				echo -e "\n"
				netstat $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
				;;
			3)
				clear
				echo -e "Usarás el comando whois.\n" 
				echo -e "Introduce los paramétros si quieres y el nombre del sitio web.\n"
				read op1
				echo -e "\n"
				whois $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
				;;
			4)
				clear
				echo -e "Usarás el comando ifconfig.\n" 
				echo -e "Introduce los paramétros si quieres y la dirección IP\n"
				read op1
				echo -e "\n"
				ifconfig $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"		
				;;
			5)
				clear
				echo -e "Usarás el comando nslookup.\n" 
				echo -e "Introduce los paramétros si quieres y el nombre del sitio web\n"
				read op1
				echo -e "\n"
				nslookup $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"		
				;;
			6)
				clear
				echo -e "Usarás el comando traceroute.\n" 
				echo -e "Introduce los paramétros si quieres y la dirección IP.\n"
				read op1
				echo -e "\n"
				traceroute $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"		
				;;
			7)
				clear
				echo -e "Usarás el comando ss.\n" 
				echo -e "Introduce los paramétros si quieres y la interfaz de red.\n"
				read op1
				echo -e "\n"
				ss $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
				;;
			8)
				clear
				echo -e "Usarás el comando arp.\n" 
				echo -e "Introduce los paramétros si quieres.\n"
				read op1
				echo -e "\n"
				arp $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
				;;
			9)
				clear
				echo -e "Usarás el comando tcpdump.\n" 
				echo -e "Introduce los paramétros si quieres.\n"
				read op1
				echo -e "\n"
				tcpdump $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
				;;
			10)
				clear
				echo -e "Usarás el comando ethtool.\n" 
				echo -e "Introduce los paramétros si quieres.\n"
				read op1
				echo -e "\n"
				ethtool $op1
				echo -e "\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de red.\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
				;;
			11)
				principal
				;;
			*)
				echo "Opción incorrecta"
				;;
			esac
			done
				echo 
				;;
			2)
				clear
				echo -e "-----Administración de los usuarios y grupos-----\n" #Con esto podremos crear usuarios, grupos y eliminarlos. Además, podremos añadir o eliminar a los usuarios de esos grupos
				echo "1) Comando adduser." #Comando para añadir un usuario
				echo "2) Comando userdel." #Comando para borrar un usuario
				echo "3) Comando addgroup." #Comando para añadir un grupo
				echo "4) Comando delgroup." #Comando para borrar un grupo
				echo "5) Comando usermod." #Comando para añadir usuarios al grupo
				echo "6) Comando deluser." #Comando para quitar usuarios del grupo
				echo "7) Comando groupmod." #Esto sirve para modificar el GID del grupo. El GID es el identifiador del grupo.
				echo "8) Comando groups." #Comando para comprobar a que grupos pertenece un usuario
				echo "9) Comando para listar los usuarios del sistema."  #Listar usuarios
				echo "10) Comando para listar los grupos del sistema. " #Listar grupos
				echo -e "11) Salir al menú principal.\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script\n"

				while :
				do
				  read opcion
				  case $opcion in
					1)
						clear
						echo -e  "Usarás el comando adduser creando el directorio home.\n"
						echo -e "Dime el nombre del nuevo usuario:\n "
						read nombre
						sudo useradd -m $nombre
						echo -e "\n"
						echo -e "El usuario $nombre se ha creado correctamente\n" #con esto puedes verificar que el usuario creado existe
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					2)
						clear
						echo -e  "Usarás el comando del user y eliminarás su directorio home.\n"
						echo -e "Dime el nombre del usuario a eliminar:\n "
						read nombre
						sudo userdel -r $nombre
						echo -e "\n"
						echo -e "El usuario $nombre se ha eliminado correctamente\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					3)
						clear
						echo -e  "Usarás el comando groupadd\n"
						echo -e "Dime el nombre del nuevo grupo:\n "
						read nombre
						sudo groupadd $nombre 
						echo -e "\n"
						echo -e "El grupo $nombre se ha creado correctamente\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					4)
						clear
						echo -e  "Usarás el comando groupdel\n"
						echo -e "Dime el nombre del grupo a eliminar:\n "
						read nombre
						sudo groupdel $nombre
						echo -e "\n"
						echo -e "El grupo $nombre se ha eliminado correctamente\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					5)
						clear
						echo -e  "Usarás el comando usermod\n"
						echo -e "¿Qué usuario quieres añadir al grupo?"
						read nombre
						echo -e "¿A qué grupo quieres añadirlo?"
						read nombre2
						usermod -aG $nombre2 $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
						;;
					6)
						clear
						echo -e  "Usarás el comando gpasswd\n"
						echo -e "Dime el nombre del usuario a eliminar del grupo\n "
						read nombre
						echo -e "¿De qué grupo quieres eliminarlo?\n "
						read nombre2
						sudo deluser $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
						;;
					7)
						clear
						echo -e  "Usarás el comando groupmod\n"
						echo -e "Dime el nombre del nuevo GID\n "
						read nombre
						echo -e "¿Cuál es el grupo que quieres modificar su GID?\n "
						read nombre2
						sudo groupmod -g $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
						;;
					8)
						clear
						echo -e  "Usarás el comando groups\n"
						echo -e "¿Cuál es el usuario cuyos grupos quieres comprobar?"
						read nombre
						groups  $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"
						;;
					9)
						clear
						cat /etc/passwd
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					10)
						clear
						cat /etc/group
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de usuarios y grupos.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					11)
						principal
						;;
					*)
						echo "Opción incorrecta"
						;;
				  esac
				done 
				;;
			3)
				clear
				echo "-----Estás en administración de los discos duros-----"
				echo "1) Comando df." #Sirve para ver el espacio de disco ocupado y el que todavía está libre
				echo "2) Comando fdisk." #Sirve para ver tus particiones y modificarlas
				echo "3) Comando cidisk." #Variante gráfica del anterior
				echo "4) Comando mount." #Sirve para montar particiones
				echo "5) Comando unmount." #Sirve para desmontar particiones
				echo "6) Comando autoremove." #Sirve para quitar programas innecesarios
				echo "7) Comando para vaciar la caché de apt." #Vaciar caché apt
				echo "8) Comando medir la velocidad del disco duro." #Comprobar velocidad del disco duro
				echo "9) Comando mkfs." #Sirve para formatear particiones 
				echo "10) Comando dd. " #Sirve para crear copias de seguridad
				echo -e "11) Salir al menú principal.\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script\n"
				while :
				do
				  read opcion
				  case $opcion in
					1)
						clear
						echo -e  "Usarás el comando df\n"
						read nombre
						df $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					2)
						clear
						echo -e  "Usarás el comando fdisk\n"
						echo -e "Añade algún parámetro si quieres"
						read nombre
						fdisk $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					3)
						clear
						cfdisk
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					4)
						clear
						echo -e  "Usarás el comando mount\n"
						echo -e "Añade los parámetros"
						read nombre
						echo -e "Añade el sistema de archivos"
						read nombre2
						echo -e "Añade la partición a montar"
						read nombre3
						echo -e "Añade el directorio de destino"
						read nombre4
						mount $nombre $nombre2 $nombre3 $nombre4
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					5)
						clear
						echo -e  "Usarás el comando unmount\n"
						echo -e "Añade los parámetros si quieres"
						read nombre
						echo -e "Añade el punto a desmontar"
						read nombre2
						umount $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					6)
						clear
						sudo apt autoremove 
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					7)
						clear
						sudo du -sh /var/cache/apt #Vemos la caché de apt
						sudo apt-get autoclean #La vacíamos del sistema
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					8)
						clear
						dd if=/dev/zero of=test bs=64k count=16k conv=fdatasync
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					9)
						clear
						echo -e  "Usarás el comando mkfs. ¡CUIDADO, POSIBLE PÉRDIDA DE DATOS!\n"
						echo -e "Añade el sistema de archivos"
						read nombre
						echo -e "Añade el punto de destino"
						read nombre2
						mkfs.$nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					10)
						clear
						echo -e  "Usarás el comando dd.\n"
						echo -e "¿Qué quieres copiar?"
						read nombre
						echo -e "¿Dónde lo guardarás?"
						read nombre2
						dd if=$nombre of=$nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de los discos duros.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					11)
						principal
						;;
					*)
						echo "Opción incorrecta"
						;;
				  esac
				done 
				;;
			4)
				clear
				echo "-----Estás en administración de seguridad-----"
				echo "1) Comando who." #Comando para saber quién se conecto al sistema y cuando lo hizo
				echo "2) Comando last." #Comando para saber cual ha sido el intento de sesión más reciente
				echo "3) Comando which." #Comando para identificar el ejecutable que se va a usar 
				echo "4) Comprobar el estado del cortafuegos." #Comando para verificar el estado del firewall en el sistema
				echo "5) Comando para instalar el antivirus." #Instalación clamav
				echo "6) Escaneo de directorios y archivos con el antivirus clamav." #Escaneo de archivos
				echo "7) Borrado de archivos maliciosos con el antivirus clamav." #Borrado de archivos
				echo "8) Comando para iniciar el antivirus con el arranque del sistema."
				echo "9) Comando chmod." #Sirve para establecer y comprobar los permisos de un archivo
				echo "10) Comando ls -l. " #Sirve para comprobar los permisos de un archivo o directorio 
				echo -e "11) Salir al menú principal.\n"
				echo -e "Pulsa un botón del 1 al 10 para continuar\n"
				echo -e "Pulsa el botón 11 para salir al menú principal del script\n"
				while :
				do
				  read opcion
				  case $opcion in
					1)
						clear
						echo -e "Usarás el comando who\n"
						echo -e "Añade los parámetros si quieres"
						read nombre
						who $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					2)
						clear
						echo "Usarás el comando last"
						echo -e "Añade los parámetros si quieres"
						read nombre
						echo -e "Añade el nombre del usuario"
						read nombre2
						last $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					3)
						clear
						echo "Usarás el comando which"
						echo -e "Añade los parámetros si quieres"
						read nombre
						echo -e "Añade el nombre del ejecutable"
						read nombre2
						which $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					4)
						clear
						dpkg-query --show gufw #Orden que comprueba que el programa necesario está instalado. Si no está instalado, te lo instala automáticamente
						if [ "$?" = "0" ]; 
						then
							sudo ufw status verbose #En caso de que el programa esté instalado, te muestra el estado del firewall
						else
							clear
							echo -e "Instalando el programa gufw." #Comprobación de que el programa está instalado en nuestro ordenador
							sudo apt install gufw
							echo -e "Habilitando el firewall."
							sudo ufw enable	
						fi
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					5)
						clear
						dpkg-query --show clamav #Comprobación de que el programa está instalado en nuestro ordenador
						if [ "$?" = "0" ];  
						then
							sudo freshclam #En caso de que el programa esté instalado, te actualiza la base de datos del antivirus
						else
							clear
							echo -e "Instalando el programa clamav."
							sudo apt-get install clamav clamav-daemon -y
							sudo freshclam
						fi
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					6)
						clear
						echo "Escaneo de directorios y archivos con el antivirus clamav."
						echo -e "Añade los parámetros si quieres."
						read nombre
						echo -e "Añade el la ruta del directorio a escanear."
						read nombre2
						sudo clamscan $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de gestión de seguridad.\n"
						echo -e "11) Salir al menú principal del script.\n"
						;;
					7)
						clear
						echo -e "Añade el nombre del directorio o archivo a eliminar."
						read nombre
						sudo clamscan --infected --remove --recursive $nombre
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					8)
						clear
						echo "A partir de ahora, el antivirus se arrancará con el sistema y analizará todos los archivos y carpetas automáticamente."
						sudo /etc/init.d/clamav-daemon start
						sudo /etc/init.d/clamav-freshclam start
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					9)
						clear
						echo "Usarás el comando chmod"
						echo -e "Añade los parámetros si quieres"
						read nombre
						echo -e "Nombre del archivo o directorio al que se le aplicarán dichos permisos."
						read nombre2
						chmod $nombre $nombre2
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					10)
						clear
						echo "Usarás el comando ls -l"
						echo -e "Nombre del archivo o directorio del que se comprobarán sus permisos."
						read nombre
						ls -l $nombre 
						echo -e "\n"
						echo -e "Pulsa un botón del 1 al 10 para continuar en el menú de administración de seguridad.\n"
						echo -e "Pulsa el botón 11 para salir al menú principal del script.\n"	
						;;
					11)
						principal
						;;
					*)
						echo "Opción incorrecta" 
						;;
				  esac
				done 
				;;
			5)
				clear 
				echo -e "Saliendo del programa"
				exit 0 #Salida sin errores del programa
				;;	

			*)
				echo "Opción incorrecta" 
				;;
		  esac	
		done #Fin del switch case
		}

principal #Llamada a la función principal
