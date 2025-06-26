# Gestión de permisos de administrador en Linux con sudo

## Agregar un usuario al grupo sudo en Linux

Para conceder permisos de administrador a un usuario en Linux, es crucial agregarlo al grupo `sudo`.

## Pasos para agregar un usuario al grupo sudo

**1. Cambia a la cuenta root:** Introduce la contraseña del root cuando te lo solicite

```
sudo -
```

**2. Agregar el usuario al grupo sudo:** 

```
sudo -aG sudo <nombre-usuario>
```

**3. Verificar el cambio:** Cambia al usuario `<nombre-usuario>` y verifica si está en el grupo sudo.

```
su -<nombre-usuario>
groups
```

## ¿Que son los archivos sudoers?

El archivo `sudoers` especifica quién tiene permiso para ejecutar comandos como superusuario o con privilegios de otro usuario.

## Editar el archivo sudoers

**1. No modificar directamente:** Nunca editar el archivo `sudoers` con editores como `vim` o `nano`. Es mejor usar el comando seguro `visudo`.

**2. Usando `visudo`:** Abre el archivo sudoers de forma segura y verifica la sintaxis al guardar.

```
sudo visudo
```

**3. Asegurar el acceso:** En el archivo verás reglas que determinen quién tiene permisos. Existe una regla que permite a los miembros del grupo sudo ejecutar cualquier comando de administrador.

### Uso del usuario root y el usuario sudo

El uso de `sudo` como superusuario temporal ofrece ventajas frente al uso directo del `usuario root`, lo cual es una mala práctica en la administración de sistemas.

### Ventajas de uso de sudo

* **Acceso controlado:** Los usuarios no necesitan conocer la contraseña de root, solo requieren su contraseña para ejecutar comandos con privilegios de root.
* **Seguridad mejorada:** `sudo` permite rastrear los comandos ejecutados, generando logs que son vitales para la auditoría y control de accesos.
* **Prevención de vulnerabilidades:** Dado que los permisos de administrador se conceden temporalmente y por sesión.
* **Facilidad para revocar permisos:** Si u usuario ya no necesita permisos de administración, puedes simplemente quitarlo del grupo sudo, evitando potenciales escaladas de privilegios no autorizadas.

### Recomendaciones y mejores prácticas

**1. Limita los usuarios con acceso sudo:** Evita tener demasiados usuarios como administradores para prevenir vulnerabilidad.

**2. Revoca los accesos inactivos:** Si un usuario deja de necesitar permisos administrativos, retíralo del grupo sudo.

**3. Monitoreo constante:** Mantenerte atento a los logs generados por los comandos `sudo` para identificar actividades sospechosas.



