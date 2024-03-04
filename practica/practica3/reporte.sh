#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Numero erroneo de parametros"
	exit 1
fi

echo > reporte.txt

for passwd in $(cat /etc/passwd | cut -d: -f 1,6)
do
	usuario=$(echo $passwd | cut -d: -f1)
	home=$(echo $passwd | cut -d: -f2)
	if [ -d $home ]; then
		echo "$usuario $(find $home -user $usuario -name "*.$1" | wc -l)" >> reporte.txt
	fi
done
