# Procesos en Linux

## 1 - Procesos y demonios en Linux: conceptos y gestión básica

### Proceso Linux

Un proceso es simplemente la representación de un programa que se esta ejecutando en el sistema. Cada vez que abres una aplicación como el navegador, o ejecutas un comando en la terminal, estás creando un proceso. Este proceso utiliza recursos de memoria, entrada y salida del sistema y capacidad de procesamiento.

### Demonio o Daemon

Es un tipo especial de proceso que opera de manera persistente en segundo plano, estos procesos suelen revivir automáticamente bajo ciertas condiciones o tras el inicio del sistema. Ejemplos:

* **Docker:** Para utilizar Docker se necesita un Daemon activo para gestionar los contenedores.
* **Arranque del sistema:** Muchos daemons se inician automáticamente cuando arranca el sistema

### Señales

Son una herramienta para comunicarse con los procesos desde el nivel mas bajo del sistema. Son comandos específicos que se envían para manipular directamente el kernel para realizar tareas como:

* Interrumpir un proceso
* Modificar un proceso
* Copiar un proceso

### Links útiles

[https://www.baeldung.com/linux/process-states](https://www.baeldung.com/linux/process-states)

[https://www-uxsup.csx.cam.ac.uk/courses/moved.Building/signals.pdf](https://www-uxsup.csx.cam.ac.uk/courses/moved.Building/signals.pdf)

## 2 - Gestión de procesos en Linux usando comandos terminales

### ¿Que es un proceso y como puedo verlo?

Un proceso se refiere a un programa u utilidad que es está ejecutando en el sistema operativo. Podemos utilizar varios comandos para listar y examinar estos procesos.

**1. Comando PS:** Muestra los procesos ejecutados en la sesion actual con detalles, como el ID del proceso (PID), terminal asociada, tiempo de ejecución y comando ejecutado.

```
ps
```

**2. Comando ps con banderas:** Para ver todos los procesos en ejecución dentro del sistema.

```
ps aux
```

**3. Uso de GREP para filtrar resultados:** Es una opción especialmente útil para filtrar resultados y buscar procesos específicos asociados a usuarios o programas.

```
ps aux | grep <nombre-usuario>
```
```
ps aux | grep less
```

### Identificar procesos en un puerto específico

Usamos `lsof` para listar los procesos de red vinculados a puertos específicos. 

1. Ejecutar `lsof` en un puerto: Muestra procesos ejecutados en el puerto 22, tipicamente usando por SSH.

```
sudo lsof -i :22
```

### Comando `top`

El comando `top` te permite ver en tiempo real todos los procesos ejecutandose con detalles adicionales como el consumo de CPU y memoria, asi como la prioridad del proceso.

```
top
```

El comando `htop` es una herramienta mejorada de top que viene con mas funcionalidades y una interfaz mas amigable.

```
htop
```

### Control de prioridades en los procesos

Se realiza meidante dos conceptos: **Priority** y **Nice Value**

* Priority: Asignada por el kernel del proceso
* Nice Value: Asignada por el usuario. Valores menores indican mayor prioridad

1. Modificar el nice value con comandos

    * A traves de htop: Usa F7/F8 para subir o bajar la prioridad `sudo htop`

2. Command Nice: Para reestablecer la prioridad antes de ejecutar un comando `nice -n XX command`

### Proceso init

El proceso init es el primer proceso que se inicia en un sistema Linux, de el derivan todos los demas procesos, esta jerarquia se puede visualizar en formato de arbol dentro de `htop`, mostrando como los procesos son clonados del proceso init original.

### Process ID

El Process ID (PID) nos permite:

* La capacidad para iniciar, para o matar procesos.
* Identificar procesos activos y diagnosticar problemas potenciales.

### Links Utiles

[https://www.baeldung.com/linux/process-states](https://www.baeldung.com/linux/process-states)



