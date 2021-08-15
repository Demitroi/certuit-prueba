### Certuit Prueba Técnica

Repositorio de la prueba técnica de Certuit de Sergio Contreras.

#### Planeación

En la siguiente tabla se muestran las actividades, tiempo estimado y utilizado en horas.

| Actividad                            | Tiempo estimado (hrs) | Tiempo utilizado (hrs) |
| ------------------------------------ | --------------------- | ---------------------- |
| Lectura y comprensión del documento. | 2.5                   | 3                      |
| Diseñar las pantallas.               | 4                     | 6.5                    |
| Diseñar esquema de base de datos.    | 5                     | 4.5                    |
| Diseñar api rest.                    | 2                     |                        |


#### Lectura y comprensión del documento.

El objetivo del sistema es generar presupuestos de viajes, la especificación de caso de uso describe un sistema de un solo actor, el Administrador. Este debe autenticarse por usuario y contraseña en un formulario de inicio de sesión, ya dentro, se le mostrarán las opciones de catálogos de rutas, casetas, unidades, precios de combustible, generación de presupuesto y reportes.

En el flujo, el actor debe ingresar a la opción generar presupuesto, en el cual se le muestra la información de tipo de viaje, ruta de ida, ruta de regreso, fecha y horas de partida y regreso (si aplica). En base a las rutas capturadas, el sistema indicará los precios de las casetas por cada ruta, después se le solicita al actor capturar la cantidad de pasajeros, luego se habilita la opción de seleccionar transporte, cada unidad tiene una capacidad limitada de viajeros, por lo que se permite seleccionar tantas unidades hasta que no quede ninguno fuera.

Una vez completado el formulario, el sistema hace los cálculos de acuerdo a las reglas de negocio, genera la vista previa que incluye los datos generales de viaje, itinerario, costos de combustible, peajes, viáticos y costo total.

#### Diseñar las pantallas (mockups).

Para tener una visión mas clara del sistema, el siguiente paso es maquetar, para esto se utilizo la app de [Figma](https://www.figma.com) y el editable se puede [descargar aquí](mockups/editable.fig).

A continuación se muestran las pantallas y su descripción.

**Login:** El actor ingresa usuario y contraseña para autentificarse en el sistema.

![Login](mockups/Login.png)

**Login Fallido:** Sí la autenticación falla, se le muestra que el usuario y contraseña son inválidos.

![Login Fallido](mockups/Login%20Fallido.png)

**Dashboard:** Es la pantalla donde se redirige al usuario después de un login exitoso.

![Dashboard](mockups/Dashboard.png)

Los viajes pueden ser de una dirección o redondos, se crearon dos pantallas para estas situaciones.

**Generar Presupuesto de una Dirección:** Captura los datos de la ruta de ida.

![Generar Prespuesto Una direccion](mockups/Generar%20Prespuesto%20Una%20direccion.png)

**Generar Presupuesto de Viaje Redondo:** Captura los datos de las rutas de ida y vuelta.

![Generar Prespuesto Viaje Redondo](mockups/Generar%20Prespuesto%20Viaje%20Redondo.png)

**Resumen de Rutas de Viaje Redondo:** Muestra un resumen de las rutas de ida y vuelta, casetas y sus precios (sí aplica).

![Resumen de Rutas Viaje Redondo](mockups/Resumen%20de%20Rutas%20Viaje%20Redondo.png )

**Resumen de Rutas Expandido:** Desglosa los precios de los peajes para las distintas unidades de transporte.

![Resumen de Rutas Viaje Redondo Expandido](mockups/Resumen%20de%20Rutas%20Viaje%20Redondo%20Expandido.png)

**Capturar Número de Pasajeros:** Ingresa el número de pasajeros del viaje.

![Capturar Número de pasajeros](mockups/Capturar%20Número%20de%20pasajeros.png)

**Seleccionar Transporte:** Permite indicar que unidades de transporte del catálogo se van a utilizar para el viaje.

![Seleccionar Transporte](mockups/Seleccionar%20Transporte.png)

**Seleccionar Transporte Completado:** Ejemplifica las unidades asignadas a un viaje sin que nadie se quede fuera.

![Seleccionar Transporte Completado](mockups/Seleccionar%20Transporte%20Completado.png)

**Vista Previa Presupuesto:** Presenta los datos del presupuesto de viaje completados y lo guarda.

![Vista Previa Presupuesto](mockups/Vista%20Previa%20Presupuesto.png)

#### Diseñar esquema de base de datos.

El esquema define la forma lógica en la que almacena la información del sistema, a continuación se muestran las relaciones de las tablas y su descripción. También se ha utilizado [Figma](https://www.figma.com) y el editable se puede [descargar aquí](db_schema/editable.fig).

**Catálogo de Usuarios:** Almacena los usuarios del sistema, el historial de accesos y hay una tabla adicional de configuraciones para definir el salario mínimo.

![Usuarios](db_schema/Usuarios.png)

**Presupuestos:** Historial de presupuestos generados, contiene el tipo de viaje, las rutas, número de pasajeros, costos, y las fechas de ida y vuelta, unidades de transporte utilizadas y el itinerario.

![Presupuestos](db_schema/Presupuestos.png)

**Catálogo de Rutas:** Son las rutas disponibles para los presupuestos de viaje, se pueden filtrar por municipio y tiene un nombre. Están relacionados a sus destinos que tienen nombre, kilómetros, tiempo en minutos. Los destinos pueden o no tener casetas, estas tienen un nombre y tarifas para cada tipo de transporte.

![Rutas](db_schema/Rutas.png)

**Catálogo de Unidades de Transporte:** Vehículos designados para el transporte de viajeros, sus datos incluyen su nombre, placas, tipo de transporte, tipo de combustible y la capacidad de pasajeros. Estos últimos están relacionados a la tabla de combustibles, la cual contiene su nombre y el precio por litro.

![Unidades de Transporte](db_schema/Unidades%20de%20Transporte.png)
