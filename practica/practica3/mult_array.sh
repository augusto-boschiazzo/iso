#!/bin/bash
num=(10 3 5 7 9 3 5 4)
total=1

mult(){
for n in ${num[*]}
do
	total=$(expr $total \* $n)
done
}

mult
echo $total
