# Wiki

Wiki para los desarrollos de nuevas especificaciones de cocoapods

# Indice

- [Cómo desarrollar](#c-mo-desarrollar)

# Cómo desarrollar

Antes de subir una nueva especificación, éstas deben ser probadas en local. Para ello se deben seguir los siguientes pasos:
- Subir el código fuente de la librería que se quiera modificar.
- Generar un nuevo fichero `.podspec` apuntando a ese código fuente (master, nuevo tag, etc)
- Añadir en el fichero `podfile` la especificación y sustituir la versión por la clausula `:podspec` e indicar la ruta relativa hasta el fichero `.podspec`
- Ejecutar el comando `pod update` para actualizar los pods

Al ejecutar el proceso, se descargará la versión configurada en el `.podspec`, pudiendo probar el nuevo desarrollo. Posteriormente, una vez verificado el correcto funcionamiento, se procederá a la subida de la nueva especificación.