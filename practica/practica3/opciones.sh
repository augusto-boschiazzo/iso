#!/bin/bash
select opciones in Listar DondeEstoy QuienEsta Exit
do
case $opciones in	
	"Listar")
		ls
		;;
	"DondeEstoy")
		pwd
		;;
	"QuienEsta")
		users
		;;
	"Exit")
		exit 0
		;;
esac
done
