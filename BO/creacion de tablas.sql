CREATE DATABASE tiendagenerica2;
use tiendagenerica2;
CREATE TABLE usuarios(
cedula_usuario BIGINT PRIMARY KEY,
email_usuario VARCHAR(255) NOT NULL,
nombre_usuario VARCHAR(255) NOT NULL,
password VARCHAR(255)NOT NULL,
usuario VARCHAR(255) NOT NULL);
CREATE TABLE clientes(
cedula_cliente BIGINT PRIMARY KEY,
direccion_cliente VARCHAR(255) NOT NULL,
nombre_cliente VARCHAR(255) NOT NULL,
telefono_cliente VARCHAR(255)NOT NULL,
correo_cliente VARCHAR(255) NOT NULL);

INSERT INTO usuarios VALUES(1022,'@ubosque','Diego Rodriguez','admin123456','admininicial');
INSERT INTO usuarios VALUES(1023,'@ubosquedd','Diego Rodriguez','pass','user');
INSERT INTO clientes VALUES(1022,'calle falsa','Diego Rodriguez','4654656','@cliente1');
INSERT INTO clientes VALUES(1023,'calle falsa2','Diego Rodriguez','65656','@cliente2');