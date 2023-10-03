DROP TABLE IF EXISTS DOMICILIOS;
CREATE TABLE DOMICILIOS (
ID INT AUTO_INCREMENT PRIMARY KEY,
CALLE VARCHAR(100),
NUMERO VARCHAR (20),
LOCALIDAD VARCHAR (20),
PROVINCIA VARCHAR(20));

DROP TABLE IF EXISTS PACIENTES;
CREATE TABLE PACIENTES (
ID INT AUTO_INCREMENT PRIMARY KEY,
APELLIDO VARCHAR (100),
NOMBRE VARCHAR (100),
DOCUMENTO VARCHAR (100),
FECHA_INGRESO DATE,
DOMICILIO_ID INT,
EMAIL VARCHAR(100));

INSERT INTO DOMICILIOS (CALLE, NUMERO, LOCALIDAD, PROVINCIA) VALUE ('calle a','418','Salta Capital','Salta');
INSERT INTO PACIENTES (APELLIDO, NOMBRE, DOCUMENTO, FECHA_INGRESO, DOMICILIO_ID, EMAIL) VALUE
('Calvo','Camila','38795558','2023-03-16',1,'cc@gmail.com');