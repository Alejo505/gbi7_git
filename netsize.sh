#!/bin/bash
# la dirección del directorio donde se trabajó es Desktop/CSB/CSB/unix/data
#parte 1 del deber. usar batch netsize.sh n1.txt

echo "Filename: ../data/Saavedra2013/n1.txt"

echo "Number of rows:"  $( cat $1 | wc -l)

echo "Number of columns:" $( head -n 1 $1 | tr -d " " | tr -d "\n" | wc -c )

# usé echo para imprimir como texto el nombre del archivo y el lugar donde se
# encuentra. Para el número de filas us echo para imprimir "number of rows" y
# a su vez la cantidad, para eso uso el $() que lo toma como una variable que me
# permite imprimir. Con $1 digo que tengo una variable la cual es n1.txt.
# El con el cat le pido que imprima el arhivo y a su vez con
# wc -l cuenta el número de filas del archivo seleccionado.
# para las columnas también uso echo, head -n 1 $1 me muestra la primera fila del
#archivo seleccionado y añado más ordenes usando el "|" , tr - "" borra los espacios
# del archivo para q no los tome en cuenta y con \n quito un espacio extra
# finalmente wc-c muestra la cantidad de carácteres que son los números en este caso.


#############################################################################
#parte dos del deber

for file in ../data/Saavedra2013/n*.txt
do
echo $(ls $file) $(cat $file|wc -l) $( head -n 1 $file | tr -d " " | tr -d "\n"|wc -c)
done

# uso for in para que a cada archivo de la carpeta indicada haga lo que pido,
# con do empiezo diciendo has esto, uso echo $() para cada archivo con sus debidas
# columnas y filas se ejecuten en la misma fila, el ls me enlista todos los archivos,
# y los demás comandos son los mismos explicados en la primera parte del deber.
