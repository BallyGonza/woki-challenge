# Desafío Woki App

Este proyecto implementa los requerimientos específicos para el desafío de la Woki App. La aplicación consta de dos pantallas principales:

1. La pantalla principal muestra los usuarios descargados desde la API.
2. La pantalla de detalle del usuario muestra información adicional sobre un usuario seleccionado.

## Características

- Muestra usuarios obtenidos de la API
- Presenta información detallada del usuario
- Implementa almacenamiento local para acceso sin conexión
- Maneja el estado de conectividad a internet

## Paquetes Utilizados

- **Bloc**: Para gestión de estados
- **Dio**: Para interacciones con la API
- **Freezed**: Para simplificar la gestión de clases
- **Connectivity Plus**: Para validar la conexión a internet
- **Hive**: Para almacenamiento local de datos
- **Provider**: Para realizar la injeccion de dependencias

## Implementaciones Adicionales

Además de los requerimientos obligatorios, se ha implementado almacenamiento local utilizando Hive. Esta característica permite que la aplicación muestre una advertencia y presente los últimos usuarios descargados cuando no hay conexión a internet.

## Desafíos Durante el Desarrollo

Durante el proceso de desarrollo, revisé y refiné mi enfoque para usar Hive al momento de almacenar datos descargados desde una API.
Me quedo pendiente la implementacion de test del bloc y el repositorio, desarrolle los test pero me encontre un error que me quedo pendiente resolver.

## Comenzando

Clonar el repositorio, ejecutar la app desde el main.dart en un emulador android/iOS.
