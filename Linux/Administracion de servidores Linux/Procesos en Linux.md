**Procesos y demonios en Linux: conceptos y gestión básica**

**Proceso Linux**

Un proceso es simplemente la representación de un programa que se esta ejecutando en el sistema. Cada vez que abres una aplicación como el **navegador**, o ejecutas un **comando** en la terminal, estás creando un proceso. Este proceso utiliza recursos de memoria, entrada y salida del sistema y capacidad de procesamiento.

**Demonio o Daemon**

Es un tipo especial de proceso que opera de manera persistente en segundo plano, estos procesos suelen revivir automáticamente bajo ciertas condiciones o tras el inicio del sistema. Ejemplos:

- Docker: Para utilizar Docker se necesita un Daemon activo para gestionar los contenedores
- Arranque del sistema: Muchos daemons se inician automáticamente cuando arranca el sistema

**Señales**

Son una herramienta para comunicarse con los procesos desde el nivel mas bajo del sistema. Son comandos específicos que se envían para manipular directamente el kernel para realizar tareas como:

- Interrumpir un proceso
- Modificar un proceso
- Copiar un proceso

**Links útiles**

<https://www.baeldung.com/linux/process-states>

<https://www-uxsup.csx.cam.ac.uk/courses/moved.Building/signals.pdf>

