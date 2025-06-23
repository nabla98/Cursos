# Configuracion de Cronjobs en Linux para tareas automatizadas

## ¿Que es un cronjob y para que sirve?
Es una herramienta que permite automtizar tareas de forma periodica, facilitando la ejecucion programada de scripts y servicios.
Los cronjobs se componen de dos partes: el **crondemon** y el archivo **crontab**.
El crondemon es el servicio que gestiona la ejecucion de las tareas, mientras que el crontab es el archivo donde configuramos cuando y que debemos ejecutar.

## Verificar y configurar un cronjob
Podemos comporbar el estado del crondemon en nuestro sistema utilizando el comando `systemctl status cron` para asegurarnos de que esta en ejecucion.
Luego personalizamos nuestros cronjobs mediante el comando `crontab -e`, el cual nos permite acceder o crear un archivo crontab especifico para nuestro usuario, donde se escriben las reglas de dictan cuando se den ejecutar las tareas.]

## Estructura de un cronjob
Cada linea en un archivo crontab corresponde a un solo cronjob, compuesto por 5 campos que especifican el momento de ejecucion:

![https://github.com/nabla98/Cursos/blob/main/Linux/Administracion%20de%20servidores%20Linux/crontab.png](https://github.com/nabla98/Cursos/blob/main/Linux/Administracion%20de%20servidores%20Linux/crontab.png)

### Ejemplo de cronjob para actualizar el sistema
Supongamos que queremos programar una tarea de actualizacion de nuestro sistema todos los domingos a las 3:00 am.
```
0 3 * * 0 apt update -y && apt update -y
```
* 0 significa que la tarea se ejecuta al minuto cero
* 3 indica que se ejecutara a las tres de la maniana
* '* *' se utiliza para que el script se ejecute cualquier dia del mes, en cualquier mes
* 0 especifica que se ejecutara todos los domingos

## Gestion de cronjobs para usuarios y sistemas
Cada usuario en el sistema puede tener su propio archivo crontab, lo que permite personalizar las tareas automaticas segun sus necesidades. 
* Los archivos se ubican en `/var/spool/cron/crontabs`
* puedes ver tus jobs con `crontab -l`.
* Para poder editarlos utiliza `crontab -e`.
* Para configurar cronjobs a nivel de sistema (que afecten a todos los usuarios), debes editar el archivo `/etc/crontab`

### Casos de uso y fallas en los cronjobs

El archivo `/etc/crontab` permite tareas que se ejecuten a nivel sin estar ligadas a un usuario especifico, aqui puedes agregar lineas de cronjob que sean necesarias para el mantenimiento general del sistema.

Una limitante de los cronjobs es que no verifican el estado de los scripts que ejecutan. Si un script falla, el cronjob no alerta sobre el problema. Sin embargo, existen herramientas como **Cron Monitor** que ayudan a monitorear estos procesos y generan alertas si algo falla, esto es importante a la hora de trabajar con tareas criticas.

### Links utiles

*[https://devhints.io/cron](https://devhints.io/cron)*

*[https://crontab.guru/examples.html](https://crontab.guru/examples.html)*

*[https://www.thegeekdiary.com/10-useful-cron-examples-to-schedule-jobs-in-linux/#google_vignette](https://www.thegeekdiary.com/10-useful-cron-examples-to-schedule-jobs-in-linux/#google_vignette)*




