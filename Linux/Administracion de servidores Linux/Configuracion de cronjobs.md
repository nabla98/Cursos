# Configuracion de Cronjobs en Linux para tareas automatizadas

## ¿Que es un cronjob y para que sirve?
Es una herramienta que permite automtizar tareas de forma periodica, facilitando la ejecucion programada de scripts y servicios.
Los cronjobs se componen de dos partes: el **crondemon** y el archivo **crontab**.
El crondemon es el servicio que gestiona la ejecucion de las tareas, mientras que el crontab es el archivo donde configuramos cuando y que debemos ejecutar.

## Verificar y configurar un cronjob
Podemos comporbar el estado del crondemon en nuestro sistema utilizando el comando `systemctl status cron` para asegurarnos de que esta en ejecucion.
Luego personalizamos nuestros cronjobs mediante el comando `crontab -e`, el cual nos permite acceder o crear un archivo crontab especifico para nuestro usuario, donde se escriben las reglas de dictan cuando se den ejecutar las tareas.]

## Estructura de un crponjob
Cada linea en un archivo crontab corresponde a un solo cronjob, compuesto por 5 campos que especifican el momento de ejecucion:






