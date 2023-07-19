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