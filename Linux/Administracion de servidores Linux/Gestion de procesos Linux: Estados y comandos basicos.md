# Gestión de procesos en Linux: Estados y Comandos básicos

### Estados de los procesos en Linux
En Linux, cada proceso tiene un estado específico que determina cómo interactúa con el sistema y sus recursos. Dichos estados son:
* **Running o runnable:** Este estado se activa cuando el proceso está utilizando recursos de CPU o memoria.
* **Sleep:** Hay dos tipos de estados de "sleep":
* * **Uninterrumptible sleep (D):** El proceso está esperando que haya suficientes recursos disponibles, no puede ser interrumpido y requiere una señan especíofica, como `SIGKILL` para terminarlo.
* * **Interruptible sleep (S):** Este estado puede ser interrumpido y el proceso se puede finalizar con señales comunes, siempre que esté en espera. 
* **Stopped (T):** El proceso está pausado y no se ejecutará ni al liberar recursos, hasta que se le indique de manera explícita.
* **Zombie (Z):** Un proceso que ha terminado de ejecutarse pero aún tiene una entrada en la tabla de procesos, lo que sucede cuando intenta terminar sin desvincularse del proceso original.

### Comandos básicos para la gestión de procesos
1. Ejecutar un proceso en el background (segundo plano):
```
<comando> &
```
2. Listar procesos en background:
```
jobs -l
```
3. Traer un proceso al foregrpund (primer plano):
```
fg <job-id>
```
4. Pausar y reanudar procesos: Mediante `ctrl + Z` se detiene un proceso y `fg` o `bg` para reanudarlos en foreground o background, repspectivamente.

### Terminar procesos

Para terminar procesos, especialmente aquellos en el background, se puede utilizar el comando `kill` seguido del Process ID (PID). Este comando envia una señal de comando predeterminada (`SIGTERM`):
```
kill 1402
```
En caso de que el proceso no responda, se [puede utilizar una señal mas directa como `SIGKILL` (identificador 9):
```
kill -9 1402
```

### `htop` para la gestion de procesos
Esta herramienta permite:
1. Ver todos los procesos actuales
2. Ordenar y filtrar procesos por ID, uso de CPU, memoria, etc.
3. Terminar procesos seleccionando con `F9` y escogiendo la señal deseada como `SEGTERM` o `SIGKILL`.

### Conmando KillAll
El comando `kkillall` se utiliza para terminar todos los procesos que comparten el mismo nombre. Es especialmente util para cerrar multiples instancias de un programa simultaneamente:
```
killall <nombre-proceso>
```

### Links utiles
![https://www.tecmint.com/linux-process-management/](https://www.tecmint.com/linux-process-management/)
![https://www-uxsup.csx.cam.ac.uk/courses/moved.Building/signals.pdf](https://www-uxsup.csx.cam.ac.uk/courses/moved.Building/signals.pdf)


