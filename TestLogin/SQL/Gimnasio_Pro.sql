create database Gimnasio_Pro

use Gimnasio_Pro

-- Tabla para login
create table Reg_Usuarios
(
	Email varchar (30) not null,
	Clave varchar (30) not null,
	Nombre varchar (50) unique,
	Tipo varchar (50),
	constraint PK_Email primary key (Email)
)

select * from Producto

--Para poder entrar con un usuario admin
insert into Reg_Usuarios (Email, Clave, Nombre, Tipo) values('Maria@uh.cr','333','Maria','Administrador')

create table Usuarios
(
	codigo_Cliente int identity (1,1) primary key,
	nombre_Cliente varchar (50),
	telefono varchar (50),
	rutina int,
	constraint FK_nombre_Rutina foreign key (rutina) references Rutinas (codigo_Rutina),
	constraint FK_nombre_Cliente foreign key (nombre_Cliente) references Reg_Usuarios (Nombre)
)

create table Mae_Factura
(
	codigoC int,
	nFactura int identity (1,1) primary key,
	Cliente varchar (50),
	Total varchar (100),
	IV_Total varchar (100),
	Fecha date,
	constraint FK_codigo_Cliente foreign key (codigoC) references Usuarios (codigo_Cliente)
)

create table Producto
(
	codigo_Producto int identity (1,1) primary key,
	nombre_Producto nvarchar (50),
	precio int
)

insert into Producto (nombre_Producto, precio) values ('vincha', '5000'),('camiseta','10000')

create table Provincia
(
	codigo_Provincia int identity (1,1) primary key,
	nombre_Provincia nvarchar (50)
)
create table Canton
(
	codigoP int,
	codigo_Canton int identity (1,1) primary key,
	nombre_Canton nvarchar (50),
	constraint FK_codigo_Provincia foreign key (codigoP) references Provincia (codigo_Provincia)
)

create table Distrito
(
	codigoCa int,
	codigo_Distrito int identity (1,1) primary key,
	nombre_Distrito nvarchar (50),
	constraint FK_codigo_Canton foreign key (codigoCa) references Canton (codigo_Canton)
)

create table Direcciones 
(
	codigo_Direcciones int identity (1,1) primary key,
	codigoC int,
	codigoP int,
	codigoCa int,
	codigoD int,
	comentarios varchar (50)
	constraint FK_codigoCliente foreign key (codigoC) references Usuarios (codigo_Cliente),
	constraint FK_codigoProvincia foreign key (codigoP) references Provincia (codigo_Provincia),
	constraint FK_codigoCanton foreign key (codigoCa) references Canton (codigo_Canton),
	constraint FK_codigoDistrito foreign key (codigoD) references Distrito (codigo_Distrito)
)

create table DET_Factura
(
	linea int,
	codigo_Factura int identity (1,1) primary key,
	nFac int,
	codigo_Produc int,
	constraint FK_codigo_Producto foreign key (codigo_Produc) references Producto (codigo_Producto),
	cantidad int,
	precio_unitario int,
	IV varchar (50)
)

create table Rutinas
(
	codigo_Rutina int identity (1,1) primary key,
	nombre_Rutina varchar (50),
)

