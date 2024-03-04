#!/bin/bash
inicializar() {
	arreglo=()
}

longitud() {
	echo ${#arreglo[*]}
}

agregar_elem() {
	if [ $# -ne 1 ]; then
		echo que haces pelotudo
		exit 1
	fi
	arreglo+=$1
}

eliminar_elem() {
	if [ $1 -lt 0 ] || [ $1 -gt $(longitud) ]; then
		echo posicion invalida
		exit 2
	fi
	unset arreglo[$1]
}

imprimir() {
	echo ${arreglo[@]}
}

inicializar_con_valores() {
	if [ $# -ne 2 ]; then
		echo cantidad erronea de parametros
		exit 3
	fi
	for i in $(seq 0 $1)
	do
		arreglo[$i]=$2
	done
}

select opcion in Inicializar Agregar Eliminar Longitud Imprimir "Inicializar con valores" Salir
do
	case $opcion in
		"Inicializar")
			inicializar
			;;
		"Agregar")
			read agreg
			agregar $agreg
			;;
		"Eliminar")
			read elim
			eliminar elim
			;;
		"Longitud")
			longitud
			;;
		"Imprimir")
			imprimir
			;;
		"Inicializar con valores")
			read cant
			read val
			inicializar_con_valores $cant $val
			;;
		"Salir")
			exit 0
			;;
	esac
done
