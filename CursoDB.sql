--  Monstrar datos
SHOW DATABASES;

-- Crear Base de datos
CREATE DATABASE appSalon;

-- Pones en uso
USE appSalon;

-- Crear Tablas en nuetra base de datos Mas Comunes
-- Tipo de datos
-- INT
-- TINYINT
-- SMALLINT
-- MEDIUMINT
-- BIGINT

-- Tipo de datos con decimales
-- FLOANT
-- DOUBLE
-- DECIMAL

-- Texto y Datos Binarios
-- VARCHAR
-- CHAR
-- TEXT
-- ENUM
-- BLOG

-- Fecha y Hora
-- DATE     (AAAA-MM-DD)
-- TIME     (hh:mm:ss)
-- DATETIME (AAAA-MM-DD hh:mm:ss)
-- TIMESTAMP(AAAA-MM-DD hh:mm:ss)
-- YEAR     (AAAA)
CREATE TABLE Servicios(
ID	INT(11) NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(60) NOT NULL,
precio DECIMAL(6,2) NOT NULL,
PRIMARY KEY (ID)
);

-- Mostrar tabla
SHOW TABLES;

-- Descripcion o Propiedades de la tabla
DESCRIBE Servicios;

-- : CRUD ::: Operacion que se debe dominar
-- Create
-- Read
-- Update
-- Delete

-- Insertar registro 01
INSERT INTO Servicios(nombre,precio)
VALUES(
"Corte de Cabello de adulto",80);

-- Insertar registro 02
INSERT INTO Servicios(nombre,precio)
VALUES(
"Pintura de pelo de damas",350);

INSERT INTO Servicios(nombre,precio)
VALUES(
"Cosmetiqueria",50);

-- Insertar varios registros 
INSERT INTO Servicios(nombre,precio)
VALUES(
"Pintura de pelo de Caballeros",350),
("Cita para dientista", 320);

INSERT INTO Servicios ( nombre, precio ) VALUES
        ('Corte de Cabello Niño', 60),
        ('Corte de Cabello Hombre', 80),
        ('Corte de Barba', 60),
        ('Peinado Mujer', 80),
        ('Peinado Hombre', 60),
        ('Tinte',300),
        ('Uñas', 400),
        ('Lavado de Cabello', 50),
        ('Tratamiento Capilar', 150);

-- Mostra los datos de la tabla de servicios 
SELECT * FROM Servicios;

-- Mostrar registro en especifico
SELECT nombre FROM Servicios;
SELECT nombre,precio FROM Servicios;
SELECT id,nombre FROM Servicios;
SELECT id FROM Servicios;
SELECT precio FROM Servicios;

-- Ordenar registro
SELECT id,nombre,precio FROM Servicios ORDER BY precio;
SELECT id,nombre,precio FROM Servicios ORDER BY precio DESC;
SELECT id,nombre,precio FROM Servicios ORDER BY nombre ASC;

-- Mostrar registro con limitaciones de acuerdo con las especificacion que le encomentamos
SELECT id,nombre,precio FROM Servicios ORDER BY nombre ASC LIMIT 2;
SELECT id,nombre,precio FROM Servicios ORDER BY id DESC LIMIT 3;

-- Mostrar registro en especifico
SELECT id,nombre,precio FROM Servicios WHERE id = 2;
SELECT id,nombre,precio FROM Servicios WHERE nombre = "Pintura de pelo de damas";
SELECT id,nombre,precio FROM Servicios WHERE precio > 80;

-- Actualizar registro de la tabla tomando en cuenta el ID es muy importante
UPDATE Servicios SET precio = 100 WHERE id = 3;
UPDATE Servicios SET nombre = "psicologia", precio = 500 WHERE id = 4;

-- Eliminar registro en la tabla pasando los parametros como referencia el ID.
DELETE FROM Servicios WHERE id = 5;

-- Agregar nueva Columna en la tabla
ALTER TABLE Servicios ADD Descripcion VARCHAR(100) NOT NULL;

-- Modificar nombre de la columna en la tabla
ALTER TABLE Servicios CHANGE Descripcion nuevoNombre VARCHAR(50) NOT NULL;

-- Eliminar columna de una tabla
ALTER TABLE Servicios DROP COLUMN nuevoNombre;

-- Eliminar tabla
DROP TABLE Servicios;

-- Agregar nueva tabla
CREATE TABLE Reservaciones (
 ID INT(11) NOT NULL AUTO_INCREMENT,
 Nombre VARCHAR(50) NOT NULL,
 Apellido VARCHAR(50) NOT NULL,
 Hora TIME DEFAULT NULL,
 Fecha DATE DEFAULT NULL, 
 Servicios VARCHAR(255) NOT NULL,
 PRIMARY KEY (ID)
 );
 
