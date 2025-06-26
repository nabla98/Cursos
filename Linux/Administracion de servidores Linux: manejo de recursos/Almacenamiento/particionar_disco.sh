#!/bin/bash
# script para particionar disco 

if [ "$(whoami)" != "root" ]; then
        echo "Debe ser root para ejecutar este script"
        exit 1
fi

echo -e "\nAcontinuacion te mostraremos los discos que tiene tu sistema\n"
read -p "Presiona ENTER para continuar" 


fdisk -l | less
while : 
do
        clear
        echo -e "\n"
        read -p "Ingresa la ruta del disco a modificar(ej: /dev/sda): " disk
        echo -e "\n\tSeleccionaste el disco: ${disk}\n\t(l) listar los discos"

        read -p "(y/n): " select1
        if [ $select1 == "y" ]; then 
                fdisk $disk
        elif [ $select1 == "l" ]; then 
                fdisk -l | less 
        else
                return 0
        fi
done


echo "Si hiciste un cambio o no.. Asi quedaron las particiones al disco ${disk}"
sleep 3 
fdisk -l $disk
