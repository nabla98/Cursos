# Gestion de usuarios y grupos en Linux

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












