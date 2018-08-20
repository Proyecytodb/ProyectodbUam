use master;
go

--Creacion de db
create database Proyectodb 
on
(
    NAME = 'Expediente',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Proyectodb.mdf',
	SIZE = 1MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 5
)
log on
(
	NAME = 'Expediente_log',
	FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\Proyectodb.ldf',
	SIZE = 1MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 5
)
go

use Proyectodb;
go

--Creacion de Tabla Estados
create table Estado(
	IdEstado bit primary key,
	Descripcion nvarchar(50) not null default('No Disponible')
)
--Creacion de tablas Horario, Precio, Parqueo
create table RagoDias(
	IdRangoDias int primary key,
	Descripcion nvarchar(50) not null default('Domingo-Lunes')
)
create table Horario(
	IdHorario int primary key,
	Descripcion nvarchar(50) not null default('Sin descripcion'),
	HoraInicio time not null default('06:00'),
	HoraFin time not null default('06:00'),
	IdRangoDias int not null references RagoDias(IdRangoDias)
)
create table Precio(
	IdPrecio int primary key,
	Descripcion nvarchar(50) not null default('Entrada y Piscina'),
	Monto int not null default(5000)
)
create table UbicacionParqueo(
	IdUbicacionParqueo int primary key,
	UbicacionParqueo nvarchar(50) not null default('Sin Asignar')
)
create table Parqueo(
	IdParqueo int primary key,
	TipoParqueo nvarchar(50) not null default('Sin Asignar'),
	IdUbicacionParqueo int not null references UbicacionParqueo(IdUbicacionParqueo)
)

--crear tablas referente a la sala de eventos
create table ReqSalaEventos(
	IdReqSE int primary key,
	TipoReq nvarchar(50) not null default('Sin descripcion'),
	Cantidad nvarchar(50) not null default('Sin descripcion'),
	FechaPrestamo datetime not null default(''),
	FechaDevolucion datetime not null default('')
)
create table SalaEventos(
	IdSalaEventos int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReqSE int not null references ReqSalaEventos(IdReqSE),
	IdHorario int not null references Horario(IdHorario),
	numeroAsientos int not null default(0),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00')	
)

--crear tablas referente al mantenimiento de las 8 zonas
create table Requerimientos(
	IdReq int primary key,
	TipoReq nvarchar(50) not null default('Sin Requerimiento'),
	FechaRequerimientos datetime not null default(''),
	HoraRequerimientos time not null default('00:00'),
	Motivo nvarchar(50) not null default('Sin Requerimiento')
)

--crear tablas referente a las 8 zonas
create table CanchaBasketBall(
	IdCanchaBasketBall int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)	
)
create table Piscina(
	IdPiscina int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table Restaurante(
	IdRestaurante int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table CampoGolf(
	IdCampoGolf int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table CanchaTenis(
	IdCanchaTenis int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table CanchaFutbol(
	IdCanchaFutbol int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table Spa(
	IdSpa int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)
create table SalonBaile(
	IdSalonBaile int primary key,
	IdEstado bit references Estado(IdEstado),
	IdReq int not null references Requerimientos(IdReq),
	IdHorario int not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	Cliente int not null default(000000000)
)


--creacion de la tabla perfiles
create table Perfiles(
	IdPerfil int primary key,
	NombrePerfil nvarchar(50) not null default('Sin descripcion'),
	IdEstado bit references Estado(IdEstado),
	IdSalaEventos int not null references SalaEventos(IdSalaEventos),
	IdCanchaBasketBall int not null references CanchaBasketBall(IdCanchaBasketBall),
	IdPiscina int not null references Piscina(IdPiscina),
	IdRestaurante int not null references Restaurante(IdRestaurante),
	IdCampoGolf int not null references CampoGolf(IdCampoGolf),
	IdCanchaTenis int not null references CanchaTenis(IdCanchaTenis),
	IdCanchaFutbol int not null references CanchaFutbol(IdCanchaFutbol),
	IdSpa int not null references Spa(IdSpa),
	IdSalonBaile int not null references SalonBaile(IdSalonBaile),
	IdParqueo int not null references Parqueo(IdParqueo),
	IdPrecio int not null references Precio(IdPrecio)
)

--Creacion tabla Usuario
create table Usuario(
	ID int primary key,
	NombreUsuario nvarchar(50) not null,
	ApellidoUsuario nvarchar(50) not null,
	Estado bit default(0),
	IdHorario int not null references Horario(IdHorario),
	IdPerfil int not null references Perfiles(IdPerfil)
)