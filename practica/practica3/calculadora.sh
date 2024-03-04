#!/bin/bash
#
if [ $# -ne 3 ]; then
	echo "Cantidad erronea de parametros"
	exit 1
fi

case $2 in
	"+")
		expr $1 + $3
		exit 0
		;;
	"-")
		expr $1 - $3
		exit 0
		;;
	"*")
		expr $1 \* $3
		exit 0
		;;
	"%")
		expr $1 / $3
		exit 0
		;;
esac
echo "Cuenta erronea."
exit 2
		
