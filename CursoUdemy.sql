-- Nueva Base de datos
SHOW DATABASES;

CREATE DATABASE CursoUdemy;

USE CursoUdemy;

SHOW TABLES;

CREATE TABLE Clientes(
ID INT(11) NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(60) NOT NULL,
Apellido VARCHAR(60) NOT NULL,
Telefono VARCHAR(10) NOT NULL,
Email VARCHAR(30) NOT NULL UNIQUE,
PRIMARY KEY(ID)
);
DESCRIBE Clientes;

CREATE TABLE Servicios(
ID	INT(11) NOT NULL AUTO_INCREMENT,
Nombre VARCHAR(60) NOT NULL,
precio DECIMAL(6,2) NOT NULL,
PRIMARY KEY (ID)
);

-- Creando Relacion de DOS TABLAS
CREATE TABLE Citas(
ID INT(11) NOT NULL AUTO_INCREMENT,
Fecha DATE NOT NULL,
Hora TIME NOT NULL,
ClienteID INT(11) NOT NULL,
PRIMARY KEY(ID),
KEY ClienteID (ClienteID),
CONSTRAINT Cliente_FK
FOREIGN KEY (ClienteID)
REFERENCES Clientes(ID)
);

DESCRIBE Servicios;

INSERT INTO Clientes(Nombre, Apellido, Telefono, Email) VALUES
("Julio", "Rivera", "1065464153","Correo@gmail.com");

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
        
INSERT INTO Citas( Fecha, Hora, ClienteID) VALUES
('2023-07-25','12:42:30',1);

SELECT * FROM Clientes;
SELECT * FROM Servicios;
SELECT * FROM Citas;