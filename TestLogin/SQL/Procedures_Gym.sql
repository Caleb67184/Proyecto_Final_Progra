--Procedimientos proyecto Final Gimnasio
use Gimnasio_Pro

create procedure consultaUsuarios
as
	begin
	select * from Reg_Usuarios
	end

create procedure BorrarUsuarios
@email varchar (30)
	as
	begin
	delete Reg_Usuarios where Email = @email
	end

create procedure IngresarUsuarios
@email varchar (30),
@clave varchar (30) = '',
@nombre varchar (50) = '',
@tipo varchar (50) = 'Regular'
	as
	begin
	insert into Reg_Usuarios(Email, Clave, Nombre, Tipo) values (@email, @clave, @nombre, @tipo)
	end

create procedure IngresarAdmin
@email varchar (30),
@clave varchar (30) = '',
@nombre varchar (50) = '',
@tipo varchar (50)
	as
	begin
	insert into Reg_Usuarios(Email, Clave, Nombre, Tipo) values (@email, @clave, @nombre, @tipo)
	end

create procedure ValidarUsuario
@email varchar (30),
@clave varchar (30)
as
begin
	select * from Reg_Usuarios where email =@email and clave=@clave
end

create procedure ModificarUsuario
@email varchar (30),
@clave varchar (30),
@nombre varchar (30),
@tipo varchar (30)
as
begin
	update Reg_Usuarios set email=@email, clave=@clave, nombre=@nombre,tipo=@tipo where email = @email
	end

create procedure AgregarPerfil
@telefono varchar (30),
@rutina int
as
begin
	insert into Usuarios (telefono, rutina) values (@telefono, @rutina)
end
----------------------------------------------------------------------------------------------------------
--Tabla Productos
create procedure select_Producto
@codigo int 
as
begin
select codigo_Producto, nombre_Producto, precio from Producto where codigo_Producto=@codigo
end

create procedure IngresarProducto
@nombre_Producto varchar (50),
@precio varchar (50)
as
begin
	insert into Producto (nombre_Producto, precio) values (@nombre_Producto, @precio)
	end

create procedure consultaProducto
as
begin
	select * from Producto
	end

create procedure BorrarProducto
@codigo_Producto int
as
begin
delete Producto where codigo_Producto = @codigo_Producto
end

create procedure ModificarProducto
@nombre_Producto varchar (50),
@precio varchar (50),
@codigo_Producto int
as
begin
	update Producto set nombre_Producto = @nombre_Producto, precio = @precio where codigo_Producto = @codigo_Producto
	end

-----------------------------------------------------------------------------------------------
--Tabla Provincia

create procedure IngresarProvincia
@nombre_Provincia varchar (50)
as
begin
	insert into Provincia (nombre_Provincia) values (@nombre_Provincia)
end

create procedure BorrarProvincia
@codigo_Provincia int
as
begin
	delete Provincia where codigo_Provincia = @codigo_Provincia
end

create procedure ModificarProvincia
@nombre_Provincia varchar (50),
@codigo_Provincia varchar (50)
as
begin
	update Provincia set nombre_Provincia = @nombre_Provincia where codigo_Provincia = @codigo_Provincia
end

create procedure consultaProvincia
as
begin
	select * from Provincia
end

-------------------------------------------------------------------------------------------------------
-- Tabla Cantón

create procedure IngresarCanton
@nombre_Canton varchar (50)
as
begin
	insert into Canton (nombre_Canton) values (@nombre_Canton)
end

create procedure BorrarCanton
@codigo_Canton int
as
begin
	delete Canton where codigo_Canton = @codigo_Canton
end

create procedure ModificarCanton
@nombre_Canton varchar (50),
@codigo_Canton int
as
begin
	update Canton set nombre_Canton = @nombre_Canton where codigo_Canton = @codigo_Canton
end

create procedure ConsultaCanton
as
begin
	select * from Canton
end
-------------------------------------------------------------------------------------------------------
-- Tabla Distrito

create procedure IngresarDistrito
@nombre_Distrito varchar (50)
as
begin
	insert into Distrito (nombre_Distrito) values (@nombre_Distrito)
end

create procedure BorrarDistrito
@codigo_Distrito int
as
begin
	delete Distrito where codigo_Distrito = @codigo_Distrito
end

create procedure ModificarDistrito
@codigo_Distrito int,
@nombre_Distrito varchar (50)
as
begin
	update Distrito set nombre_Distrito = @nombre_Distrito where codigo_Distrito = @codigo_Distrito
end

create procedure ConsultaDistrito
as
begin
	select * from Distrito
end

-------------------------------------------------------------------------------------------------------
--Facturación

create procedure selecProducto
@codigo_Producto int 
as 
 begin 
 select codigo_Producto, nombre_Producto, precio from producto where codigo_Producto = @codigo_Producto
 end

create procedure MaeFactura
 
  @cliente varchar(20),
  @total money
  as 

  begin
  DECLARE @FECHA datetime
  SET @fecha = GETDATE()
    insert into Mae_Factura (Fecha, Cliente, Total) values (@FECHA,@cliente,@total)
  
  end

 
  create procedure DetFactura

  @linea int,
  @codigo_Produc int,
  @cantidad int,
  @precio_unitario money
  as 

  begin
    Declare @nFac int
	set @nFac = (select top 1 nFactura from Mae_factura order by nFactura desc)
    insert into DET_Factura (nFac,linea,codigo_Produc,cantidad,precio_unitario) values (@nFac,@linea,@codigo_Produc,@cantidad,@precio_unitario)
  
  end

------------------------------------------------------------------------------------------------------------
-- Tabla Rutinas

create procedure IngresarRutina
@nombre_Rutina varchar (50)
as
begin
	insert into Rutinas (nombre_Rutina) values (@nombre_Rutina)
end

create procedure BorrarRutina
@codigo_Rutina int
as
begin
	delete Rutinas where codigo_Rutina = @codigo_Rutina
end

create procedure ModificarRutina
@codigo_Rutina int,
@nombre_Rutina varchar (50)
as
begin
	update Rutinas set nombre_Rutina = @nombre_Rutina where codigo_Rutina = @codigo_Rutina
end

create procedure ConsultaRutina
as
begin
	select * from Rutinas
end

