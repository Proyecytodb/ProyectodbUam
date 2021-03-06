USE [master]
GO

/****** Object:  Database [ProyectoBaseDatos]    Script Date: 19/08/2018 22:42:13 ******/
CREATE DATABASE [ProyectoBaseDatos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectoBaseDatos', FILENAME = N'C:\SQL\DB\ProyectoBaseDatos.mdf' , SIZE = 5120KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'ProyectoBaseDatos_log', FILENAME = N'C:\SQL\DB\ProyectoBaseDatos.ldf' , SIZE = 5120KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
GO

ALTER DATABASE [ProyectoBaseDatos] SET COMPATIBILITY_LEVEL = 120
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectoBaseDatos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ProyectoBaseDatos] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET ARITHABORT OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ProyectoBaseDatos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ProyectoBaseDatos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET  ENABLE_BROKER 
GO

ALTER DATABASE [ProyectoBaseDatos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ProyectoBaseDatos] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET RECOVERY FULL 
GO

ALTER DATABASE [ProyectoBaseDatos] SET  MULTI_USER 
GO

ALTER DATABASE [ProyectoBaseDatos] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ProyectoBaseDatos] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ProyectoBaseDatos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ProyectoBaseDatos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [ProyectoBaseDatos] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ProyectoBaseDatos] SET  READ_WRITE 
GO






