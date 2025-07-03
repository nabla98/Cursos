# Instalacion y manejo de software

## 1 – Gestion de paquetes y repositorios en Linux

### Paquetes

Un paquete en el contexto de Linux, es un conjunto de archivos compactados que contiene todos los elementos necesarios para instalar y ejecutar un software en tu sistema. Incluyen no solo el programa sino también las dependencias necesarias.

* Facilitan la instalación del software.
* Incluyen binarios y dependencias.
* Simplifican la gestión de software en servidores.

### Repositorios

Basicamente son servidores que almacenan y gestionan paquetes, estos archivos se encuentran disponibles para diferentes distribuciones de Linux y permiten que los usuarios los descarguen e instalen.

* Servidores que almacenan y gestionan paquetes.
* Varian entre distribuciones como Debian, Ubuntu, Red Hat y CentOS.
* Permiten la descarga e instalación de software adicional

### DPKG y el formato .dev

* Utiliza el formato .dev
* Herramienta de administración DPKG
* Ideal para Debian y Ubuntu

### RPM y el formato .rpm

Es el formato estándar para sistemas basados en Red Hat, como CentOS, Fedora y Amazon Linux.

* Utiliza el formato .rpm
* Herramienta de administración RPM
* Ideal para RHEL, CentOs y Fedora

### Ventajas de las herramientas de paquetes en Linux

Ambas herramientas DPKG y RPM son all-in-one tools, lo que significa que aunque existen diferencias, sus comandos básicos y flags son bastante parecidas, esto facilita mucho la transición entre diferentes distribuciones de Linux.


## 2 – Manejadores de paquetes en servidores Linux: APT, DNF y YUM

### Manejador de paquetes en Linux

Es una herramienta encargada de automatizar la instalación, actualización y eliminación de paquetes de software. Estos paquetes contienen todos los archivos necesarios para ejecutar un programa y el manejador den paquetes facilita su integración en el sistema operativo.

### Para distribuciones basadas en Debian

Se utiliza el manejador de paquetes APT (Advanced Package Tool), es conocido por su facilidad de uso y por automatizar de manera eficiente la descarga e instalación de software desde repositorios remotos.

### Para distribuciones basadas en Red Hat

Se distinguen principalmente dos manejadores de paquetes: DNF y YUM.

**DNF (Danified YUM)**

* Usado en distros modernas como Fedora Server, CentOS Stream y RHEL 8 en adelante.
* Velocidad: mas rápido que YUM al ser una solución mas nueva y optimizada.

**YUM (Yellowdog Updater Modified)**

* Utilizado en versiones de RHEL anteriores a 8
* Compatibilidad: Aunque reemplazado por DNF, sigue siendo compatible en ciertos contextos

### Links útiles
[https://www.techrepublic.com/article/whats-new-with-red-hat-enterprise-linux-8-and-red-hat-virtualization/](https://www.techrepublic.com/article/whats-new-with-red-hat-enterprise-linux-8-and-red-hat-virtualization/)

[https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_basic_system_settings/managing-software-packages_configuring-basic-system-settings](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_basic_system_settings/managing-software-packages_configuring-basic-system-settings)


## 3 – Gestion de paquetes en RHEL y Ubuntu con DNF y APT

Los sistemas RHEL utilizan principalmente dos manejadores de paquetes: **DNF** (versiones mas recientes) y **GEM** (versiones mas antiguas).

### Gestion de paquetes en RHEL

#### Listar y buscar paquetes

```
dnf list installed
dnf list installed > installed.txt
```

#### Buscar paquetes disponibles y especificos

```
dnf search mp3
```

#### Instalar y remover paquetes

```
sudo dnf install lame-libs
```

Cuando se instala un paquete se requiere aprobar claves de firma de seguridad, con la bandera `-y` evitamos confirmación.

```
sudo dnf install lame-libs -y
```

#### Remover paquetes

```
sudo dnf remove lame-libs
```


### Gestion de paquetes en Ubuntu

#### Listar todos los paquetes

Lista los paquetes instalables

```
apt list
```

Lista solo los paquetes instalados

```
apt list –installed
```

#### Buscar e instalar paquetes

```
Sudo apt install cowsay -y
```

#### Actualizar y remover paquetes

Actualiza la lista de paquetes disponibles antes de la instalacion

```
sudo apt update
```

Actualiza los paquetes instalados

```
sudo apt upgrade
```

#### Eliminar un paquete

```
sudo apt remove cowsay
```

## 4 – Instalacion de software en servidores Linux

### Instalacion de software en un servidor

Los administradores de sistemas deben estar familiarizados con diversas estrategias para garantizar que el software sea legitimo, seguro y adecuado para su entorno. Existen diferentes métodos para instalar software en un servidor, incluido el uso de manejadores de paquetes, scripts y tiendas de software.

### Instalar paquetes RPM en distribuciones Red Hat

Para instalar software no presente en los repositorios oficiales:

* Buscar el paquete RPM con herramientas RPM Finder
* Descargar e instalar el paquete

```
curl -O <url-paquete>
dnf install <nombre-paquete>.rpm
```

Instalar ejecutando script de Shell:

* Verificar la fuente, sitios que tengan respaldo de la comunidad
* Ejecucion del script

```
sh -c “$(curl -fsSL url-script)”
```

### Alternativas a los manejadores del sistema

Las consolas en Linux se benefician de entornos como **Snapcraft** y **Flatpak**, ambas tiendas de software que facilitan la instalación de paquetes mas actuales.

```
sudo snap install <nombre-paquete>
```

### Cuando el software no esta disponible

Se puede descargar directamente binarios ejecutables y colocarlos en el directorio de binarios del sistema, conlleva posibles riesgos.

```
mv <nombre-binario> > /usr/local/bin
```

### Links útiles

[https://ohmyz.sh/](https://ohmyz.sh/)


## 5 - Configuracion de repositorios extra en Linux (Ubuntu y RHEL)

### Verificar los repositorios instalados en Ubuntu

1.	Ubicación de los archivos de configuración

```
cat /etc/apt/sources.list
```

2.	Listado de repositorios

```
grep -v "^#\|^$" /etc/apt/sources.list
```

### Añadir repositorios extra en Ubuntu

1.	Agregar repositorios multiverse

```
sudo add-apt-repository multiverse
```

2.	Actualizar lista de repositorios

```
sudo apt update
```

### Manejar repositorios en distribuciones RHEL

1.	Listado de repositorios

```
dnf repolist all
```

2.	Agregar RPM Fusion

```
sudo dnf install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
```

3.	Actualizar los repositorios

```
sudo dnf update
```

4.	Activar un repositorio especifico

```
sudo dnf config-manager --set-enabled <nombre_repositorio>
```

### Precauciones al gestionar repositorios

* Verificar las fuentes: que sean confiables y legitimas.
* Limites de licencia: implicaciones legales y de licencia al habilitar software privativo al sistema.
* Seguridad.










