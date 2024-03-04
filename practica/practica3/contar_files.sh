#!/bin/bash
if [ $# -ne 1 ]; then
	echo cantidad erronea de parametros
	exit 1
fi
if [ ! -d $1 ]; then
	echo No existe el directorio
	exit 4
fi
ls -l $1 | cut -d" " -f1 | cut -d"x" -s -f1 | sed "/d/d" | grep rw | wc -l
