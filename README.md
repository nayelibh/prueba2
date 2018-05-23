#Script 1

Este script da al usuario las opciones de conocer los datos generales de su maquina desde la fecha del día, las direcciones alambrica e inalambrica y el identificador de usuario a travez de un menú como se muestra en el siguiente fragmento de código:


~~~
echo "  MENU    "


echo "a. fecha del dia"
echo "b. IP"
echo "c. Identificador de Usuario"
~~~


Para las opciones a. y c. los datos de salida son simples, pues se pregunta por la informacion y esta es observada en la terminal justo como se ve en  la siguente imagen:

![imagen 1 ] (/home/anayelibh/Documentos/github/pruebb2/Selección_001.png) imagen 1: *Captura de respuesta a la ejecucion del script para los incisos a y c del menu principal*


Para el caso del inciso b. presente en el menu principal cuando este es seleccionado se imprime un submenu como se muestra en el siguiente fragmento de código:

~~~
 		echo "1. Para IP inalambrica "
 		echo "2. Para IP cableada"
 		
                echo "Escriba la opcion seleccionada"
~~~

La información que nos permite conocer el comando **ifconfig** esta basado en las interfaces de red que contiene la maquina en este caso nos enfocaremos en el uso de la interface de red inalambrica y cableada,en la siguente tabla observaremos los detalles de este tipo de conexiones:


 
  
	        Tabla1 Tipo de conexión a la red en PC personal
	 
                       	|    Cableada     |    inalambrica             caracteristicas   | --------------- | ---------------           interfaz de red    |    enp0s25      |    wlp16s0


Cuando ejecutamos en el shell el comando **ifconfig** nos aparcen los  datos que se muestran en la Figura 2


![imagen 2 ] (/home/anayelibh/Documentos/github/pruebb2/im2.png) imagen 1: *Captura del comando ifconfig,  en la parte izquierda se puden observar los nombres de las interfaces de red vistas anteriormente enla Tabla1*


Debido a la cantidad de información que nos presenta el shell es poco lejible,por lo que con la siguente linea de comando se puede hacer un filtrado de información y mostrar solo la IP asignada: 

~~~
ifconfig wlp16s0 | grep inet | awk {print'$1, $2'} | head -n 1
~~~ 

 Esto para el caso de la conexón inalambrica

~~~
 ifconfig enp0s25 | grep inet | awk {print'$1, $2'} | head -n 1
~~~

 Esto para el caso de la conexión cableada
 
 Finalmente en la siguente imagen se muestra los fdatos de las IPs de nuestra maquina:
 
![imagen 3] (/home/anayelibh/Documentos/github/pruebb2/im3.png) imagen 3: *Respuesta observada en el shell al solicitar la IP haciendo filtrado de datos*
