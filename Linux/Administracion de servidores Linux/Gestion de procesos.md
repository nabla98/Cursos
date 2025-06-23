# Gestión de procesos en Linux usando comandos terminales
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
**1. Ejecutar `lsof` en un puerto:** Muestra procesos ejecutados en el puerto 22, tipicamente usando por SSH.
```
sudo lsof -i :22
```

### Comando TOP
El comando `top` te permite ver en tiempo real todos los procesos ejecutandose con detalles adicionales como el consumo de CPU y memoria, asi como la prioridad del proceso.
```
top
```
El comando `htop` es una herramienta mejorada de top que viene con mas funcionalidades y una interfaz mas amigable
```
htop
```

### Control de prioridades en los procesos
Se realiza meidante dos conceptos: **Priority** y **Nice Value**
* Priority: Asignada por el kernel del proceso
* Nice Value: Asignada por el usuario. Valores menores indican mayor prioridad
1. Modificar el nice value con comandos
* *  A traves de htop: Usa F7/F8 para subir o bajar la prioridad `sudo htop`
2. Command Nice: Para reestablecer la prioridad antes de ejecutar un comando `nice -n XX command`

### Proceso init
El proceso init es el primer proceso que se inicia en un sistema Linux, de el derivan todos los demas procesos, esta jerarquia se puede visualizar en formato de arbol dentro de `htop`, mostrando como los procesos son clonados del proceso init original 

### Process ID
El Process ID (PID) nos permite:
* La capacidad para iniciar, para o matar procesos.
* Identificar procesos activos y diagnosticar problemas potenciales.

### Links Utiles
*[https://www.baeldung.com/linux/process-states](https://www.baeldung.com/linux/process-states)*
