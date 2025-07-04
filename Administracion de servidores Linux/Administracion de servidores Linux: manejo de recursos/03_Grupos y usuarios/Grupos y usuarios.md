# Grupos y usuarios

## 1 - Gestion de usuarios y grupos en Linux

## Introduccion

Una cuenta de usuario tipica incluye la informacion que necesita un usuario para iniciar sesion y utilizar un sistema sin tener la password root del mismo. Al configurar una cuenta de usuario, puede agregar el usuario a grupos de usuarios predefinidos.
Un uso habitual de grupos es configurar permisos de grupo en un archivo y directorio, lo que permite el acceso solo a los usuarios que forman parte de ese grupo.
Un tipo especial de cuenta de usuario, denominado rol, sirve para brindar a usuarios seleccionados privilegios espciales.

[https://docs.oracle.com/cd/E24842_01/html/E23289/userconcept-36940.html](https://docs.oracle.com/cd/E24842_01/html/E23289/userconcept-36940.html)

### ¿Qué es un usuario en Linux?

Los usuarios son un mecanismo para separar y gestionar las responsabilidades y los permisos del sistema. Los usuarios suelen tener:
* **UID (User ID):** Un identificador unico que diferencia a cada usuario dentro del sistema.
* **GID(Group ID):** Asociaciones a uno o mas grupos para coordinar permisos colectivos.
* **Directorio Home:** Ubicacion personalizada dentro del sistema, como `/home/<nombre-usuario>`, donde se almacenan sus archivos y configuraciones personales.

### Archivo `/etc/passwd`

Contiene informacion relevante sobre cada usuario del sistema.

* **Formato del archivo:**

```
nombre:contraseña:userID:groupID:gecos:directorio_home:shell_inicio
```

 * Nombre: Identificador del usuario.
 * Contraseña: Representada por una 'X', ya que no se almacena en texto plano.
 * UserID y GroupID: Identificadores únicos.
 * Gecos: Información adicional sobre el usuario, como nombre completo y contacto.
 * Directorio Home: Ruta personal del usuario.
 * Shell de preferencia: La shell que se ejecuta al iniciar sesión, como bash o zsh.

### Archivo `/etc/shadow`

La seguridad de las password es gestionada a traves del archivo `shadow` que las almacena en forma cifrada.

* **Cifrado avanzado:** Gracias a algoritmos de hash, las password se almacenan sin posibiliad de ser leidas directamente.
* **Indicadores especiales:**

    * **Asterisco (*):** Indica que el usuario nunca ha tenido una password
  
    * **Signo admiracion (!):** Usuario bloqueado.

### ¿Qué son los grupos en Linux?

Son uan herramienta para controlar permisos colectivos entre varios usuarios:
* **Acceso compartido:** A documentos y directorios entre usuarios del mismo grupo.
* **Integracion con sevicios:** Servicio externos como Docker o Postgres utilizan grupos para gestionar permisos de ejecucion.

### Link utiles

[https://www.redhat.com/en/blog/linux-gecos-demystified#:~:text=In%20the%20dark%20ages%20of,Comprehensive%20Operating%20System%20(GCOS).](https://www.redhat.com/en/blog/linux-gecos-demystified#:~:text=In%20the%20dark%20ages%20of,Comprehensive%20Operating%20System%20(GCOS).)


## 2 - Manejo de usuarios en Linux









