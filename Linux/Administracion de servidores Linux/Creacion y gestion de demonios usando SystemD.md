# Creacion y gestion de demonios Linux usando SystemD

Estos procesos en segundo plano permiten que nuestro sistema operativo funcione de manera eficiente, ejecutando tareas criticas sin intervencion del usuario.
Dominar la administracion y creacion de demonios te permite automatizar tareas y crear servicios personalizados.

## ¿Que son los demonios y para que sirven?

Los demonios son un mecanismo que tiene Linux para darle un comportamiento de servicio a los procesos. Nosotros podemos configurarlos para que se inicien automaticamente al arrancar el sistema, bajo condiciones especificas y con comportamientos predeterminados.
Estos servicios se crean a traves de archivos llamados "Unit files" que definen como y cuando debe ejecutarse un demonio.
Un caso de común es cuando necesitamos que un script se ejecute constantemente sin intervención manual.

El primer y mas importante demonio en Linux es **SytemD**, que funciona cono el gestor principal de todos los demás demonios del sistema. El mismo es responsable de iniciar componentes críticos como:
* Drivers de red
* Entorno gráfico
* Servicios escenciales del sistema operativo

Para interactuar con **SystemD**, utilizamos **SyswtemCTL** (System Control) que proporciona una interfaz para gestionar los demonios y servicios del sistema.

## Crear un configurar un demonio personalizado
En el siguiente ejemplo vamos a implementar un scriot de Python que funcione como un logger básico, registrando la fecha actual cada segundo en un archivo.

```
import time
from datetime import datetime

while True:
  file = open('/date_logs/timestamp.txt','a')
  file.write(f'Timestamp: {datetime.now()}\n')
  file.close()
  time.sleep(1)
```

### Confugracion del script
1. Verificar que Python este instalado: `python -V`
2. Crear el directorio donde se guardaran lo logs `mkdir /date_logs`
3. Crear un directorio para nuestros scripts `mkdir /root/scripts`
4. Guardar nuestro script en la ubicacion adecuada `vim /root/scripts/logger.py`

### Crear el Unit file
El Unit file es la configuracion que nuestro **SystemD** utilizara para gestioar nuestro demonio. Debemos crearlo en la ubicacion correcta:
```
vim /etc/systemd/system/loggerPython.service
```
Y agregar el siguiente contenido:
```
[Unit]
Description = Python Logger
After = muilti-user.target

[Sercice]
Type = simple
Restart = always
ExecStart = /usr/bin/python3 /root/scripts/logger.py

[Install]
WantedBy = multi-user.target
```
Este archivo de configuracion tiene tres secciones principales:
1. [Unit] : Contiene metadatos y dependencias
* * Description: Una descripcion simple del servicio
* * After: Indica que este servicio debe iniciarse despues del target especificado
 2. [Service] : Define el comportamiento del servicio
* * Type: Especifica el tipo de proceso (simple, forking, oneshot,etc)
* * Restart: Dtermina cuando reiniciar el servicio (always, on-failure,etc)
* * ExecStart: El comando que se ejecutara para iniciar el servicio
3. [Install] : Configura como se instala el servicio
* * WantedBy: Especifica en que target debe incluirse este servicio

### Activando y gestionando el demonio
Ya creado el Unit file, tenemos que recargar SystemD para que reconozca los cambios:
```
systemctl reload
```
Habilitar el servicio para que se inicie automaticamente al arrancar el sistema:
```
systemctl enable loggerPython.service
```
Para iniciar manualmente el servicio:
```
systemctl start loggerPython.service
```
Para verificar el estado del servicio:
```
systemctl status loggerPython.service
```
Para detener el servicio:
```
systemctl stop loggerPython.service
```
Para deshabilitar el inicio automatico:
```
systemctl disable loggerPython.service
```

## Funcionamiento de los targets
En SystemD, los **targets** son similares a los niveles de ejecucion (runlevels) en sistemas SysV init tradicionales. El target `multi-user.target` que utilizamos en nuestro ejemplo se activa despues de que todos los servicios escenciales (red, drivers,etc.) se han iniciado, permitiendo el acceso a una consola de texto.
Lo targets definen puntos especificos en el proceso de arranque y determinan que sercicios deben estar activos en cada etapa. Esto permite una gestion mas granular y flexible de los servicios del sistema.

## Links utiles

*[https://gist.github.com/edevars/22031bf16662aac794795d78ffecf8c8](https://gist.github.com/edevars/22031bf16662aac794795d78ffecf8c8)*
*[https://gist.github.com/edevars/60ed4509e0ff119358483b7e76e329cf](https://gist.github.com/edevars/60ed4509e0ff119358483b7e76e329cf)*
*[https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files](https://www.digitalocean.com/community/tutorials/understanding-systemd-units-and-unit-files)*






