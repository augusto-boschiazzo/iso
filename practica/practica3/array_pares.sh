#!/bin/bash
vector=(10 3 9 20 4)
total=0
for n in ${vector[*]}
do
	if [ $(expr $n % 2) -eq 0 ]; then
		echo $n
	else
		total=$(expr $total + 1)
	fi
done
echo $total
