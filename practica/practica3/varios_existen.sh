#!/bin/bash
total=0
if [ $# -lt 1 ]; then
	echo Cantidad erronea de parametros. Se necesita al menos 1
	exit 1
fi
contador=1
for i in $*
do
	if [ $(expr $contador % 2) -ne 0 ]; then
		./existe_file.sh $i
		if [ $? -eq 2 ]; then
			total=$(expr $total + 1)
		fi
	fi
	contador=$(expr $contador + 1)
done
echo Cantidad de archivos que no existen: $total
