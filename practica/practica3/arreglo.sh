#!/bin/bash

vector=()

iniciar(){
	vector=$(seq 1 10)
}

longitud(){
	echo Longitud: ${#vector[0]}
}

elementos(){
	echo Elementos: ${vector[@]}
}

select opcion in iniciar longitud elementos exit; do
	$opcion
done
