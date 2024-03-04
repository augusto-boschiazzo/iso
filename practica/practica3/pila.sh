#!/bin/bash
pila=()
length(){
	echo ${#pila[*]}
}
push(){
	read n
	largo=$(length)
	pila[$largo]=$n
}
pop(){
	largo=$(expr $(length) - 1)
	if [ $largo -ne 0 ]; then
		echo ${pila[$largo]}
		unset pila[$largo]
	fi
}
printt(){
	echo ${pila[@]}
}

echo "MENU DE PILA"
select opcion in Push Pop Para Ahora Salir
do
	case $opcion in
		"Push")
			push
			;;
		"Pop")
			pop
			;;
		"Para")
			printt
			;;
		"Ahora")
			length
			;;
		"Salir")
			exit 0
			;;
	esac
done
