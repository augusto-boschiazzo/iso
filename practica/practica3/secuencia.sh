#!/bin/bash

for i in $(seq 1 100)
do
	echo "Numero $i, Cuadrado $(expr $i \* $i)"
done