USE [ProyectoBaseDatos]
GO
/****** Object:  Table [dbo].[AccionesPorEmpleado]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccionesPorEmpleado](
	[idAccionEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[horaIngreso] [datetime] NOT NULL,
	[horaSalida] [datetime] NOT NULL,
	[fecha] [nchar](10) NOT NULL,
 CONSTRAINT [PK_AccionesPorEmpleado] PRIMARY KEY CLUSTERED 
(
	[idAccionEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccionesPorZona]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AccionesPorZona](
	[idAccion] [int] IDENTITY(1,1) NOT NULL,
	[idZona] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AccionesPorZona] PRIMARY KEY CLUSTERED 
(
	[idAccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Bitacora](
	[IdBitacora] [int] IDENTITY(1,1) NOT NULL,
	[CodUsuario] [varchar](150) NOT NULL,
	[Accion] [varchar](150) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[IdBitacora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Horarios]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Horarios](
	[idHorario] [int] IDENTITY(1,1) NOT NULL,
	[diaInicio] [varchar](50) NOT NULL,
	[diaFinal] [varchar](50) NOT NULL,
	[horaInicio] [time](7) NOT NULL,
	[horaFinal] [time](7) NOT NULL,
 CONSTRAINT [PK_Horarios] PRIMARY KEY CLUSTERED 
(
	[idHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Invitados]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Invitados](
	[idInvitado] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[Invitado1] [varchar](150) NULL,
	[Invitado2] [varchar](150) NULL,
	[Invitado3] [varchar](150) NULL,
	[Invitado4] [varchar](150) NULL,
	[Invitado5] [varchar](50) NULL,
	[Costo] [int] NULL,
 CONSTRAINT [PK_Invitados] PRIMARY KEY CLUSTERED 
(
	[idInvitado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Parqueo]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parqueo](
	[idParqueo] [int] IDENTITY(1,1) NOT NULL,
	[idZona] [int] NOT NULL,
	[CapacidadEspacios] [int] NOT NULL,
	[idPerfil] [int] NOT NULL,
 CONSTRAINT [PK_Parqueo] PRIMARY KEY CLUSTERED 
(
	[idParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Parqueo_Por_Zonas]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Parqueo_Por_Zonas](
	[idParqueo] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[idZona] [int] NOT NULL,
	[idPerfil] [int] NULL,
	[Espacio_Disponible] [bit] NOT NULL,
 CONSTRAINT [PK_Parqueo_Por_Zonas] PRIMARY KEY CLUSTERED 
(
	[idParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Perfiles](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[idPrecio] [int] IDENTITY(1,1) NOT NULL,
	[idPerfil] [int] NOT NULL,
	[Costo] [int] NOT NULL,
 CONSTRAINT [PK_Precio] PRIMARY KEY CLUSTERED 
(
	[idPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RegistroPersonas]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistroPersonas](
	[IdPersona] [int] IDENTITY(1,1) NOT NULL,
	[Cedula] [bigint] NOT NULL,
	[Nombre] [varchar](150) NOT NULL,
	[Empleado] [bit] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_RegistroPersonas] PRIMARY KEY CLUSTERED 
(
	[IdPersona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservaciones](
	[idReservacion] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[idZona] [int] NOT NULL,
	[idAccion] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [datetime] NOT NULL,
 CONSTRAINT [PK_Reservaciones] PRIMARY KEY CLUSTERED 
(
	[idReservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SalaDeEvento]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalaDeEvento](
	[idSalaEvento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](150) NOT NULL,
	[Capacidad] [int] NOT NULL,
 CONSTRAINT [PK_SalaDeEvento] PRIMARY KEY CLUSTERED 
(
	[idSalaEvento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalasPorAsociado]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalasPorAsociado](
	[idSalaPorAsoc] [int] IDENTITY(1,1) NOT NULL,
	[IdPersona] [int] NOT NULL,
	[idSalaEvento] [int] NOT NULL,
	[Mesa] [bit] NOT NULL,
	[Silla] [bit] NOT NULL,
	[Alimentacion] [bit] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [datetime] NOT NULL,
 CONSTRAINT [PK_SalasPorAsociado] PRIMARY KEY CLUSTERED 
(
	[idSalaPorAsoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuarios](
	[CodUsuario] [varchar](150) NOT NULL,
	[idPerfil] [int] NOT NULL,
	[idPersona] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[CodUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Zonas]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Zonas](
	[idZona] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Zonas] PRIMARY KEY CLUSTERED 
(
	[idZona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AccionesPorZona] ON 

INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (1, 1, N'Natacion')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (2, 1, N'Aerobicos Acuaticos')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (3, 2, N'Partido Basket')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (4, 3, N'Partido Futbol')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (5, 4, N'Desayuno')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (6, 4, N'Almuerzo')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (7, 4, N'Cena')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (8, 5, N'Baile')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (9, 5, N'Zumba')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (10, 5, N'Aerobicos')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (11, 6, N'Masaje')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (12, 6, N'Exfoliacion')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (13, 7, N'Partido Golf')
INSERT [dbo].[AccionesPorZona] ([idAccion], [idZona], [Descripcion]) VALUES (14, 8, N'Ejercicios')
SET IDENTITY_INSERT [dbo].[AccionesPorZona] OFF
SET IDENTITY_INSERT [dbo].[Bitacora] ON 

INSERT [dbo].[Bitacora] ([IdBitacora], [CodUsuario], [Accion], [Fecha]) VALUES (1, N'ZEUS\Zeus', N'Inserta Perfil', CAST(N'2018-08-20 11:46:09.723' AS DateTime))
INSERT [dbo].[Bitacora] ([IdBitacora], [CodUsuario], [Accion], [Fecha]) VALUES (2, N'ZEUS\Zeus', N'Actualiza Perfil', CAST(N'2018-08-20 11:47:37.013' AS DateTime))
INSERT [dbo].[Bitacora] ([IdBitacora], [CodUsuario], [Accion], [Fecha]) VALUES (3, N'ZEUS\Zeus', N'Elimina Perfil', CAST(N'2018-08-20 11:48:18.230' AS DateTime))
SET IDENTITY_INSERT [dbo].[Bitacora] OFF
SET IDENTITY_INSERT [dbo].[Horarios] ON 

INSERT [dbo].[Horarios] ([idHorario], [diaInicio], [diaFinal], [horaInicio], [horaFinal]) VALUES (1, N'Lunes', N'Jueves', CAST(N'08:00:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[Horarios] ([idHorario], [diaInicio], [diaFinal], [horaInicio], [horaFinal]) VALUES (2, N'Viernes', N'Domingo', CAST(N'08:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Horarios] ([idHorario], [diaInicio], [diaFinal], [horaInicio], [horaFinal]) VALUES (3, N'Feriado', N'Feriado', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time))
SET IDENTITY_INSERT [dbo].[Horarios] OFF
SET IDENTITY_INSERT [dbo].[Invitados] ON 

INSERT [dbo].[Invitados] ([idInvitado], [IdPersona], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5], [Costo]) VALUES (1, 1, N'Juan Castillo', N'Pedro Villalobos', N'Cesar Melendez', N'Carlos Lopez', N'Marlen Gutierrez', 5000)
INSERT [dbo].[Invitados] ([idInvitado], [IdPersona], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5], [Costo]) VALUES (2, 2, N'Maria Acevedo', N'Celina Acosta', N'Irma Aguilar', NULL, NULL, 0)
INSERT [dbo].[Invitados] ([idInvitado], [IdPersona], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5], [Costo]) VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[Invitados] ([idInvitado], [IdPersona], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5], [Costo]) VALUES (4, 4, N'Cesar Bolanos', N'Manuel Bermudez', N'Abel Briseno', N'Francisco Caballero', N'Marco Cardenas', 5000)
INSERT [dbo].[Invitados] ([idInvitado], [IdPersona], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5], [Costo]) VALUES (5, 5, N'Luis Castro', N'Roy Castro', NULL, N'Ricardo Cisneros', N'Daniel Contreras', 5000)
SET IDENTITY_INSERT [dbo].[Invitados] OFF
SET IDENTITY_INSERT [dbo].[Parqueo] ON 

INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (1, 1, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (2, 1, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (3, 1, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (4, 2, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (5, 2, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (6, 2, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (8, 3, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (9, 3, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (10, 3, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (11, 4, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (12, 4, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (13, 4, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (14, 5, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (15, 5, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (16, 5, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (17, 6, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (18, 6, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (19, 6, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (20, 7, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (21, 7, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (22, 7, 32, 3)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (23, 8, 32, 1)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (24, 8, 32, 2)
INSERT [dbo].[Parqueo] ([idParqueo], [idZona], [CapacidadEspacios], [idPerfil]) VALUES (25, 8, 32, 3)
SET IDENTITY_INSERT [dbo].[Parqueo] OFF
SET IDENTITY_INSERT [dbo].[Parqueo_Por_Zonas] ON 

INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (1, N'A1', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (2, N'A2', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (3, N'A3', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (4, N'A4', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (5, N'A5', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (6, N'A6', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (8, N'A7', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (9, N'A8', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (10, N'A9', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (11, N'A10', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (12, N'A11', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (13, N'A12', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (14, N'A13', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (15, N'A14', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (16, N'A15', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (17, N'A16', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (18, N'A17', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (19, N'A18', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (20, N'A19', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (21, N'A20', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (22, N'A21', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (23, N'A22', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (24, N'A23', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (25, N'A24', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (26, N'A25', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (27, N'A26', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (28, N'A27', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (29, N'A28', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (30, N'A29', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (31, N'A30', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (32, N'A31', 1, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (33, N'A32', 1, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (34, N'B1', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (35, N'B2', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (36, N'B3', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (37, N'B4', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (38, N'B5', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (39, N'B6', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (40, N'B7', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (41, N'B8', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (42, N'B9', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (43, N'B10', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (44, N'B11', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (45, N'B12', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (46, N'B13', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (47, N'B14', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (48, N'B15', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (49, N'B16', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (50, N'B17', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (51, N'B18', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (52, N'B19', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (53, N'B20', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (54, N'B21', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (55, N'B22', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (56, N'B23', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (57, N'B24', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (58, N'B25', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (59, N'B26', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (60, N'B27', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (61, N'B28', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (62, N'B29', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (63, N'B30', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (64, N'B31', 1, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (65, N'B32', 1, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (66, N'C1', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (67, N'C2', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (68, N'C3', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (69, N'C4', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (70, N'C5', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (71, N'C6', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (72, N'C7', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (73, N'C8', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (74, N'C9', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (75, N'C10', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (76, N'C11', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (77, N'C12', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (78, N'C13', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (79, N'C14', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (80, N'C15', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (81, N'C16', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (82, N'C17', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (83, N'C18', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (84, N'C19', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (85, N'C20', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (86, N'C21', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (87, N'C22', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (88, N'C23', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (89, N'C24', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (90, N'C25', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (91, N'C26', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (92, N'C27', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (93, N'C28', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (94, N'C29', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (95, N'C30', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (96, N'C31', 1, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (97, N'C32', 1, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (98, N'A33', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (99, N'A34', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (100, N'A35', 2, 1, 1)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (101, N'A36', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (102, N'A37', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (103, N'A38', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (104, N'A39', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (105, N'A40', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (106, N'A41', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (107, N'A42', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (108, N'A43', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (109, N'A44', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (110, N'A45', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (111, N'A46', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (112, N'A47', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (113, N'A48', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (114, N'A49', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (115, N'A50', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (116, N'A51', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (117, N'A52', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (118, N'A53', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (119, N'A54', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (120, N'A55', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (121, N'A56', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (122, N'A57', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (123, N'A58', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (124, N'A59', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (125, N'A60', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (126, N'A61', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (127, N'A62', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (128, N'A63', 2, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (129, N'A64', 2, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (130, N'B33', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (131, N'B34', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (132, N'B35', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (133, N'B36', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (134, N'B37', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (135, N'B38', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (136, N'B39', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (137, N'B40', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (138, N'B41', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (139, N'B42', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (140, N'B43', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (141, N'B44', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (142, N'B45', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (143, N'B46', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (144, N'B47', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (145, N'B48', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (146, N'B49', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (147, N'B50', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (148, N'B51', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (149, N'B52', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (150, N'B53', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (151, N'B54', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (152, N'B55', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (153, N'B56', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (154, N'B57', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (155, N'B58', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (156, N'B59', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (157, N'B60', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (158, N'B61', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (159, N'B62', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (160, N'B63', 2, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (161, N'B64', 2, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (162, N'C33', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (163, N'C34', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (164, N'C35', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (165, N'C36', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (166, N'C37', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (167, N'C38', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (168, N'C39', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (169, N'C40', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (170, N'C41', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (171, N'C42', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (172, N'C43', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (173, N'C44', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (174, N'C45', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (175, N'C46', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (176, N'C47', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (177, N'C48', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (178, N'C49', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (179, N'C50', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (180, N'C51', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (181, N'C52', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (182, N'C53', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (183, N'C54', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (184, N'C55', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (185, N'C56', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (186, N'C57', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (187, N'C58', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (188, N'C59', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (189, N'C60', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (190, N'C61', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (191, N'C62', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (192, N'C63', 2, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (193, N'C64', 2, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (194, N'A65', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (195, N'A66', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (196, N'A67', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (197, N'A68', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (198, N'A69', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (199, N'A70', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (200, N'A71', 3, 1, 0)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (201, N'A72', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (202, N'A73', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (203, N'A74', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (204, N'A75', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (205, N'A76', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (206, N'A77', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (207, N'A78', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (208, N'A79', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (209, N'A80', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (210, N'A81', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (211, N'A82', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (212, N'A83', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (213, N'A84', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (214, N'A85', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (215, N'A86', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (216, N'A87', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (217, N'A88', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (218, N'A89', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (219, N'A90', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (220, N'A91', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (221, N'A92', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (222, N'A93', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (223, N'A94', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (224, N'A95', 3, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (225, N'A96', 3, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (226, N'B65', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (227, N'B66', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (228, N'B67', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (229, N'B68', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (230, N'B69', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (231, N'B70', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (232, N'B71', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (233, N'B72', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (234, N'B73', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (235, N'B74', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (236, N'B75', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (237, N'B76', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (238, N'B77', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (239, N'B78', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (240, N'B79', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (241, N'B80', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (242, N'B81', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (243, N'B82', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (244, N'B83', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (245, N'B84', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (246, N'B85', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (247, N'B86', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (248, N'B87', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (249, N'B88', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (250, N'B89', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (251, N'B90', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (252, N'B91', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (253, N'B92', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (254, N'B93', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (255, N'B94', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (256, N'B95', 3, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (257, N'B96', 3, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (258, N'C65', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (259, N'C66', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (260, N'C67', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (261, N'C68', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (262, N'C69', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (263, N'C70', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (264, N'C71', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (265, N'C72', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (266, N'C73', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (267, N'C74', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (268, N'C75', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (269, N'C76', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (270, N'C77', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (271, N'C78', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (272, N'C79', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (273, N'C80', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (274, N'C81', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (275, N'C82', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (276, N'C83', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (277, N'C84', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (278, N'C85', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (279, N'C86', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (280, N'C87', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (281, N'C88', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (282, N'C89', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (283, N'C90', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (284, N'C91', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (285, N'C92', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (286, N'C93', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (287, N'C94', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (288, N'C95', 3, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (289, N'C96', 3, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (290, N'A97', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (291, N'A98', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (292, N'A99', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (293, N'A100', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (294, N'A101', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (295, N'A102', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (296, N'A103', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (297, N'A104', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (298, N'A105', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (299, N'A106', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (300, N'A107', 4, 1, 1)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (301, N'A108', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (302, N'A109', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (303, N'A110', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (304, N'A111', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (305, N'A112', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (306, N'A113', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (307, N'A114', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (308, N'A115', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (309, N'A116', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (310, N'A117', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (311, N'A118', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (312, N'A119', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (313, N'A120', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (314, N'A121', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (315, N'A122', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (316, N'A123', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (317, N'A124', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (318, N'A125', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (319, N'A126', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (320, N'A127', 4, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (321, N'A128', 4, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (322, N'B97', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (323, N'B98', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (324, N'B99', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (325, N'B100', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (326, N'B101', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (327, N'B102', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (328, N'B103', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (329, N'B104', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (330, N'B105', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (331, N'B106', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (332, N'B107', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (333, N'B108', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (334, N'B109', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (335, N'B110', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (336, N'B111', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (337, N'B112', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (338, N'B113', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (339, N'B114', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (340, N'B115', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (341, N'B116', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (342, N'B117', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (343, N'B118', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (344, N'B119', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (345, N'B120', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (346, N'B121', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (347, N'B122', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (348, N'B123', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (349, N'B124', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (350, N'B125', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (351, N'B126', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (352, N'B127', 4, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (353, N'B128', 4, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (354, N'C97', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (355, N'C98', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (356, N'C99', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (357, N'C100', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (358, N'C101', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (359, N'C102', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (360, N'C103', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (361, N'C104', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (362, N'C105', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (363, N'C106', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (364, N'C107', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (365, N'C108', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (366, N'C109', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (367, N'C110', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (368, N'C111', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (369, N'C112', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (370, N'C113', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (371, N'C114', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (372, N'C115', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (373, N'C116', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (374, N'C117', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (375, N'C118', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (376, N'C119', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (377, N'C120', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (378, N'C121', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (379, N'C122', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (380, N'C123', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (381, N'C124', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (382, N'C125', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (383, N'C126', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (384, N'C127', 4, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (385, N'C128', 4, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (386, N'A129', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (387, N'A130', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (388, N'A131', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (389, N'A132', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (390, N'A133', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (391, N'A134', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (392, N'A135', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (393, N'A136', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (394, N'A137', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (395, N'A138', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (396, N'A139', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (397, N'A140', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (398, N'A141', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (399, N'A142', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (400, N'A143', 5, 1, 1)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (401, N'A144', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (402, N'A145', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (403, N'A146', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (404, N'A147', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (405, N'A148', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (406, N'A149', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (407, N'A150', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (408, N'A151', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (409, N'A152', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (410, N'A153', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (411, N'A154', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (412, N'A155', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (413, N'A156', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (414, N'A157', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (415, N'A158', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (416, N'A159', 5, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (417, N'A160', 5, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (418, N'B129', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (419, N'B130', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (420, N'B131', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (421, N'B132', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (422, N'B133', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (423, N'B134', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (424, N'B135', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (425, N'B136', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (426, N'B137', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (427, N'B138', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (428, N'B139', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (429, N'B140', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (430, N'B141', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (431, N'B142', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (432, N'B143', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (433, N'B144', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (434, N'B145', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (435, N'B146', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (436, N'B147', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (437, N'B148', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (438, N'B149', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (439, N'B150', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (440, N'B151', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (441, N'B152', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (442, N'B153', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (443, N'B154', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (444, N'B155', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (445, N'B156', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (446, N'B157', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (447, N'B158', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (448, N'B159', 5, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (449, N'B160', 5, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (450, N'C129', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (451, N'C130', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (452, N'C131', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (453, N'C132', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (454, N'C133', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (455, N'C134', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (456, N'C135', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (457, N'C136', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (458, N'C137', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (459, N'C138', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (460, N'C139', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (461, N'C140', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (462, N'C141', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (463, N'C142', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (464, N'C143', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (465, N'C144', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (466, N'C145', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (467, N'C146', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (468, N'C147', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (469, N'C148', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (470, N'C149', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (471, N'C150', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (472, N'C151', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (473, N'C152', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (474, N'C153', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (475, N'C154', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (476, N'C155', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (477, N'C156', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (478, N'C157', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (479, N'C158', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (480, N'C159', 5, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (481, N'C160', 5, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (482, N'A161', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (483, N'A162', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (484, N'A163', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (485, N'A164', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (486, N'A165', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (487, N'A166', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (488, N'A167', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (489, N'A168', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (490, N'A169', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (491, N'A170', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (492, N'A171', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (493, N'A172', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (494, N'A173', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (495, N'A174', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (496, N'A175', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (497, N'A176', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (498, N'A177', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (499, N'A178', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (500, N'A179', 6, 1, 1)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (501, N'A180', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (502, N'A181', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (503, N'A182', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (504, N'A183', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (505, N'A184', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (506, N'A185', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (507, N'A186', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (508, N'A187', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (509, N'A188', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (510, N'A189', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (511, N'A190', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (512, N'A191', 6, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (513, N'A192', 6, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (514, N'B161', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (515, N'B162', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (516, N'B163', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (517, N'B164', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (518, N'B165', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (519, N'B166', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (520, N'B167', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (521, N'B168', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (522, N'B169', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (523, N'B170', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (524, N'B171', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (525, N'B172', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (526, N'B173', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (527, N'B174', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (528, N'B175', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (529, N'B176', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (530, N'B177', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (531, N'B178', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (532, N'B179', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (533, N'B180', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (534, N'B181', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (535, N'B182', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (536, N'B183', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (537, N'B184', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (538, N'B185', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (539, N'B186', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (540, N'B187', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (541, N'B188', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (542, N'B189', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (543, N'B190', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (544, N'B191', 6, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (545, N'B192', 6, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (546, N'C161', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (547, N'C162', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (548, N'C163', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (549, N'C164', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (550, N'C165', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (551, N'C166', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (552, N'C167', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (553, N'C168', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (554, N'C169', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (555, N'C170', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (556, N'C171', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (557, N'C172', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (558, N'C173', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (559, N'C174', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (560, N'C175', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (561, N'C176', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (562, N'C177', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (563, N'C178', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (564, N'C179', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (565, N'C180', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (566, N'C181', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (567, N'C182', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (568, N'C183', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (569, N'C184', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (570, N'C185', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (571, N'C186', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (572, N'C187', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (573, N'C188', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (574, N'C189', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (575, N'C190', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (576, N'C191', 6, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (577, N'C192', 6, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (578, N'A193', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (579, N'A194', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (580, N'A195', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (581, N'A196', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (582, N'A197', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (583, N'A198', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (584, N'A199', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (585, N'A200', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (586, N'A201', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (587, N'A202', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (588, N'A203', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (589, N'A204', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (590, N'A205', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (591, N'A206', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (592, N'A207', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (593, N'A208', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (594, N'A209', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (595, N'A210', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (596, N'A211', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (597, N'A212', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (598, N'A213', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (599, N'A214', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (600, N'A215', 7, 1, 1)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (601, N'A216', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (602, N'A217', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (603, N'A218', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (604, N'A219', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (605, N'A220', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (606, N'A221', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (607, N'A222', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (608, N'A223', 7, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (609, N'A224', 7, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (610, N'B193', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (611, N'B194', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (612, N'B195', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (613, N'B196', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (614, N'B197', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (615, N'B198', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (616, N'B199', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (617, N'B200', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (618, N'B201', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (619, N'B202', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (620, N'B203', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (621, N'B204', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (622, N'B205', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (623, N'B206', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (624, N'B207', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (625, N'B208', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (626, N'B209', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (627, N'B210', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (628, N'B211', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (629, N'B212', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (630, N'B213', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (631, N'B214', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (632, N'B215', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (633, N'B216', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (634, N'B217', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (635, N'B218', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (636, N'B219', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (637, N'B220', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (638, N'B221', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (639, N'B222', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (640, N'B223', 7, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (641, N'B224', 7, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (642, N'C193', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (643, N'C194', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (644, N'C195', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (645, N'C196', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (646, N'C197', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (647, N'C198', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (648, N'C199', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (649, N'C200', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (650, N'C201', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (651, N'C202', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (652, N'C203', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (653, N'C204', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (654, N'C205', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (655, N'C206', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (656, N'C207', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (657, N'C208', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (658, N'C209', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (659, N'C210', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (660, N'C211', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (661, N'C212', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (662, N'C213', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (663, N'C214', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (664, N'C215', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (665, N'C216', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (666, N'C217', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (667, N'C218', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (668, N'C219', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (669, N'C220', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (670, N'C221', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (671, N'C222', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (672, N'C223', 7, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (673, N'C224', 7, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (674, N'A225', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (675, N'A226', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (676, N'A227', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (677, N'A228', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (678, N'A229', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (679, N'A230', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (680, N'A231', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (681, N'A232', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (682, N'A233', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (683, N'A234', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (684, N'A235', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (685, N'A236', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (686, N'A237', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (687, N'A238', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (688, N'A239', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (689, N'A240', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (690, N'A241', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (691, N'A242', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (692, N'A243', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (693, N'A244', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (694, N'A245', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (695, N'A246', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (696, N'A247', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (697, N'A248', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (698, N'A249', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (699, N'A250', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (700, N'A251', 8, 1, 0)
GO
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (701, N'A252', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (702, N'A253', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (703, N'A254', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (704, N'A255', 8, 1, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (705, N'A256', 8, 1, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (706, N'B225', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (707, N'B226', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (708, N'B227', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (709, N'B228', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (710, N'B229', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (711, N'B230', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (712, N'B231', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (713, N'B232', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (714, N'B233', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (715, N'B234', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (716, N'B235', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (717, N'B236', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (718, N'B237', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (719, N'B238', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (720, N'B239', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (721, N'B240', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (722, N'B241', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (723, N'B242', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (724, N'B243', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (725, N'B244', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (726, N'B245', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (727, N'B246', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (728, N'B247', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (729, N'B248', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (730, N'B249', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (731, N'B250', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (732, N'B251', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (733, N'B252', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (734, N'B253', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (735, N'B254', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (736, N'B255', 8, 2, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (737, N'B256', 8, 2, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (738, N'C225', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (739, N'C226', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (740, N'C227', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (741, N'C228', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (742, N'C229', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (743, N'C230', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (744, N'C231', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (745, N'C232', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (746, N'C233', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (747, N'C234', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (748, N'C235', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (749, N'C236', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (750, N'C237', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (751, N'C238', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (752, N'C239', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (753, N'C240', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (754, N'C241', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (755, N'C242', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (756, N'C243', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (757, N'C244', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (758, N'C245', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (759, N'C246', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (760, N'C247', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (761, N'C248', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (762, N'C249', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (763, N'C250', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (764, N'C251', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (765, N'C252', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (766, N'C253', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (767, N'C254', 8, 3, 1)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (768, N'C255', 8, 3, 0)
INSERT [dbo].[Parqueo_Por_Zonas] ([idParqueo], [Descripcion], [idZona], [idPerfil], [Espacio_Disponible]) VALUES (769, N'C256', 8, 3, 1)
SET IDENTITY_INSERT [dbo].[Parqueo_Por_Zonas] OFF
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([idPerfil], [Descripcion]) VALUES (1, N'Empleado')
INSERT [dbo].[Perfiles] ([idPerfil], [Descripcion]) VALUES (2, N'Cliente VIP')
INSERT [dbo].[Perfiles] ([idPerfil], [Descripcion]) VALUES (3, N'Cliente Regular')
INSERT [dbo].[Perfiles] ([idPerfil], [Descripcion]) VALUES (4, N'Invitado')
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
SET IDENTITY_INSERT [dbo].[Precio] ON 

INSERT [dbo].[Precio] ([idPrecio], [idPerfil], [Costo]) VALUES (1, 1, 0)
INSERT [dbo].[Precio] ([idPrecio], [idPerfil], [Costo]) VALUES (2, 2, 5000)
INSERT [dbo].[Precio] ([idPrecio], [idPerfil], [Costo]) VALUES (3, 3, 10000)
INSERT [dbo].[Precio] ([idPrecio], [idPerfil], [Costo]) VALUES (4, 4, 0)
SET IDENTITY_INSERT [dbo].[Precio] OFF
SET IDENTITY_INSERT [dbo].[RegistroPersonas] ON 

INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (1, 101230123, N'WARREN GUZMAN', 0, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (2, 101240124, N'FELIPE GONZALEZ', 0, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (3, 101250125, N'JUAN VALLE', 1, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (4, 101260126, N'MARCELA SALAS', 0, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (5, 101270127, N'CARLOS PEREZ', 0, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (6, 101280128, N'ELIAS VARGAS', 1, 1)
INSERT [dbo].[RegistroPersonas] ([IdPersona], [Cedula], [Nombre], [Empleado], [Estado]) VALUES (7, 101290129, N'LUCIA JIMENEZ', 1, 1)
SET IDENTITY_INSERT [dbo].[RegistroPersonas] OFF
SET IDENTITY_INSERT [dbo].[Reservaciones] ON 

INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (1, 1, 1, 1, CAST(N'2018-08-19 00:00:00.000' AS DateTime), CAST(N'2018-08-19 08:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (4, 1, 2, 3, CAST(N'2018-08-20 00:00:00.000' AS DateTime), CAST(N'2018-08-20 12:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (7, 1, 3, 4, CAST(N'2018-08-21 00:00:00.000' AS DateTime), CAST(N'2018-08-21 18:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (8, 1, 4, 6, CAST(N'2018-08-22 00:00:00.000' AS DateTime), CAST(N'2018-08-22 12:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (9, 2, 3, 4, CAST(N'2018-09-20 00:00:00.000' AS DateTime), CAST(N'2018-09-20 12:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (10, 4, 6, 11, CAST(N'2018-09-23 00:00:00.000' AS DateTime), CAST(N'2018-09-23 08:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (11, 4, 8, 14, CAST(N'2018-09-23 00:00:00.000' AS DateTime), CAST(N'2018-09-23 14:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (12, 2, 4, 5, CAST(N'2018-09-21 00:00:00.000' AS DateTime), CAST(N'2018-09-21 08:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (13, 5, 1, 1, CAST(N'2018-09-24 00:00:00.000' AS DateTime), CAST(N'2018-09-24 10:00:00.000' AS DateTime))
INSERT [dbo].[Reservaciones] ([idReservacion], [IdPersona], [idZona], [idAccion], [FechaReserva], [HoraReserva]) VALUES (14, 5, 4, 7, CAST(N'2018-08-30 00:00:00.000' AS DateTime), CAST(N'2018-08-30 18:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reservaciones] OFF
SET IDENTITY_INSERT [dbo].[SalaDeEvento] ON 

INSERT [dbo].[SalaDeEvento] ([idSalaEvento], [Descripcion], [Capacidad]) VALUES (1, N'Salon Saturno', 150)
INSERT [dbo].[SalaDeEvento] ([idSalaEvento], [Descripcion], [Capacidad]) VALUES (2, N'Salon Andromeda', 150)
INSERT [dbo].[SalaDeEvento] ([idSalaEvento], [Descripcion], [Capacidad]) VALUES (3, N'Salon Venus', 150)
INSERT [dbo].[SalaDeEvento] ([idSalaEvento], [Descripcion], [Capacidad]) VALUES (4, N'Salon Orquideas', 150)
INSERT [dbo].[SalaDeEvento] ([idSalaEvento], [Descripcion], [Capacidad]) VALUES (5, N'Salon Villas', 150)
SET IDENTITY_INSERT [dbo].[SalaDeEvento] OFF
SET IDENTITY_INSERT [dbo].[SalasPorAsociado] ON 

INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (1, 1, 1, 0, 1, 0, CAST(N'2018-08-16 00:00:00.000' AS DateTime), CAST(N'2018-08-16 10:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (2, 1, 3, 1, 1, 1, CAST(N'2018-08-20 00:00:00.000' AS DateTime), CAST(N'2018-08-20 16:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (3, 1, 4, 1, 1, 0, CAST(N'2018-08-25 00:00:00.000' AS DateTime), CAST(N'2018-08-25 14:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (4, 2, 3, 1, 1, 0, CAST(N'2018-08-30 00:00:00.000' AS DateTime), CAST(N'2018-08-30 13:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (5, 2, 5, 0, 0, 1, CAST(N'2018-09-30 00:00:00.000' AS DateTime), CAST(N'2018-09-30 13:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (6, 4, 1, 1, 1, 0, CAST(N'2018-10-25 00:00:00.000' AS DateTime), CAST(N'2018-10-25 09:00:00.000' AS DateTime))
INSERT [dbo].[SalasPorAsociado] ([idSalaPorAsoc], [IdPersona], [idSalaEvento], [Mesa], [Silla], [Alimentacion], [FechaReserva], [HoraReserva]) VALUES (7, 4, 3, 0, 0, 0, CAST(N'2018-10-02 00:00:00.000' AS DateTime), CAST(N'2018-10-02 16:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[SalasPorAsociado] OFF
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'cperez', 1, 5)
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'evargas', 1, 6)
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'fgonzalez', 3, 2)
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'jvalle', 1, 3)
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'msalas', 2, 4)
INSERT [dbo].[Usuarios] ([CodUsuario], [idPerfil], [idPersona]) VALUES (N'wguzman', 2, 1)
SET IDENTITY_INSERT [dbo].[Zonas] ON 

INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (1, N'Piscina')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (2, N'Cancha de Basket')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (3, N'Cancha de Futbol')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (4, N'Restaurante')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (5, N'Sala de Baile')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (6, N'Spa')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (7, N'Campo Golf')
INSERT [dbo].[Zonas] ([idZona], [Descripcion]) VALUES (8, N'Gimnacio')
SET IDENTITY_INSERT [dbo].[Zonas] OFF
ALTER TABLE [dbo].[AccionesPorEmpleado]  WITH CHECK ADD  CONSTRAINT [FK_AccionesPorEmpleado_RegistroPersonas] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[RegistroPersonas] ([IdPersona])
GO
ALTER TABLE [dbo].[AccionesPorEmpleado] CHECK CONSTRAINT [FK_AccionesPorEmpleado_RegistroPersonas]
GO
ALTER TABLE [dbo].[AccionesPorZona]  WITH CHECK ADD  CONSTRAINT [FK_AccionesPorZona_Zonas] FOREIGN KEY([idZona])
REFERENCES [dbo].[Zonas] ([idZona])
GO
ALTER TABLE [dbo].[AccionesPorZona] CHECK CONSTRAINT [FK_AccionesPorZona_Zonas]
GO
ALTER TABLE [dbo].[Parqueo]  WITH CHECK ADD  CONSTRAINT [FK_Parqueo_Perfiles] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfiles] ([idPerfil])
GO
ALTER TABLE [dbo].[Parqueo] CHECK CONSTRAINT [FK_Parqueo_Perfiles]
GO
ALTER TABLE [dbo].[Parqueo]  WITH CHECK ADD  CONSTRAINT [FK_Parqueo_Perfiles1] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfiles] ([idPerfil])
GO
ALTER TABLE [dbo].[Parqueo] CHECK CONSTRAINT [FK_Parqueo_Perfiles1]
GO
ALTER TABLE [dbo].[Parqueo_Por_Zonas]  WITH CHECK ADD  CONSTRAINT [FK_Parqueo_Por_Zonas_Zonas] FOREIGN KEY([idZona])
REFERENCES [dbo].[Zonas] ([idZona])
GO
ALTER TABLE [dbo].[Parqueo_Por_Zonas] CHECK CONSTRAINT [FK_Parqueo_Por_Zonas_Zonas]
GO
ALTER TABLE [dbo].[Precio]  WITH CHECK ADD  CONSTRAINT [FK_Precio_Perfiles] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfiles] ([idPerfil])
GO
ALTER TABLE [dbo].[Precio] CHECK CONSTRAINT [FK_Precio_Perfiles]
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD  CONSTRAINT [FK_Reservaciones_AccionesPorZona] FOREIGN KEY([idAccion])
REFERENCES [dbo].[AccionesPorZona] ([idAccion])
GO
ALTER TABLE [dbo].[Reservaciones] CHECK CONSTRAINT [FK_Reservaciones_AccionesPorZona]
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD  CONSTRAINT [FK_Reservaciones_RegistroPersonas] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[RegistroPersonas] ([IdPersona])
GO
ALTER TABLE [dbo].[Reservaciones] CHECK CONSTRAINT [FK_Reservaciones_RegistroPersonas]
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD  CONSTRAINT [FK_Reservaciones_Zonas] FOREIGN KEY([idZona])
REFERENCES [dbo].[Zonas] ([idZona])
GO
ALTER TABLE [dbo].[Reservaciones] CHECK CONSTRAINT [FK_Reservaciones_Zonas]
GO
ALTER TABLE [dbo].[SalasPorAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SalasPorAsociado_RegistroPersonas] FOREIGN KEY([IdPersona])
REFERENCES [dbo].[RegistroPersonas] ([IdPersona])
GO
ALTER TABLE [dbo].[SalasPorAsociado] CHECK CONSTRAINT [FK_SalasPorAsociado_RegistroPersonas]
GO
ALTER TABLE [dbo].[SalasPorAsociado]  WITH CHECK ADD  CONSTRAINT [FK_SalasPorAsociado_SalaDeEvento] FOREIGN KEY([idSalaEvento])
REFERENCES [dbo].[SalaDeEvento] ([idSalaEvento])
GO
ALTER TABLE [dbo].[SalasPorAsociado] CHECK CONSTRAINT [FK_SalasPorAsociado_SalaDeEvento]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Perfiles] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfiles] ([idPerfil])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Perfiles]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_RegistroPersonas] FOREIGN KEY([idPersona])
REFERENCES [dbo].[RegistroPersonas] ([IdPersona])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_RegistroPersonas]
GO
/****** Object:  StoredProcedure [dbo].[SP_Listado_de_cantidad_de_visitantes_por_mes_y_anio]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listado_de_cantidad_de_visitantes_por_mes_y_anio]
AS
	BEGIN

		SELECT year(fechareserva)anio, month(Reservaciones.FechaReserva) mes, count( RegistroPersonas.IdPersona) totalpersonas
		FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona
		where Empleado = 0
		GROUP BY month(Reservaciones.FechaReserva),year(FechaReserva)
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listado_de_espacios_ocupamos_mensual]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listado_de_espacios_ocupamos_mensual] 
AS
	BEGIN

		SELECT Reservaciones.
		FechaReserva, Reservaciones.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Zonas.Descripcion
		FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona INNER JOIN Zonas ON Reservaciones.idZona = Zonas.idZona
		GROUP BY Reservaciones.FechaReserva, Reservaciones.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Zonas.Descripcion
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listado_de_Zonas_Reservadas_por_Cliente]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listado_de_Zonas_Reservadas_por_Cliente]
AS
	BEGIN
		SELECT RegistroPersonas.IdPersona, RegistroPersonas.Nombre, RegistroPersonas.Cedula, Zonas.Descripcion
		FROM RegistroPersonas INNER JOIN Reservaciones ON RegistroPersonas.IdPersona = Reservaciones.IdPersona INNER JOIN Zonas ON Reservaciones.idZona = Zonas.idZona
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listado_Empleados_Activos]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listado_Empleados_Activos]
AS
	BEGIN
		SELECT IdPersona, Empleado, Cedula, Nombre, Estado
		FROM RegistroPersonas
		WHERE Empleado = 1 AND ESTADO = 1
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listados_de_espacios_ocupados_y_libres_por_cada_parqueo]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listados_de_espacios_ocupados_y_libres_por_cada_parqueo]
AS
	BEGIN

		SELECT Parqueo_Por_Zonas.Descripcion,   Zonas.Descripcion AS Zona, 'Disponibles' Estado
		FROM Parqueo_Por_Zonas INNER JOIN Perfiles ON Parqueo_Por_Zonas.idPerfil = Perfiles.idPerfil INNER JOIN Zonas ON Parqueo_Por_Zonas.idZona = Zonas.idZona
		where espacio_disponible=1
		union
		SELECT Parqueo_Por_Zonas.Descripcion,   Zonas.Descripcion AS Zona, 'Ocupados' Estado
		FROM Parqueo_Por_Zonas INNER JOIN Perfiles ON Parqueo_Por_Zonas.idPerfil = Perfiles.idPerfil INNER JOIN Zonas ON Parqueo_Por_Zonas.idZona = Zonas.idZona
		where espacio_disponible=0
		order by estado,zona
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_CLientes_Activos_y_Autorizados]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listar_CLientes_Activos_y_Autorizados]
AS
	BEGIN
		SELECT RegistroPersonas.IdPersona, RegistroPersonas.Cedula, RegistroPersonas.Nombre, Invitados.Invitado1, Invitados.Invitado2, Invitados.Invitado3, Invitados.Invitado4, Invitados.Invitado5
		FROM   RegistroPersonas INNER JOIN Invitados ON RegistroPersonas.IdPersona = Invitados.IdPersona
		WHERE  Empleado=0 and Estado=1
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Zonas_de_Entretenimiento]    Script Date: 20/08/2018 12:32:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Listar_Zonas_de_Entretenimiento]
AS
	BEGIN
		SELECT AccionesPorZona.Descripcion, Zonas.Descripcion AS ZONA
		FROM AccionesPorZona INNER JOIN Zonas ON AccionesPorZona.idZona = Zonas.idZona
	END

GO
