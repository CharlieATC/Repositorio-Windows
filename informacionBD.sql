
-- Tabla clientes

-- ID Cliente: ID_CLiente VARCHAR(50)
-- Nombre completo: Nombre_Completo VARCHAR(50)
-- Fecha de nacimiento: Fecha_Nacimiento DATE
-- DirecciOn: Direccion VARCHAR(50)
-- Telefono: Telefono VARCHAR (20)
-- Correo electronico: Correo_Electronico VARCHAR (50)
-- Grupo de clientes: Grupo_Cliente CHAR (1) // A - B - C - D - E

CREATE TABLE CLIENTES(
	ID_CLiente VARCHAR(50),
	Nombre_Completo VARCHAR(50),
	Fecha_Nacimiento DATE,
	Direccion VARCHAR(50),
	Telefono VARCHAR(20),
	Correo_Electronico VARCHAR(50),
	Grupo_Cliente CHAR(1)
);

-- Tabla Zonas

-- ID Pais: ID_Pais INT(4),
-- Zona de Venta: Zona_Venta VARCHAR(20),
-- Pais de Venta: Pais_Venta VARCHAR(30)

CREATE TABLE ZONAS(
	ID_Pais INT(4),
	Zona_Venta VARCHAR(20),
	Pais_Venta VARCHAR(30)
);

-- Tabla Productos

-- ID Producto: ID_Producto INT(2)
-- Tipo de Prodycto: Tipo_Producto VARCHAR(15)

CREATE TABLE Productos(
	ID_Producto INT(2),
	Tipo_Producto VARCHAR(15)
);

Tabla Productos

-- ID Pedido: ID_Pedido INT(10)
-- Fecha pedido: Fecha_Pedido DATE
-- Fecha envio: Fecha_Envio DATE
-- Unidades: Unidades INT(5)
-- Precio Unitario: Precio_Unitario VARCHAR(10)
-- Precio Total: Precio_Total VARCHAR(10)


CREATE TABLE PEDIDOS(
	ID_Pedido INT(10),
	Fecha_Pedido DATE,
	Fecha_Envio DATE,
	Unidades INT(5),
	Precio_Unitario VARCHAR(10),
	Precio_Total VARCHAR(10)
);


--Ejercicios de AND
select * from Pedidos where unidades >= 9000 AND ID_Pedido > 900000000;
select * from Pedidos where unidades >= 2000 AND ID_Pedido > 700000000;
select * from Pedidos where unidades >= 200 AND ID_Pedido > 400000000;
select * from clientes where Grupo_Cliente = 'D' AND ID_Cliente = 'C4645';
select * from clientes where Grupo_Cliente = 'A' AND ID_Cliente = 'C2421';

--Ejercicios de OR
select * from clientes where Fecha_Nacimiento = '1990-12-01' OR Telefono = '(389) 210-4301';
select * from Pedidos where unidades <= 500 OR ID_Pedido > 980000000;
select * from Pedidos where unidades >= 9500 OR ID_Pedido > 980000000;
select * from clientes where Fecha_Nacimiento = '1998-04-05' OR ID_Cliente = 'C1498';
select * from Pedidos where unidades >= 9000 OR ID_Pedido > 900000000;

--Ejercicios combinados AND y OR
select * from clientes where (Fecha_Nacimiento = '1993-09-28' AND Telefono = '(374) 637-9848') OR Fecha_Nacimiento = '1999-12-20';
select * from clientes where (Nombre_Completo = 'Eli Montero' AND Correo_Electronico = 'gamma@live.com') OR Fecha_Nacimiento = '1990-12-01';













