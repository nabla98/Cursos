# Redundancia y gestión de almacenamiento con RAID y LVM en Linux

## ¿Qué es RAID?

RAID, abreviado "Redundant Array of Independent Disks" (Matriz redundante de discos independientes) es una forma de construir un sistema de discos que garantiza redundancia.
No es exactamente un respaldo por que su función principal no es almacenar datos en múltiples ubicaciónes, RAID asegura que si un disco falla, tus datos no se perderán debido a que han sido duplicados en otro disco.

* **Redundancia pero no backup:** A diferencia de un respaldo, RADI crea redundancia interna. Un respaldo movería los datos a otro lugar permitiendo restaurar versiones anteriores.
* **Tipods de RAID:** Existen varios tipos de RAID, pero el más común es RAID 1, que duplica la información en dos discos.

#### Tipos de RAID: 
* **RAID 0 (Striping):** Distribuye datos entre varios discos para mejorar el rendimiento. Sin redundancia, si un disco falla, se pierden los datos.
* **RAID 1 (Mirroring):** Crea una copia exacta de los datos en dos discos diferentes. Proporciona redundancia, pero no aumenta el rendimiento.
* **RAID 5,6,10.etc:** Combinaciones de rendimiento y redundancia.

![RAID](https://github.com/nabla98/Cursos/blob/main/Linux/Administracion%20de%20servidores%20Linux%3A%20manejo%20de%20recursos/Almacenamiento/RAID.png)

## ¿Qué es LVM?

El gestor lógico de volúmenes (LVM) es una herramienta que ofrece flexibilidad en la gestión del almacenamiento, con ella se puede redimensionar y manejar particiones de manera dinámica.
* **Redimensionamiento dinámico de discos:** A diferencia de particiones fijas, los volúmenes lógicos de LVM permiten ajustar tamaños sin complicaciones.
* **Agrupación de discos:** LVM puede unir varios discos para que le sistema los reconozca como uno solo, mejorando la gestión y escalabilidad del almacenamiento.

![LVM](https://github.com/nabla98/Cursos/blob/main/Linux/Administracion%20de%20servidores%20Linux%3A%20manejo%20de%20recursos/Almacenamiento/LVM.png)

**Ejemplo de uso de LVM:**
Con varios discos, LVM permite crear un volumen que el sistema verá como un único disco. Esto proporciona la capadidad de crear particiones lógicas que puedes redimensionar según sea necesario.

### Combinación de RAID y LVM
La combinación de RAID y LVM peude brindar tanto redundancia como flexibilidad, lo cual es ideal para escenarios en los que la integridad y adaptabilidad del almacenamiento son críticas, como en los servidores.

**Implementación de LVM sobre RAID:** Al montar un LVM sobre un arreglo RAID, podemos crear y ajustar particiones más pequeñas mientras mantenemos la seguridad de los datos.

![LVM RAID](https://github.com/nabla98/Cursos/blob/main/Linux/Administracion%20de%20servidores%20Linux%3A%20manejo%20de%20recursos/Almacenamiento/LVM_RAID.png)
  



