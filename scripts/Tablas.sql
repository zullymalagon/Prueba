CREATE DATABASE escuela;
USE escuela;

-- Estructura de la tabla categoria
CREATE TABLE categoria (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(50) NOT NULL,
  PRIMARY KEY (id)
);

-- Estructura de la tabla entrenador
CREATE TABLE entrenador (
  id int(10) NOT NULL,
  nombre varchar(100) NOT NULL,
  apellido varchar(100) NOT NULL,
  telefono int(10) NOT NULL,
  correo varchar(320) NOT NULL,
  PRIMARY KEY (id)
);

-- Estructura de la tabla categoria_entrenador
CREATE TABLE categoria_entrenador (
  id_categoria int(11) NOT NULL,
  id_entrenador int(10) NOT NULL,
  dia varchar(9) NOT NULL,
  hora time NOT NULL,
  CONSTRAINT categoria_entrenador_fk_1 FOREIGN KEY (id_categoria) REFERENCES categoria (id),
  CONSTRAINT categoria_entrenador_fk_2 FOREIGN KEY (id_entrenador) REFERENCES entrenador (id)
);

-- Estructura de la tabla jugador
CREATE TABLE jugador (
  id int(10) NOT NULL,
  nombre varchar(100) NOT NULL,
  apellido varchar(100) NOT NULL,
  id_categoria int(11) NOT NULL,
  correo varchar(320) NOT NULL,
  telefono int(10) NOT NULL,
  direccion varchar(200) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT jugador_fk_1 FOREIGN KEY (id_categoria) REFERENCES categoria (id)
);
