#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Ingresar usuario"
	exit 1
fi

existe=$(cat /etc/passwd | cut -d: -f1 | grep -w $1 | wc -l)
if [ $existe -eq 0 ]; then
	echo "El usuario no existe"
	exit 2
fi

while true; do
	logueado=$(users | grep -wc $1)
	if [ $logueado -gt 0 ]; then
		echo "Usuario $1 logueado"
		exit 0
	fi
	sleep 10
done
