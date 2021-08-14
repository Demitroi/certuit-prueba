### Certuit Prueba Técnica

Repositorio de la prueba técnica de Certuit de Sergio Contreras.

#### Planeación

En la siguiente tabla se muestran las actividades, tiempo estimado y utilizado en horas.

| Actividad                            | Tiempo estimado (hrs) | Tiempo utilizado (hrs) |
| ------------------------------------ | --------------------- | ---------------------- |
| Lectura y comprensión del documento. | 2.5                   | 3                      |
| Diseñar las pantallas.               | 4                     |                        |


#### Lectura y comprensión del documento.

El objetivo del sistema es generar presupuestos de viajes, la especificación de caso de uso describe un sistema de un solo actor, el Administrador. Este debe autenticarse por usuario y contraseña en un formulario de inicio de sesión, ya dentro, se le mostrarán las opciones de catálogos de rutas, casetas, unidades, precios de combustible, generación de presupuesto y reporte.

En el flujo el actor debe ingresar a la opción generar presupuesto, en el cual se le muestra la información de tipo de viaje, ruta de ida, ruta de regreso, fecha y horas de partida y regreso (si aplica). En base a las rutas capturadas, el sistema indicará los precios de las casetas por cada ruta, después se le solicita al actor capturar la cantidad de pasajeros, luego se habilita la opción de seleccionar transporte, cada unidad tiene una capacidad limitada de viajeros, por lo que se permite seleccionar tantas unidades hasta que no quede ninguno fuera.

Una vez completado el formulario, el sistema hace los cálculos de acuerdo a las reglas de negocio, genera la vista previa que incluye los datos generales de viaje, itinerario, costos de combustible, peajes, viáticos y costo total.