INSERT INTO Reservaciones (Nombre, Apellido, Hora, Fecha, Servicios) VALUES
        ('Juan', 'De la torre', '10:30:00', '2021-06-28', 'Corte de Cabello Adulto, Corte de Barba' ),
        ('Antonio', 'Hernandez', '14:00:00', '2021-07-30', 'Corte de Cabello Niño'),
        ('Pedro', 'Juarez', '20:00:00', '2021-06-25', 'Corte de Cabello Adulto'),
        ('Mireya', 'Perez', '19:00:00', '2021-06-25', 'Peinado Mujer'),
        ('Jose', 'Castillo', '14:00:00', '2021-07-30', 'Peinado Hombre'),
        ('Maria', 'Diaz', '14:30:00', '2021-06-25', 'Tinte'),
        ('Clara', 'Duran', '10:00:00', '2021-07-01', 'Uñas, Tinte, Corte de Cabello Mujer'),
        ('Miriam', 'Ibañez', '09:00:00', '2021-07-01', 'Tinte'),
        ('Samuel', 'Reyes', '10:00:00', '2021-07-02', 'Tratamiento Capilar'),
        ('Joaquin', 'Muñoz', '19:00:00', '2021-06-28', 'Tratamiento Capilar'),
        ('Julia', 'Lopez', '08:00:00', '2021-06-25', 'Tinte'),
        ('Carmen', 'Ruiz', '20:00:00', '2021-07-01', 'Uñas'),
        ('Isaac', 'Sala', '09:00:00', '2021-07-30', 'Corte de Cabello Adulto'),
        ('Ana', 'Preciado', '14:30:00', '2021-06-28', 'Corte de Cabello Mujer'),
        ('Sergio', 'Iglesias', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
        ('Aina', 'Acosta', '14:00:00', '2021-07-30', 'Uñas'),
        ('Carlos', 'Ortiz', '20:00:00', '2021-06-25', 'Corte de Cabello Niño'),
        ('Roberto', 'Serrano', '10:00:00', '2021-07-30', 'Corte de Cabello Niño'),
        ('Carlota', 'Perez', '14:00:00', '2021-07-01', 'Uñas'),
        ('Ana Maria', 'Igleias', '14:00:00', '2021-07-02', 'Uñas, Tinte'),
        ('Jaime', 'Jimenez', '14:00:00', '2021-07-01', 'Corte de Cabello Niño'),
        ('Roberto', 'Torres', '10:00:00', '2021-07-02', 'Corte de Cabello Adulto'),
        ('Juan', 'Cano', '09:00:00', '2021-07-02', 'Corte de Cabello Niño'),
        ('Santiago', 'Hernandez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
        ('Berta', 'Gomez', '09:00:00', '2021-07-01', 'Uñas'),
        ('Miriam', 'Dominguez', '19:00:00', '2021-06-28', 'Corte de Cabello Niño'),
        ('Antonio', 'Castro', '14:30:00', '2021-07-02', 'Corte de Cabello Adulti'),
        ('Hugo', 'Alonso', '09:00:00', '2021-06-28', 'Corte de Barba'),
        ('Victoria', 'Perez', '10:00:00', '2021-07-02', 'Uñas, Tinte'),
        ('Jimena', 'Leon', '10:30:00', '2021-07-30', 'Uñas, Corte de Cabello Mujer'),
        ('Raquel' ,'Peña', '20:30:00', '2021-06-25', 'Corte de Cabello Mujer');

-- Mostrar registro de tabla Reservacion
SELECT * FROM Reservaciones;

-- Seleccion servicio por Precio
SELECT * FROM Servicios WHERE precio > 80;
SELECT * FROM Servicios WHERE precio >= 80;
SELECT * FROM Servicios WHERE precio < 80;
SELECT * FROM Servicios WHERE precio <= 80;

-- Mostrar todo el precio del servio en un rango en especifico
SELECT * FROM Servicios WHERE precio BETWEEN 60 AND 80;

-- Funciones Agregadoras
SELECT COUNT(ID), Fecha 
FROM Reservaciones 
GROUP BY Fecha
ORDER BY COUNT(ID) DESC;

-- Funcion agregadora mas alias
SELECT SUM(precio) AS TotalServicios FROM Servicios;
SELECT MIN(precio) AS PrecioMenor FROM Servicios;
SELECT MAX(precio) AS PrecioMayor FROM Servicios;

-- Sentencia para buscar en SQl
SELECT * FROM Servicios WHERE nombre LIKE 'Corte%';
SELECT * FROM Servicios WHERE nombre LIKE '%Corte';
SELECT * FROM Servicios WHERE nombre LIKE '%Cabello%';
SELECT * FROM Servicios WHERE nombre LIKE '%Lavado%';

-- Concatenar Nombres en SQL
SELECT CONCAT(nombre,' ',apellido) AS NombreCompleto FROM Reservaciones;

-- Concatenar Nombre y apellido buscando una persona en especifico
SELECT * FROM Reservaciones 
WHERE CONCAT(nombre," ",apellido) LIKE '%Ana Preciado%';

-- Concatenar + Alias + Busqueda 
SELECT  Hora, Fecha, CONCAT(nombre," ",apellido) AS 'Nombre completo'
FROM Reservaciones
WHERE CONCAT(nombre," ",apellido)
LIKE '%Ana Preciado%';

-- Resvisar pro Multiples Condiciones
SELECT * FROM Reservaciones WHERE ID = 3;

-- Operador AND
SELECT * FROM Reservaciones WHERE Fecha = "2021-06-28" AND ID = 1 AND nombre = "Juan";