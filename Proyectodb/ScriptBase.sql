use master;
go

--Creacion de db
create database Proyectodb 
on
(
    NAME = 'Expediente',
	FILENAME = '\Proyectodb.mdf',
	SIZE = 1MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 5
)
log on
(
	NAME = 'Expediente_log',
	FILENAME = 'Proyectodb.ldf',
	SIZE = 1MB,
	MAXSIZE = 10MB,
	FILEGROWTH = 5
)
go

--crear tablas referente a las 8 zonas
use Proyectodb;
go

create table CanchaBasketBall(
	IdCanchaBasketBall int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table Piscina(
	IdPiscina int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table Restaurante(
	IdRestaurante int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table CampoGolf(
	IdCampoGolf int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table CanchaTenis(
	IdCanchaTenis int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table CanchaFutbol(
	IdCanchaFutbol int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table Spa(
	IdSpa int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)
create table SalonBaile(
	IdSalonBaile int primary key,
	IdReq int not null references Requerimientos(IdReq),
	IdHorario time not null references Horario(IdHorario),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00'),
	activo bit default(1)
)

--crear tablas referente al mantenimiento de las zonas
create table Requerimientos(
	IdReq int primary key,
	TipoReq nvarchar(50) not null default('Sin descripcion'),
	FechaRequerimientos datetime not null default(''),
	HoraRequerimientos time not null default('06:00'),
	Motivo nvarchar(50) not null default('Sin descripcion')
)

--crear tablas referente a la sala de eventos
create table SalaEventos(
	idSalaEventos int primary key,
	IdReqSE int not null references ReqSalaEventos(IdReqSE),
	IdHorario time not null references Horario(IdHorario),
	numeroAsientos int not null default(0),
	FechaReserva datetime not null default(''),
	HoraReserva time not null default('06:00')	
)
create table ReqSalaEventos(
	IdReqSE int primary key,
	TipoReq nvarchar(50) not null default('Sin descripcion'),
	Cantidad nvarchar(50) not null default('Sin descripcion'),
	FechaPrestamo datetime not null default(''),
	FechaDevolucion datetime not null default('')
)

--Creacion de tablas Horario, Precio, Parqueo
create table Horario(
	IdHorario int primary key,
	Descripcion nvarchar('50') not null default('Sin descripcion'),
	HoraInicio time not null default('06:00'),
	HoraFin time not null default('06:00'),
	IdRangoDias int not null references RagoDias(IdRangoDias)
)
create table RagoDias(
	IdRangoDias int primary key,
	Descripcion nvarchar(50) not null default('Domingo-Lunes')
)
create table Precio(
	IdPrecio int primary key,
	Descripcion nvarchar(50) not null default('Entrada y Piscina'),
	Monto int not null default(5000)
)
create table Parqueo(
	IdParqueo int primary key,
	TipoParqueo nvarchar(50) not null default("Sin Asignar"),
	IdUbicacionParqueo int not null references UbicacionParqueo(IdUbicacionParqueo)

)
create table UbicacionParqueo(
	IdUbicacionParqueo int primary key,
	NumeroParqueo int not null default(0),
	UbicacionParqueo nvarchar(50) not null default('Sin Asignar')
)

--creacion de la tabla perfiles
create table Perfiles(
	IdPerfil int primary key;
	NombrePerfil nvarchar(50) not null default('Sin descripcion'),
	activo bit default(1),
	idSalaEventos int not null references SalaEventos(idSalaEventos),
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
create table usuario(
	Cedula int primary key,
	NombreUsuario nvarchar(50) not null,
	Estado bit default(0),
	IdPerfil int not null references Perfiles(IdPerfil)
)