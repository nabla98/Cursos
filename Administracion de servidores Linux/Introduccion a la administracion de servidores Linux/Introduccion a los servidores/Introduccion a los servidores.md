# Introducción a los servidores


## 1 - Administración básica de servidores

### Conocimientos previos

Es recomendable tener conocimientos básicos en Ingeniería de software y el manejo de la terminal, además, es opcional tener conocimientos en lenguajes de scripting como Python o Shell, y una comprensión básica de redes computacionales.

### Objetivos del curso

Familiarización con los servidores Linux: Aprender a identificar los tipos de servidores que incluyen web, de aplicaciones, e-mail y otros.

Comprensión de sistemas Linux: Profundizar en los conceptos clave de servidores y sistemas operativos, abarcando su arquitectura y funcionamiento.

Administración básica de servidores: Montarás y manejarás diferentes tipos de servidores y distribuciones.

Funcionamiento interno de Linux: Procesos de Linux, demonios y otros componentes esenciales para la operatividad del sistema.


## 2 - Habilidades y roles de un administrador Linux

### Habilidades

Es fundamental dominar un conjunto de habilidades clave que trascienden roles específicos y se aplican de manera transversal.

**Control de accesos:** Es fundamental poder otorgar o limitar el acceso a archivos y grupos de recursos según los usuarios y grupos.

**Monitoreo del sistema:** Un administrador debe saber quien está accediendo al sistema, cuando lo está haciendo y que recursos están utilizando a nivel de software y hardware.

**Administración de recursos:** Implica asignar adecuadamente la memoria y el almacenamiento.

**Troubleshooting:** Permite identificar y resolver problemas en el sistema.

**Instalación y mantenimiento de software:** Incluir el aseguramiento de actualización y la gestión de aplicaciones necesarias para el funcionamiento del sistema.

### Roles

Roles
**DevOps Engineer:** Son responsables de la administración de servidores con el propósito de optimizar el desarrollo y el despliegue de software. Esto implica crear servidores de prueba, gestionar el envío de código a producción y seguir las mejores prácticas.

**Site Reability Engineer (SRE):** Se centra en asegurar que los sistemas de software funcionen de manera eficiente y confiable, busca que las aplicaciones y servicios estén siempre disponibles para usuarios y aplicaciones, maximizando la operatividad ininterrumpida.

**Security Operations Engineer:** Se especializan en la seguridad de servidores y la arquitectura de red, son responsables de procesos como el “Hardening”, que previene posibles infiltraciones y ataques.

**Network Engineers:** Garantizan que toda la infraestructura de red esté bien configurada y operativa.

**Database Administrators:** Administran servidores cuyo servicio principal es la base de datos, asegurando sus respaldos y el buen estado de tablas e índices.

**Network Operations Center Engineer:** Actúan en los datacenters brindando soporte tanto a hardware como a software.

**MLOps Engineer:** Se enfocan en sistemas de IA y Machine Learning.

**Cloud Engineers:** Administran servidores y servicios directamente en la nube.


## 3 - Historia y tipos de servidores

### ¿Qué es un servidor?

Un servidor es un conjunto de recursos tecnológicos, tanto en términos de software como de hardware, diseñado para cumplir con uno o varios propósitos específicos. Estos recursos están destinados a responder a las peticiones de los clientes, proporcionando respuestas que cumplen con sus expectativas y necesidades tecnológicas.

### Evolución de los servidores

Originalmente la arquitectura prevaleciente era la “mainframe terminal”. Una computadora central (el mainframe) conectaba múltiples terminales conocidas como DOM terminals, las cuales no poseían ni disco duro ni RAM y dependían completamente del mainframe para cualquier operación.

![DOM terminal](./DOM-terminal.png)

### Funcionamiento de los servidores modernos

Casos modernos como GeForce de NVIDIA ilustran el poder actual de los servidores. Este servicio permite que los usuarios disfruten de videojuegos sin poseer hardware avanzado en casa. Todo el procesamiento se realiza en servidores remotos y el resultado se transmite al usuario a través de internet. Este servicio es posible gracias a la arquitectura de fibra óptica y la potencia de los datacenters actuales.

![modern server](./modern-server.png)

### Tipos de servidores

**Servidores web:** Alojan aplicaciones y servicios accesibles desde un navegador.

**Servidores de base de datos:** Almacenan y gestionan información de registros y motores de bases de datos.

**Servidores de pruebas:** Usados por desarrolladores para testear aplicaciones antes de su despliegue en producción.

**Servidores de videojuegos:** Orquestan partidas multijugador y gestionan acciones en tiempo real.

**Servidores de medios:** Almacenan y comparten archivos multimedia como fotos y videos.

**Servidores de correo:** Mueven la comunicación a través de redes privadas internas.

