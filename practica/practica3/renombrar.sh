#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Se deben usar 3 parametros"
	exit 1
fi
if [ ! -d $1 ]; then
	echo "No es un directorio"
	exit 2
fi
case $2 in
	"-a")
		for i in $(ls $1)
		do
			mv $1/$i $1/$i$3
		done
		;;
	"-b")
		for i in $(ls $1)
		do
			mv $1/$i $1/$3#i
		done
		;;
	*)
		echo "El segundo parametro no es valido"
		exit 3
		;;
esac
