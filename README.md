# mp-sdks-test-env
Entornos de prueba basados en docker para probar los SDKs de MercadoPago

Cada entorno esta contenido en una estructura de directorios semantico:

/       1.x         /      php     /         *
    ^^^^^^^^^^^         ^^^^^^^^         ^^^^^^^^
  Version del SDK       Lenguaje         Archivos 
    1.x Ultima          del  SDK        del entorno
    0.x Legacy

Segun la version y el lenguaje elegido en la carpeta del entorno encontraras los archivos necesarios para crear la imagen e iniciar el contenedor docker.

|----------------	|--------------------------------------------------------------------------------------------	|
| Script         	| Directorio destinado a almacenar todos los snippets a probar                               	|
| ├- script.php 	| Snippet de código que sera visible en el entorno de prueba                                 	|
| build.sh       	| Script de construcción de la imagen docker del entorno de prueba                           	|
| php.dockerfile 	| Receta docker (Dockerfile) para la construcción de la imagen, se puede variar la version de php o el SDK segun mejor se ajuste a la necesidad |
| run.sh         	| Script para iniciar un nuevo contenedor temporal basado en la imagen del entorno de prueba 	|

## ¿Como usarlo?

Una vez dentro del directorio del entorno es necesario primero construir la imagen docker.

```bash
./build.sh
```

Luego podras iniciar el contenedor temporal con los parametros basicos.

```bash
./run.sh
```

Una vez dentro del entorno podras visualizar los archivos dentro de la carpeta script con `ls`.

Recodando que el SDK de MercadoPago ya viene instalado por defecto puede ejecutar el script de la forma estandar segun el lenguaje:

|-----	|-----------------	|
| PHP 	| `php script.php` 	|

No es necesario cerrar terminal o finalizar el script para iniciar una nueva prueba, el contenedor refleja de forma automatica los cambios en los archivos de la carpeta script y estan siempre disponibles para ejecutar las pruebas.
