USE [master]
GO
/****** Object:  Database [Proyectodb]    Script Date: 19/08/2018 18:07:53 ******/
CREATE DATABASE [Proyectodb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Proyectodb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Proyectodb.mdf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'Proyectodb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\Proyectodb.ldf' , SIZE = 6144KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [Proyectodb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Proyectodb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Proyectodb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Proyectodb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Proyectodb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Proyectodb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Proyectodb] SET ARITHABORT OFF 
GO
ALTER DATABASE [Proyectodb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Proyectodb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Proyectodb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Proyectodb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Proyectodb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Proyectodb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Proyectodb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Proyectodb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Proyectodb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Proyectodb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Proyectodb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Proyectodb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Proyectodb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Proyectodb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Proyectodb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Proyectodb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Proyectodb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Proyectodb] SET RECOVERY FULL 
GO
ALTER DATABASE [Proyectodb] SET  MULTI_USER 
GO
ALTER DATABASE [Proyectodb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Proyectodb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Proyectodb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Proyectodb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Proyectodb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Proyectodb]
GO
/****** Object:  Table [dbo].[CampoGolf]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CampoGolf](
	[IdCampoGolf] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampoGolf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CanchaBasketBall]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaBasketBall](
	[IdCanchaBasketBall] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdCanchaBasketBall] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CanchaFutbol]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaFutbol](
	[IdCanchaFutbol] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdCanchaFutbol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CanchaTenis]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaTenis](
	[IdCanchaTenis] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdCanchaTenis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ControlAcceso]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ControlAcceso](
	[ID] [int] NOT NULL,
	[Contrasena] [varchar](25) NOT NULL DEFAULT ('12345')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [bit] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL DEFAULT ('No Disponible'),
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Horario]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IdHorario] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL DEFAULT ('Sin descripcion'),
	[HoraInicio] [time](7) NOT NULL DEFAULT ('06:00'),
	[HoraFin] [time](7) NOT NULL DEFAULT ('06:00'),
	[IdRangoDias] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invitados]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invitados](
	[IDI] [int] NOT NULL,
	[ID] [int]  not null references Usuario(ID),
	[Invitado1] [varchar](50) DEFAULT (''),
	[Invitado2] [varchar](50) DEFAULT (''),
	[Invitado3] [varchar](50) DEFAULT (''),
	[Invitado4] [varchar](50) DEFAULT (''),
	[Invitado5] [varchar](50) DEFAULT ('Invitado con costo adicional')
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parqueo]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parqueo](
	[IdParqueo] [int] NOT NULL,
	[TipoParqueo] [nvarchar](50) NOT NULL DEFAULT ('Sin Asignar'),
	[IdUbicacionParqueo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IdPerfil] [int] NOT NULL,
	[NombrePerfil] [nvarchar](50) NOT NULL DEFAULT ('Sin descripcion'),
	[IdEstado] [bit] NULL,
	[IdSalaEventos] [int] NOT NULL,
	[IdCanchaBasketBall] [int] NOT NULL,
	[IdPiscina] [int] NOT NULL,
	[IdRestaurante] [int] NOT NULL,
	[IdCampoGolf] [int] NOT NULL,
	[IdCanchaTenis] [int] NOT NULL,
	[IdCanchaFutbol] [int] NOT NULL,
	[IdSpa] [int] NOT NULL,
	[IdSalonBaile] [int] NOT NULL,
	[IdParqueo] [int] NOT NULL,
	[IdPrecio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Piscina]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piscina](
	[IdPiscina] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdPiscina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Precio]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[IdPrecio] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL DEFAULT ('Entrada y Piscina'),
	[Monto] [int] NOT NULL DEFAULT ((5000)),
PRIMARY KEY CLUSTERED 
(
	[IdPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RangoDias]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangoDias](
	[IdRangoDias] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL DEFAULT ('Domingo-Lunes'),
PRIMARY KEY CLUSTERED 
(
	[IdRangoDias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReqSalaEventos]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReqSalaEventos](
	[IdReqSE] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[TipoReq] [nvarchar](50) NOT NULL DEFAULT ('Sin descripcion'),
	[Cantidad] [nvarchar](50) NOT NULL DEFAULT ('Sin descripcion'),
	[FechaPrestamo] [datetime] NOT NULL DEFAULT (''),
	[FechaDevolucion] [datetime] NOT NULL DEFAULT (''),
PRIMARY KEY CLUSTERED 
(
	[IdReqSE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requerimientos]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requerimientos](
	[IdReq] [int] NOT NULL,
	[TipoReq] [nvarchar](50) NOT NULL DEFAULT ('Sin Requerimiento'),
	[FechaRequerimientos] [datetime] NOT NULL DEFAULT (''),
	[HoraRequerimientos] [time](7) NOT NULL DEFAULT ('00:00'),
	[Motivo] [nvarchar](50) NOT NULL DEFAULT ('Sin Requerimiento'),
PRIMARY KEY CLUSTERED 
(
	[IdReq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurante](
	[IdRestaurante] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdRestaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaEventos]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaEventos](
	[IdSalaEventos] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReqSE] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[numeroAsientos] [int] NOT NULL DEFAULT ((0)),
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
PRIMARY KEY CLUSTERED 
(
	[IdSalaEventos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalonBaile]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonBaile](
	[IdSalonBaile] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdSalonBaile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Spa]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spa](
	[IdSpa] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL DEFAULT (''),
	[HoraReserva] [time](7) NOT NULL DEFAULT ('06:00'),
	[Cliente] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[IdSpa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UbicacionParqueo]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionParqueo](
	[IdUbicacionParqueo] [int] NOT NULL,
	[UbicacionParqueo] [nvarchar](50) NOT NULL DEFAULT ('Sin Asignar'),
	[Disponibilidad] [bit] NULL,
	[IdParqueo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUbicacionParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] NOT NULL,
	[NombreUsuario] [nvarchar](50) NOT NULL,
	[ApellidoUsuario] [nvarchar](50) NOT NULL,
	[Estado] [bit] NULL DEFAULT ((0)),
	[IdHorario] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
--good
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CanchaBasketBall]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CanchaBasketBall]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CanchaBasketBall]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CanchaFutbol]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CanchaFutbol]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CanchaFutbol]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[CanchaTenis]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[CanchaTenis]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[CanchaTenis]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[ControlAcceso]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD FOREIGN KEY([IdRangoDias])
REFERENCES [dbo].[RangoDias] ([IdRangoDias])
GO
ALTER TABLE [dbo].[Invitados]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[Usuario] ([ID])
GO
ALTER TABLE [dbo].[Parqueo]  WITH CHECK ADD FOREIGN KEY([IdUbicacionParqueo])
REFERENCES [dbo].[UbicacionParqueo] ([IdUbicacionParqueo])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdCampoGolf])
REFERENCES [dbo].[CampoGolf] ([IdCampoGolf])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdCanchaBasketBall])
REFERENCES [dbo].[CanchaBasketBall] ([IdCanchaBasketBall])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdCanchaTenis])
REFERENCES [dbo].[CanchaTenis] ([IdCanchaTenis])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdCanchaFutbol])
REFERENCES [dbo].[CanchaFutbol] ([IdCanchaFutbol])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdParqueo])
REFERENCES [dbo].[Parqueo] ([IdParqueo])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdPiscina])
REFERENCES [dbo].[Piscina] ([IdPiscina])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdPrecio])
REFERENCES [dbo].[Precio] ([IdPrecio])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdRestaurante])
REFERENCES [dbo].[Restaurante] ([IdRestaurante])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdSalaEventos])
REFERENCES [dbo].[SalaEventos] ([IdSalaEventos])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdSalonBaile])
REFERENCES [dbo].[SalonBaile] ([IdSalonBaile])
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD FOREIGN KEY([IdSpa])
REFERENCES [dbo].[Spa] ([IdSpa])
GO
ALTER TABLE [dbo].[Piscina]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Piscina]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Piscina]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Restaurante]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[SalaEventos]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[SalaEventos]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[SalonBaile]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[SalonBaile]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[SalonBaile]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[Spa]  WITH CHECK ADD FOREIGN KEY([IdEstado])
REFERENCES [dbo].[Estado] ([IdEstado])
GO
ALTER TABLE [dbo].[Spa]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Spa]  WITH CHECK ADD FOREIGN KEY([IdReq])
REFERENCES [dbo].[Requerimientos] ([IdReq])
GO
ALTER TABLE [dbo].[UbicacionParqueo]  WITH CHECK ADD FOREIGN KEY([IdParqueo])
REFERENCES [dbo].[Parqueo] ([IdParqueo])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfiles] ([IdPerfil])
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO]
--AS
--	BEGIN
--		SELECT  UbicacionParqueo.IDPARQUEO, UbicacionParqueo.DISPONIBILIDAD,PARQUEO.TipoParqueo, COUNT(*) AS TOTAL 
--		FROM UbicacionParqueo INNER JOIN Parqueo ON UbicacionParqueo.IDPARQUEO = Parqueo.IdParqueo
--		GROUP BY UbicacionParqueo.DISPONIBILIDAD, UbicacionParqueo.IDPARQUEO,PARQUEO.TipoParqueo
--		ORDER BY UbicacionParqueo.IDPARQUEO
--	END
--
--GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_CLIENTES]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Clientes'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE  UbicacionParqueo.Disponibilidad = 1 and Parqueo.TipoParqueo = 'CLIENTE'
	END
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_VIP]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - VIP'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE UbicacionParqueo.Disponibilidad = 1 and Parqueo.TipoParqueo = 'VIP'
	END
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_EMPLEADOS]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Empleados'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE UbicacionParqueo.Disponibilidad = 1 and Parqueo.TipoParqueo = 'EMPLEADO'
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListadoClientesActivos]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListadoClientesActivos]
AS
	BEGIN
		select	Usuario.NombreUsuario, 
		Usuario.ApellidoUsuario,
		Perfiles.NombrePerfil,
		Usuario.Estado,
		Invitados.Invitado1,
		Invitados.Invitado2,
		Invitados.Invitado3,
		Invitados.Invitado4,
		Invitados.Invitado5
		from Usuario inner join Perfiles on Usuario.IdPerfil = Perfiles.IdPerfil
					inner join Invitados on Invitados.ID = Usuario.ID
		where Usuario.IdPerfil = 2 OR Usuario.IdPerfil = 3 OR Usuario.IdPerfil = 1 
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListadoEmpleadosRegistradosyActivos]    Script Date: 19/08/2018 18:07:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ListadoEmpleadosRegistradosyActivos]
AS
BEGIN
	select	Usuario.NombreUsuario, 
			Usuario.ApellidoUsuario,
			Perfiles.NombrePerfil,
			Usuario.Estado
	from Usuario inner join Perfiles on Usuario.IdPerfil = Perfiles.IdPerfil
	where Usuario.IdPerfil = 4
END
go
------------------------------------------------------------------------------------
USE [master]
GO
ALTER DATABASE [Proyectodb] SET  READ_WRITE 
GO