**Servidores de impresión y archivos:** Gestionan colas de impresión y facilitan el intercambio de archivos.

**Servidores VoIP:** Permiten realizar llamadas telefónicas a través de internet.


## 4 - Introducción a los sistemas operativos Linux

### ¿Qué es un sistema operativo Linux?

A menudo se refiere a un “kernel” que es el núcleo de cualquier sistema operativo, el cual funciona como un intermediario, conectando el hardware con el software y permitiendo que todos los componentes de un sistema operativo funcionen en memoria. Pero cuando se habla de sistemas operativos Linux, generalmente nos referimos a GNU/Linux.

### ¿Qué es GNU/Linux?

Es una familia de sistemas operativos que utilizan el kernel de Linux y se complementan con el software del proyecto GNU. Este proyecto iniciado en los años 80 se centra en proporcionar un sistema operativo de software libre. Es conocido por su flexibilidad y capacidad de adaptación, lo que ha dado lugar a una amplia variedad de distribuciones.

Algunas de las principales distribuciones de Linux son:

**Red Hat Enterprise Linux (RHEL):** Conocido por su estabilidad y soporte, es ampliamente utilizado en entornos empresariales.
**Ubuntu:** Basado en Debian, es conocido por su facilidad de uso y cuenta con una enorme comunidad de usuarios.
**Debian:** Reconocido por su estabilidad y gran cantidad de paquetes de software disponibles.

### Diferencias entre sistemas Linux y Unix

Linux utiliza el kernel de Linux en sus sistemas operativos, en cambio, Unix es un sistema operativo desarrollado en 1969 por los laboratorios Bell de AT&T.
MacOS es una de las principales plataformas que incorporan elementos de Unix, en realidad MacOS integra atributos de Unix en su arquitectura.

### Ventajas y desventajas de las distribuciones Linux

La elección de una distribución de Linux depende de las necesidades específicas de usuario o de la organización.

**Costo:** Las distribuciones como Debian y Ubuntu son gratuitas, lo que las hace atractivas para startups y pequeñas empresas.

**Soporte y actualización:** Distribuciones como RHEL ofrecen soporte técnico detallado y actualizaciones regularizadas, ideadas para entornos corporativos.

**Facilidad de uso:** Ubuntu es popular entre principiantes debido a su interfaz amigable.

### Lectura complementaria

[https://www.fosslinux.com/44623/top-unix-based-operating-systems.htm](https://www.fosslinux.com/44623/top-unix-based-operating-systems.htm)

[https://www.kernel.org/category/about.html](https://www.kernel.org/category/about.html)

[https://www.digitalocean.com/community/tutorials/a-comparative-introduction-to-freebsd-for-linux-users](https://www.digitalocean.com/community/tutorials/a-comparative-introduction-to-freebsd-for-linux-users)


## 5 - Arquitectura de sistemas UNIX/Linux: capas y funciones

Estos sistemas operativos están basados en una arquitectura de capas, donde cada una desempeña un rol específico en el funcionamiento del sistema, este modelo no solo ayuda a estructurar las tareas internas, sino que además facilita la interacción entre el hardware y el software.

### Capa de hardware

Constituye el núcleo de un sistema Linux, siendo la base sobre la cual se constituyen las demás capas, engloba a los dispositivos físicos conectados a la computadora como: discos duros, mouses, memoria RAM, procesadores y tarjetas de red. El hardware es el fundamento que permite la ejecución de cualquier operación en el sistema y define las capacidades físicas de la máquina.

### Capa del kernel en Linux

El kernel es el núcleo del sistema operativo Linux, que tiene la función de:

* Gestionar la interacción del hardware con los niveles superiores.
* Controlar la memoria RAM y los ciclos del CPU.
* Pasar información a las capas superiores, permitiendo un flujo de información eficiente.

### Capa del Shell

Funciona como la interfaz entre el kernel y las aplicaciones, permite al usuario enviar comandos al núcleo del sistema para que sean procesados y ejecutados. Es esencial ya que, sin ella, el usuario no tendría forma directa de comunicarse con el sistema para realizar tareas o ejecutar aplicaciones.

Sus funciones incluyen:

* La ejecución de comandos en la terminal
* Es la interfaz que traduce y transmite las solicitudes del usuario al kernel.

### Capa de aplicaciones

También conocida como la capa de utilidades, es el nivel mas cercano al usuario, donde se alojan aplicaciones y herramientas que usamos diariamente, tales como calculadoras, calendarios, navegadores, comandos para manipulación de archivos.

La administración de esta capa es crucial ya que aquí se instala y ejecuta el software que define la experiencia de usuario y la funcionalidad del sistema.

![arquitectura-linux](./arquitectura-linux.png)















