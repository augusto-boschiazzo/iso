#!/bin/bash
vector1=(3 6 1 4)
vector2=(7 4 9 6)
longitud=$(expr ${#vector1[*]} - 1)

for i in $(seq 0 $longitud)
do
	echo $(expr ${vector1[i]} + ${vector2[i]})
done
