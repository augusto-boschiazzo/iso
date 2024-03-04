#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Cantidad de parametros incorrecta."
	exit 1
fi
if [ -f $1 ]; then
	echo "El archivo existe."
	exit 0
fi
if [ -d $1 ]; then
	echo "El directorio existe."
	exit 0
fi
echo "El archivo o directorio no existe."
exit 2
