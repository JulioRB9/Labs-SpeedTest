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

-- Unio de dos tablas
SELECT * FROM Citas
INNER JOIN Clientes ON Clientes.ID = Citas.ClienteID;

-- LEFT
SELECT * FROM Citas
LEFT JOIN Clientes ON Clientes.ID = Citas.ClienteID;

-- RIGHT
SELECT * FROM Citas
RIGHT JOIN Clientes ON Clientes.ID = Citas.ClienteID;

-- Tabla PIVOTE
CREATE TABLE CitasServicios(
ID INT(11) AUTO_INCREMENT,
CitaID INT(11) NOT NULL,
ServiciosID INT(11) NOT NULL,
PRIMARY KEY (ID),
 KEY CitaID (citaID),
 CONSTRAINT Cita_FK
 FOREIGN KEY (CitaID)
 REFERENCES Citas (ID),
 
 KEY ServiciosID(ServiciosID),
 CONSTRAINT Servicios_FK
 FOREIGN KEY (ServiciosID)
 REFERENCES Servicios (ID)
 );
 
 SHOW TABLES;
 SELECT * FROM Citas;
 SELECT * FROM CitasServicios;
 SELECT * FROM Clientes;
 SELECT * FROM Servicios;
 
 DESCRIBE CitasServicios;
 DESCRIBE Servicios;

--  Insertando datos en CitasServicios
 INSERT INTO CitasServicios (CitaID, ServiciosID) VALUES (2, 8);
 INSERT INTO CitasServicios (CitaID, ServiciosID) VALUES (2, 3);
 INSERT INTO CitasServicios (CitaID, ServiciosID) VALUES (2, 4);
 
 -- Unios de tablas Pivotes
SELECT * FROM CitasServicios
LEFT JOIN Citas ON Citas.ID = CitasServicios.CitaID
LEFT JOIN Servicios ON Servicios.ID = CitasServicios.ServiciosID;


-- Multiples uniones de tablas con JOIN
SELECT * FROM CitasServicios
LEFT JOIN Citas ON Citas.ID = CitasServicios.CitasID
LEFT JOIN Clientes ON Citas.ClientesID = Clientes.ID
LEFT JOIN Servicios ON Servicios.ID = CitasServicios.ServiciosID;
