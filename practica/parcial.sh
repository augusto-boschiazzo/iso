#!/bin/bash
if [ $# -ne 1 ]; then
	echo Cantidad erronea de argumentos
	exit 1
fi

arreglo=()

delete() {
	if [ $# -eq 0 ]; then
		echo QUEEEEE
		return 1
	fi
	contador=0
	for a in ${arreglo[@]}
	do
		if [ $1 -eq $a ]; then
			rm $1$a
			unset $arreglo[$contador]
			return 0
		fi
		contador=$(expr $contador + 1)
	done
	echo "No se encontro el archivo."
	return 1
}

index() {
	contador=0
	for a in ${arreglo[@]}
	do
		if [ $1 -eq $a ]; then
			echo $contador
			return 0
		fi
		contador=$(expr $contador + 1)
	done
	echo "Down"
	return 1
}

size() {
	echo ${#arreglo[@]}
}

show() {
	echo ${arreglo[@]}
}

for i in $(ls $1)
do
	archivo=$1$i

	if [ ! -d $1$i ]; then
		arreglo+=$archivo" "
	fi

done

contador1=0
select opcion in Delete Index Size Show Exit
do
	case $opcion in
		"Delete")
			read nombre
			delete nombre
			contador1=$(expr $contador1 + 1)
			;;
		"Index")
			read nombre
			index nombre
			contador1=$(expr $contador1 + 1)
			;;
		"Size")
			size
			contador1=$(expr $contador1 + 1)
			;;
		"Show")
			show
			contador1=$(expr $contador1 + 1)
			;;
		"Exit")
			echo $contador1
			exit 0
			;;
	esac
done
