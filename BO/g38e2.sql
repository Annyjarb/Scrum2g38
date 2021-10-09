use g38e2;
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

CREATE TABLE proveedores(
nit_proveedor BIGINT PRIMARY KEY,
nombre_proveedor VARCHAR(255) NOT NULL,
direccion_proveedor VARCHAR(255) NOT NULL,
telefono_proveedor VARCHAR(255)NOT NULL,
ciudad_proveedor VARCHAR(255) NOT NULL);


INSERT INTO proveedores VALUES(1022,'ecsito','calle1','4654656','bogota');
INSERT INTO proveedores VALUES(1023,'gumbo','calle2','65656','medellin');

create table productos(
codigo_producto BIGINT PRIMARY KEY,
iva_compra DOUBLE NOT NULL,
nit_proveedor BIGINT NOT NULL,
nombre_producto VARCHAR(255) NOT NULL,
precio_compra DOUBLE NOT NULL,
precio_venta DOUBLE NOT NULL,
FOREIGN KEY (nit_proveedor) REFERENCES proveedores(nit_proveedor)
);
create table ventas(
consecutivo BIGINT PRIMARY KEY,
cedula_cliente BIGINT(20),
valor_total bigint(20),
valor_iva bigint(20),
valor_mas_iva bigint (20),

FOREIGN KEY (cedula_cliente) REFERENCES clientes(cedula_cliente)
);
create table detalle_ventas(
cod_detalle BIGINT PRIMARY KEY,
codigo_producto BIGINT(20),
cantidad  int(11),
precio_venta DOUBLE,
valor_totalp double,
consecutivo BIGINT(20),

FOREIGN KEY (codigo_producto) REFERENCES productos(codigo_producto),
FOREIGN KEY (consecutivo) REFERENCES ventas(consecutivo)

);
