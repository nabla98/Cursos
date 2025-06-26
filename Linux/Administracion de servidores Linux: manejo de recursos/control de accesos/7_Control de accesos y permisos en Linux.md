# Control de accesos y permisos en Linux: buenas prácticas

## Control de accesos en Linux

En linux, todo es un objeto, incluso los archivos. La base para controlar quién tiene acceso a queé en este sistema reside en el porcedimiento de permisos que se otorgan según el usuario, lo cual es crucial para mantener la seguridad y el buen funcionamiento de un entorno Linux.

## ¿Cómo interpreta Linux los permisos?

Linux asigna permisos a los usuarios con el fin de definir qué acciones pueden realizar ciertos objetos, como la ejecución de archivos o la lectura de información. El creador de cualquier archivo u objeto en Linux es su dueño, lo que le otorga el control sobre dichos objetos.
Sin embargo, el `root` es la excepción, ya que tiene acceso ilimitado a cualquier objeto creado por otros usuarios.

## Buenas prácticas en el control de accesos en Linux

**1. Uso responsable de la cuenta root:**
  * Limitar el acceso directo a ser absolutamente necesario.
  * Iniciar sesión como root sólo a través de SSH con llaves configuradas adecuadamente.

**2. Gestión de permisos de administrador:**
  * Otorgar privilegios de administrador solo a usuarios necesarios.
  * Periódicamente, revocar estos permisos si ya no se necesitan.

**3. Uso de sudo:**
  * Perferir el uso de `sudo` para conceder permisos administrativos temporales.
  * Esto mitiga riesgos de modificación no autorizada, reduciendo el potencial de daños.

**4. Mantener prácticas de seguridad:**
  * Protegerse del escalamiento de privilegios y otras posibles vulnerabilidades.
  * Considerar la implementación de un proceso llamado *Hardening* en servidores Linux para mejorar la seguridad.

## Revocar permisos en Linux

Esto se logra eliminando al usuario del grupo `sudoers` o `sudo`. En algunas distros basadas en Red Hat es posible que encuentres grupos equivalentes bajo el nombre `wheel`.





