# Montaje y configuración de unidades de almacenamiento en Linux

## Agregar un disco duro en VirtualBox

1. Asegurar que el servidor esté apagado.
2. Abrir la configuración de VirtualBox y añadir un nuevo disco
   * Ir a la sección del controlador SATA
   * "Agregar" y luego "crear" un nuevo discosi es necesario
   * Asignar un nombre relevante. Ejemplo: respaldo.vdl
   * Definir el tamaño del disco. Ejemplo: 10 GB
3. Verifica la adición del disco
   * El disco debería aparecer en la sección de almacenamiento, como `respaldo.vdl` en el puerto SATA1.

## Crear particiones en una nueva unidad

### Preparativos e identificación del disco

1. Inicia la maquina virtual y accede mediante SSH.
2. Limpia la pantalla y verifica la presencia del nuevo disco con `sblk`.
3. Confirmar la ubicación del disco con `fdisk -l`.

### Crear particiones

1. Accede a `fdisk` con permisos de administrador.

```
sudo fdisk /dev/sdb
```

2. Crea dos particiones:
   * Usa la opción `N` para crear una nueva partición primaria.
   * Define el tanaño de la primera partición como 3 GB.
   ```
   +3G
   ```
   * Repite para la segunda partición de 7 GB, utilizando el espacio restante.

3. Imprimir la tabla de particiones antes de finalizar:

```
p
```

4. Guarda los cambios escribiendo la tabla de particiones:

```
w
```

## Formatear y usar una partición

#### Formatear una partición con `ext4`

1. Utiliza el comando `mkfs` para formatear la partición:
```
sudo mkfs.ext4 /dev/sdb1
```

#### Montar la partición

2. Crear un punto de montaje:
```
sudo mkdir /mnt/scripts
```

3. Monta la partición del directorio:
```
sudo mount /dev/sdb1 /mnt/scripts
```

#### Prueba el montaje creando un archivo

* Crea un archivo de prueba en el partición montada
```
sudo vim /mnt/scripts/hola.py
```
* Contenido del archivo:
```
print("Hola mundo!")
```

#### Montar automáticamente al inicio

1. Edita el archivo `fstab`:
```
sudo vim /etc/fstab
```










