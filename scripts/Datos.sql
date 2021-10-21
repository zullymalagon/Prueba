-- Insertar registros a la tabla categoria
INSERT INTO categoria
          (nombre)
          VALUES
          ('benjamin'),('alevin'),('infantil'),('cadete'),('juvenil');

-- Insertar registros a la tabla entrenador
INSERT INTO entrenador
          VALUES
          (1069453746,'Andres','Diaz',8354725,'adiaz@gmail.com'),
          (73427598,'Mauricio','Lopez',8974536,'mlopez@outlook.com'),
          (4264963,'Fernando','Gonzales',7382673,'fgonzalez@gmail.com'),
          (51745962,'Javier','Rojas',4117497,'jrojas@gmail.com'),
          (1022654833,'Luis','Ramirez',8453826,'lramirez@outlook.com');

-- Insertar registros a la tabla categoria_entrenador
INSERT INTO categoria_entrenador
          VALUES
          (1,1069453746,'1','14:00:00'),
          (1,73427598,'3','14:00:00'),
          (2,1069453746,'2','14:00:00'),
          (2,51745962,'5','14:00:00'),
          (3,73427598,'2','16:00:00'),
          (3,51745962,'4','14:00:00'),
          (4,4264963,'1','16:00:00'),
          (4,1022654833,'4','16:00:00'),
          (5,4264963,'3','16:00:00'),          
          (5,1022654833,'5','16:00:00');

-- Insertar registros a la tabla jugador
INSERT INTO jugador
          VALUES
          (940805,'Camilo','Rodriguez',1,'camilorodriguez@gmail.com',7483526,'calle 25 # 7 - 67'),
          (930405,'Juan','Sanchez',1,'juansanchez@gmail.com',3758687,'calle 38 # 64 - 23'),
          (990603,'Tomas','Alvarez',2,'tomasalvarez@gmail.com',8563477,'carrera 6 # 78 - 02'),
          (102265,'Sebastian','Rincon',2,'sebastianrincon@gmail.com',8595634,'calle 17 # 4 - 15'),
          (129783,'Martin','Florez',3,'maartinflorez@gmail.com',7658455,'diagonal 5 # 37 - 18'),
          (336782,'Alan','Beltran',3,'alanbeltran@gmail.com',4634643,'carrera 2 # 21 - 25'),
          (241978,'Emilio','Pineda',4,'emiliopineda@gmail.com',4367564,'carrera 13 # 5 - 22'),
          (428677,'Nicolas','Vivas',4,'nicolasvivas@gmail.com',6485637,'calle 8 # 6 - 09');



-- Consultas

SELECT id, nombre, apellido, telefono FROM entrenador
UNION
SELECT id,nombre,apellido, telefono FROM jugador
ORDER BY nombre



SELECT categoria.nombre as Categoria,jugador.id, jugador.nombre, jugador.apellido
FROM categoria
    LEFT JOIN jugador ON jugador.id_categoria = categoria.id



SELECT categoria.nombre as Categoria,jugador.id, jugador.nombre, jugador.apellido
FROM categoria
    INNER JOIN jugador ON jugador.id_categoria = categoria.id




SELECT categoria.nombre as Categoria, CONCAT(entrenador.nombre," ", entrenador.apellido) AS Entrenador,
CASE dia
    WHEN 1 THEN "Lunes"
    WHEN 2 THEN "Martes"
    WHEN 3 THEN "Miercoles"
    WHEN 4 THEN "Jueves"
    WHEN 5 THEN "Viernes"
END as dia, hora
FROM categoria_entrenador
JOIN categoria ON categoria.id = categoria_entrenador.id_categoria
JOIN entrenador ON entrenador.id  = categoria_entrenador.id_entrenador