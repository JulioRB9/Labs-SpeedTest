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
id	INT(11) NOT NULL AUTO_INCREMENT,
nombre VARCHAR(60) NOT NULL,
precio DECIMAL(6,2) NOT NULL,
PRIMARY KEY (id)
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

-- Insertar varios registros 
INSERT INTO Servicios(nombre,precio)
VALUES(
"Pintura de pelo de Caballeros",350),
("Cita para dientista", 320);

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

-- Mostra registro con limitaciones de acuerdo con las especificacion que le encomentamos
SELECT id,nombre,precio FROM Servicios ORDER BY nombre ASC LIMIT 2;
SELECT id,nombre,precio FROM Servicios ORDER BY id DESC LIMIT 3;

-- Mostra registro en especificos
SELECT id,nombre,precio FROM Servicios WHERE id = 2;
SELECT id,nombre,precio FROM Servicios WHERE nombre="Pintura de pelo de damas";
SELECT id,nombre,precio FROM Servicios WHERE precio>80;
