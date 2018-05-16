#!/bin/bash


echo "  MENU    "


echo "a. fecha del dia"
echo "b. IP"
echo "c. Identificador de Usuario"

read -p 'de la opcion elegida:  ' num

case $num in
	 a)
		date
	;;

	b)
		echo "1. Para IP inalambrica "
		echo "2. Para IP cableada"
		echo "Escriba la opcion seleccionada"
		read con


		if [ $con = 1 ];
			then
			 ifconfig wlp16s0 | grep inet | awk {print'$1, $2'} | head -n 1
	else
		if [ $con = 2 ];
	       		then
			ifconfig enp0s25 | grep inet | awk {print'$1, $2'} | head -n 1
	else
			echo "la opcion seleccionada es incorrecta"

		   fi
	   	   fi

	 ;;
																			              c)																				   whoami
																				      ;;
	 	
																				      *)
																			                      echo "la opcion dada es incorrecta"
																					      ;;																			
																				 esac

																	
echo "FIN"
																										                                                              40,3-10     Final


