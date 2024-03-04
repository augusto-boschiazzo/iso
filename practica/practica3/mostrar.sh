#!/bin/bash
echo "Introduzca su nombre y apellido: "
read nombre apellido
echo "Fecha y hora actual: "
date
echo "Su apellido y nombre es: "
echo "$apellido $nombre"
echo "Su usuario actual es: $(whoami)"
echo "Su directorio actual es: $(pwd)"
echo "El contenido de $HOME es: $(ls $HOME)"
echo "Espacio libre en el disco: $(df -h)"
select action in New Exit
do
	case $action in 
		"New")
			echo "Papirri"
			;;
		"Exit")
			echo "Dou"
			exit 0
			;;
	esac
done
