#!/bin/bash
arreglo=($(cat /etc/group | grep users | cut -d: -f4 | tr ',' ' '))
if [ $# -eq 0 ]; then
	exit 1
fi
case $1 in
	"-b")
		if [ -z $2 ]; then
			echo mandame mas parametros mami
			exit 2
		elif [ $2 -lt 0 ] || [ $2 -ge ${#arreglo[*]} ]; then
			exit 3
		else
			echo ${arreglo[$2]}
		fi
		;;
	"-l")
		echo ${#arreglo[*]}
		;;
	"-i")
		echo ${arreglo[@]}
		;;
	*)
		echo parametros invalidos
		;;
esac
