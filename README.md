# Presentacion de prueba tecnica

_Prueba tecnica para el puesto de desarrollador_


### Primera parte: Bases de datos


_Los archivos tablas.sql y datos.sql se encuentran dentro de la carpeta scripts_

_Desde el manejador de bases de datos importe el archivo tablas.php para crear la base de datos y sus tablas. Se presenta la estructura de una base de datos para una escuela deportiva, las tablas creadas corresponden a la informacion de jugadores, entrenadores y categorias._

_En el archivo datos.sql se encuentran las sentencias que se deben ejecutar para insertar los datos en las tablas. Adicionalmente se encuentran las consultas donde se hace uso de UNION, JOIN y CASE._

### Segunda parte: Interfaz de Programacion de Aplicacion.

_Guarde los archivos utils.php y apiRest.php en el servidor_

_Desde un REST Client realizamos las pruebas_

_En el campo URL colocamos la direccion donde se encuentra el archivo apiRest.php que es donde se encunetran las operaciones para la tabla 'jugador' (Ej: http://localhost/prueba/apiRest.php)_

_En el archivo utils.php puede modificar la informacion del host, usuario y contraseña para conectarse a la base de datos (linea 5)_

_Para listar todos los datos de la tabla, utilizamos el metodo GET_

_En caso de querer buscar un jugador por su ID utilizamos el metodo GET y agregarmos el parametro 'id' y como valor colocamos el numero de documento que queremos buscar_

_Para eliminar un jugador utilizamos el metodo DELETE y agregarmos el parametro 'id' y como valor colocamos el numero de documento del jugador que vamos a eliminar_

_Para insertar un jugador utilizamos el metodo POST y agregarmos los parametros 'id', 'nombre', 'apellido', 'id_categoria', 'correo', 'telefono' y 'direccion', con los valores correspondientes._

_Para modificar la informacion un jugador utilizamos el metodo PUT y agregarmos los parametros segun el campo que queramos modificar ('id', 'nombre', 'apellido', 'id_categoria', 'correo', 'telefono' y/o 'direccion'), con los valores correspondientes._



## Autor

* **Zully Katerin Malagon**