USE [master]
GO
/****** Object:  Database [Proyectodb]    Script Date: 8/19/2018 10:38:00 PM ******/
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
EXEC sys.sp_db_vardecimal_storage_format N'Proyectodb', N'ON'
GO
ALTER DATABASE [Proyectodb] SET QUERY_STORE = OFF
GO
USE [Proyectodb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Proyectodb]
GO
/****** Object:  Table [dbo].[CampoGolf]    Script Date: 8/19/2018 10:38:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CampoGolf](
	[IdCampoGolf] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCampoGolf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchaBasketBall]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaBasketBall](
	[IdCanchaBasketBall] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCanchaBasketBall] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchaFutbol]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaFutbol](
	[IdCanchaFutbol] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCanchaFutbol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchaTenis]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchaTenis](
	[IdCanchaTenis] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCanchaTenis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ControlAcceso]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ControlAcceso](
	[ID] [int] NOT NULL,
	[Contrasena] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[IdEstado] [bit] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[IdHorario] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[HoraInicio] [time](7) NOT NULL,
	[HoraFin] [time](7) NOT NULL,
	[IdRangoDias] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHorario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invitados]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invitados](
	[IDI] [int] NOT NULL,
	[ID] [int] NOT NULL,
	[Invitado1] [varchar](50) NULL,
	[Invitado2] [varchar](50) NULL,
	[Invitado3] [varchar](50) NULL,
	[Invitado4] [varchar](50) NULL,
	[Invitado5] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parqueo]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parqueo](
	[IdParqueo] [int] NOT NULL,
	[TipoParqueo] [nvarchar](50) NOT NULL,
	[IdUbicacionParqueo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[IdPerfil] [int] NOT NULL,
	[NombrePerfil] [nvarchar](50) NOT NULL,
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
/****** Object:  Table [dbo].[Piscina]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piscina](
	[IdPiscina] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPiscina] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Precio]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Precio](
	[IdPrecio] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Monto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPrecio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RangoDias]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RangoDias](
	[IdRangoDias] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRangoDias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReqSalaEventos]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReqSalaEventos](
	[IdReqSE] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[TipoReq] [nvarchar](50) NOT NULL,
	[Cantidad] [nvarchar](50) NOT NULL,
	[FechaPrestamo] [datetime] NOT NULL,
	[FechaDevolucion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReqSE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requerimientos]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requerimientos](
	[IdReq] [int] NOT NULL,
	[TipoReq] [nvarchar](50) NOT NULL,
	[FechaRequerimientos] [datetime] NOT NULL,
	[HoraRequerimientos] [time](7) NOT NULL,
	[Motivo] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurante]    Script Date: 8/19/2018 10:38:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurante](
	[IdRestaurante] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRestaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaEventos]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaEventos](
	[IdSalaEventos] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReqSE] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[numeroAsientos] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSalaEventos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalonBaile]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalonBaile](
	[IdSalonBaile] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSalonBaile] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spa]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spa](
	[IdSpa] [int] NOT NULL,
	[IdEstado] [bit] NULL,
	[IdReq] [int] NOT NULL,
	[IdHorario] [int] NOT NULL,
	[FechaReserva] [datetime] NOT NULL,
	[HoraReserva] [time](7) NOT NULL,
	[Cliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdSpa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UbicacionParqueo]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionParqueo](
	[IdUbicacionParqueo] [int] NOT NULL,
	[UbicacionParqueo] [nvarchar](50) NOT NULL,
	[Disponibilidad] [bit] NULL,
	[IdParqueo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUbicacionParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID] [int] NOT NULL,
	[NombreUsuario] [nvarchar](50) NOT NULL,
	[ApellidoUsuario] [nvarchar](50) NOT NULL,
	[Estado] [bit] NULL,
	[IdHorario] [int] NOT NULL,
	[IdPerfil] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CampoGolf] ([IdCampoGolf], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente], [Descripcion]) VALUES (0, 0, 0, 500, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0, N'')
INSERT [dbo].[CampoGolf] ([IdCampoGolf], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente], [Descripcion]) VALUES (1, 1, 0, 500, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0, N'')
INSERT [dbo].[CanchaBasketBall] ([IdCanchaBasketBall], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 200, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaBasketBall] ([IdCanchaBasketBall], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 200, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaFutbol] ([IdCanchaFutbol], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 700, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaFutbol] ([IdCanchaFutbol], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 700, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaTenis] ([IdCanchaTenis], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 600, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaTenis] ([IdCanchaTenis], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 600, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Estado] ([IdEstado], [Descripcion]) VALUES (0, N'Inactivo')
INSERT [dbo].[Estado] ([IdEstado], [Descripcion]) VALUES (1, N'Activo')
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (0, N'Sin descripcion', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (1, N'Personal Restaurante Diurno', CAST(N'05:00:00' AS Time), CAST(N'14:00:00' AS Time), 2)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (2, N'Personal Restaurante Diurno', CAST(N'05:00:00' AS Time), CAST(N'14:00:00' AS Time), 7)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (3, N'Personal Restaurante Mixto', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 2)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (4, N'Personal Restaurante Mixto', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 7)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (5, N'Personal Mantenimiento Diurno', CAST(N'05:00:00' AS Time), CAST(N'14:00:00' AS Time), 2)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (6, N'Personal Mantenimiento Diurno', CAST(N'05:00:00' AS Time), CAST(N'14:00:00' AS Time), 7)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (7, N'Personal Mantenimiento Mixto', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 2)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (8, N'Personal Mantenimiento Mixto', CAST(N'13:00:00' AS Time), CAST(N'22:00:00' AS Time), 7)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (9, N'Personal Mantenimiento Nocturno', CAST(N'21:00:00' AS Time), CAST(N'02:00:00' AS Time), 2)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (10, N'Personal Mantenimiento Nocturno', CAST(N'21:00:00' AS Time), CAST(N'02:00:00' AS Time), 7)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (11, N'Personal Adminitrativo', CAST(N'07:00:00' AS Time), CAST(N'17:00:00' AS Time), 1)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (100, N'SalaEventos', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (200, N'CanchaBasketBall', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (300, N'Piscina', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (400, N'Restaurante', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (500, N'CampoGolf', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (600, N'CanchaTenis', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (700, N'CanchaFutbol', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (800, N'Spa', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (900, N'SalonBaile', CAST(N'08:00:00' AS Time), CAST(N'22:00:00' AS Time), 0)
INSERT [dbo].[Horario] ([IdHorario], [Descripcion], [HoraInicio], [HoraFin], [IdRangoDias]) VALUES (1000, N'Cliente', CAST(N'00:00:00' AS Time), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Invitados] ([IDI], [ID], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5]) VALUES (1, 1290, N'Pedro Carmona', N'', N'', N'', N'')
INSERT [dbo].[Invitados] ([IDI], [ID], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5]) VALUES (2, 1368, N'Lucia Mora', N'Martha Castro', N'', N'', N'')
INSERT [dbo].[Invitados] ([IDI], [ID], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5]) VALUES (3, 1368, N'Marco Gonzales', N'Julio cesar', N'Judas Escariote', N'', N'')
INSERT [dbo].[Invitados] ([IDI], [ID], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5]) VALUES (4, 1310, N'Marco Gonzales', N'Julio cesar', N'Judas Escariote', N'Marco Godinez', N'')
INSERT [dbo].[Invitados] ([IDI], [ID], [Invitado1], [Invitado2], [Invitado3], [Invitado4], [Invitado5]) VALUES (5, 1310, N'Luis Gonzales', N'Maria cesar', N'Maynor Escariote', N'Marcela Godinez', N'Lucas Muñoz')
INSERT [dbo].[Parqueo] ([IdParqueo], [TipoParqueo], [IdUbicacionParqueo]) VALUES (0, N'Sin Asignar', 0)
INSERT [dbo].[Parqueo] ([IdParqueo], [TipoParqueo], [IdUbicacionParqueo]) VALUES (1, N'VIP', 150)
INSERT [dbo].[Parqueo] ([IdParqueo], [TipoParqueo], [IdUbicacionParqueo]) VALUES (2, N'CLIENTE', 499)
INSERT [dbo].[Parqueo] ([IdParqueo], [TipoParqueo], [IdUbicacionParqueo]) VALUES (3, N'EMPLEADO', 799)
INSERT [dbo].[Perfiles] ([IdPerfil], [NombrePerfil], [IdEstado], [IdSalaEventos], [IdCanchaBasketBall], [IdPiscina], [IdRestaurante], [IdCampoGolf], [IdCanchaTenis], [IdCanchaFutbol], [IdSpa], [IdSalonBaile], [IdParqueo], [IdPrecio]) VALUES (0, N'Sin Derechos', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[Perfiles] ([IdPerfil], [NombrePerfil], [IdEstado], [IdSalaEventos], [IdCanchaBasketBall], [IdPiscina], [IdRestaurante], [IdCampoGolf], [IdCanchaTenis], [IdCanchaFutbol], [IdSpa], [IdSalonBaile], [IdParqueo], [IdPrecio]) VALUES (1, N'Gold', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[Perfiles] ([IdPerfil], [NombrePerfil], [IdEstado], [IdSalaEventos], [IdCanchaBasketBall], [IdPiscina], [IdRestaurante], [IdCampoGolf], [IdCanchaTenis], [IdCanchaFutbol], [IdSpa], [IdSalonBaile], [IdParqueo], [IdPrecio]) VALUES (2, N'Silver', 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 2, 2)
INSERT [dbo].[Perfiles] ([IdPerfil], [NombrePerfil], [IdEstado], [IdSalaEventos], [IdCanchaBasketBall], [IdPiscina], [IdRestaurante], [IdCampoGolf], [IdCanchaTenis], [IdCanchaFutbol], [IdSpa], [IdSalonBaile], [IdParqueo], [IdPrecio]) VALUES (3, N'Classic', 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 3)
INSERT [dbo].[Perfiles] ([IdPerfil], [NombrePerfil], [IdEstado], [IdSalaEventos], [IdCanchaBasketBall], [IdPiscina], [IdRestaurante], [IdCampoGolf], [IdCanchaTenis], [IdCanchaFutbol], [IdSpa], [IdSalonBaile], [IdParqueo], [IdPrecio]) VALUES (4, N'Empleados', 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 4)
INSERT [dbo].[Piscina] ([IdPiscina], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 300, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Piscina] ([IdPiscina], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 300, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Precio] ([IdPrecio], [Descripcion], [Monto]) VALUES (0, N'Basico', 5000)
INSERT [dbo].[Precio] ([IdPrecio], [Descripcion], [Monto]) VALUES (1, N'Gold', 150000)
INSERT [dbo].[Precio] ([IdPrecio], [Descripcion], [Monto]) VALUES (2, N'Silver', 100000)
INSERT [dbo].[Precio] ([IdPrecio], [Descripcion], [Monto]) VALUES (3, N'Classic', 50000)
INSERT [dbo].[Precio] ([IdPrecio], [Descripcion], [Monto]) VALUES (4, N'Empleados', 0)
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (0, N'Domingos-Sabado')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (1, N'Lunes-Viernes')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (2, N'Martes-Sabados')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (3, N'Miercoles-Domingos')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (4, N'Jueves-Lunes')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (5, N'Viernes-Martes')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (6, N'Sabados-Miercioles')
INSERT [dbo].[RangoDias] ([IdRangoDias], [Descripcion]) VALUES (7, N'Domingos-Jueves')
INSERT [dbo].[ReqSalaEventos] ([IdReqSE], [Id], [TipoReq], [Cantidad], [FechaPrestamo], [FechaDevolucion]) VALUES (0, 0, N'Sin descripcion', N'Sin descripcion', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Requerimientos] ([IdReq], [TipoReq], [FechaRequerimientos], [HoraRequerimientos], [Motivo]) VALUES (0, N'Sin Requerimiento', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), N'Sin Requerimiento')
INSERT [dbo].[Restaurante] ([IdRestaurante], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 400, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Restaurante] ([IdRestaurante], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 400, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[SalaEventos] ([IdSalaEventos], [IdEstado], [IdReqSE], [IdHorario], [numeroAsientos], [FechaReserva], [HoraReserva]) VALUES (0, 0, 0, 100, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time))
INSERT [dbo].[SalaEventos] ([IdSalaEventos], [IdEstado], [IdReqSE], [IdHorario], [numeroAsientos], [FechaReserva], [HoraReserva]) VALUES (1, 1, 0, 100, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time))
INSERT [dbo].[SalonBaile] ([IdSalonBaile], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 900, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[SalonBaile] ([IdSalonBaile], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 900, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Spa] ([IdSpa], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 800, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Spa] ([IdSpa], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 800, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (1, N'A-01', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (2, N'A-02', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (3, N'A-03', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (4, N'A-04', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (5, N'A-05', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (6, N'A-06', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (7, N'A-07', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (8, N'A-08', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (9, N'A-09', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (10, N'A-10', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (11, N'A-11', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (12, N'A-12', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (13, N'A-13', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (14, N'A-14', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (15, N'A-15', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (16, N'A-16', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (17, N'A-17', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (18, N'A-18', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (19, N'A-19', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (20, N'A-20', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (21, N'A-21', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (22, N'A-22', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (23, N'A-23', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (24, N'A-24', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (25, N'A-25', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (26, N'A-26', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (27, N'A-27', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (28, N'A-28', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (29, N'A-29', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (30, N'A-30', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (31, N'A-31', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (32, N'A-32', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (33, N'A-33', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (34, N'A-34', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (35, N'A-35', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (36, N'A-36', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (37, N'A-37', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (38, N'A-38', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (39, N'A-39', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (40, N'A-40', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (41, N'A-41', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (42, N'A-42', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (43, N'A-43', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (44, N'A-44', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (45, N'A-45', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (46, N'A-46', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (47, N'A-47', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (48, N'A-48', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (49, N'A-49', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (50, N'A-50', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (51, N'A-51', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (52, N'A-52', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (53, N'A-53', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (54, N'A-54', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (55, N'A-55', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (56, N'A-56', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (57, N'A-57', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (58, N'A-58', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (59, N'A-59', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (60, N'A-60', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (61, N'A-61', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (62, N'A-62', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (63, N'A-63', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (64, N'A-64', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (65, N'A-65', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (66, N'A-66', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (67, N'A-67', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (68, N'A-68', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (69, N'A-69', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (70, N'A-70', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (71, N'A-71', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (72, N'A-72', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (73, N'A-73', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (74, N'A-74', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (75, N'A-75', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (76, N'A-76', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (77, N'A-77', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (78, N'A-78', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (79, N'A-79', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (80, N'A-80', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (81, N'A-81', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (82, N'A-82', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (83, N'A-83', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (84, N'A-84', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (85, N'A-85', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (86, N'A-86', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (87, N'A-87', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (88, N'A-88', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (89, N'A-89', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (90, N'A-90', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (91, N'A-91', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (92, N'A-92', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (93, N'A-93', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (94, N'A-94', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (95, N'A-95', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (96, N'A-96', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (97, N'A-97', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (98, N'A-98', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (99, N'A-99', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (100, N'A-100', 1, 1)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (101, N'A-101', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (102, N'A-102', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (103, N'A-103', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (104, N'A-104', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (105, N'A-105', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (106, N'A-106', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (107, N'A-107', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (108, N'A-108', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (109, N'A-109', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (110, N'A-110', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (111, N'A-111', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (112, N'A-112', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (113, N'A-113', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (114, N'A-114', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (115, N'A-115', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (116, N'A-116', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (117, N'A-117', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (118, N'A-118', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (119, N'A-119', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (120, N'A-120', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (121, N'A-121', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (122, N'A-122', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (123, N'A-123', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (124, N'A-124', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (125, N'A-125', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (126, N'A-126', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (127, N'A-127', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (128, N'A-128', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (129, N'A-129', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (130, N'A-130', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (131, N'A-131', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (132, N'A-132', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (133, N'A-133', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (134, N'A-134', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (135, N'A-135', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (136, N'A-136', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (137, N'A-137', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (138, N'A-138', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (139, N'A-139', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (140, N'A-140', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (141, N'A-141', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (142, N'A-142', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (143, N'A-143', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (144, N'A-144', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (145, N'A-145', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (146, N'A-146', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (147, N'A-147', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (148, N'A-148', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (149, N'A-149', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (150, N'A-150', 1, 1)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (200, N'B-200', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (201, N'B-201', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (202, N'B-202', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (203, N'B-203', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (204, N'B-204', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (205, N'B-205', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (206, N'B-206', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (207, N'B-207', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (208, N'B-208', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (209, N'B-209', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (210, N'B-210', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (211, N'B-211', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (212, N'B-212', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (213, N'B-213', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (214, N'B-214', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (215, N'B-215', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (216, N'B-216', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (217, N'B-217', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (218, N'B-218', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (219, N'B-219', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (220, N'B-220', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (221, N'B-221', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (222, N'B-222', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (223, N'B-223', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (224, N'B-224', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (225, N'B-225', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (226, N'B-226', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (227, N'B-227', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (228, N'B-228', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (229, N'B-229', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (230, N'B-230', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (231, N'B-231', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (232, N'B-232', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (233, N'B-233', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (234, N'B-234', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (235, N'B-235', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (236, N'B-236', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (237, N'B-237', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (238, N'B-238', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (239, N'B-239', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (240, N'B-240', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (241, N'B-241', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (242, N'B-242', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (243, N'B-243', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (244, N'B-244', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (245, N'B-245', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (246, N'B-246', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (247, N'B-247', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (248, N'B-248', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (249, N'B-249', 1, 2)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (250, N'B-250', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (251, N'B-251', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (252, N'B-252', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (253, N'B-253', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (254, N'B-254', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (255, N'B-255', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (256, N'B-256', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (257, N'B-257', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (258, N'B-258', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (259, N'B-259', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (260, N'B-260', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (261, N'B-261', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (262, N'B-262', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (263, N'B-263', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (264, N'B-264', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (265, N'B-265', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (266, N'B-266', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (267, N'B-267', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (268, N'B-268', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (269, N'B-269', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (270, N'B-270', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (271, N'B-271', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (272, N'B-272', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (273, N'B-273', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (274, N'B-274', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (275, N'B-275', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (276, N'B-276', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (277, N'B-277', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (278, N'B-278', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (279, N'B-279', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (280, N'B-280', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (281, N'B-281', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (282, N'B-282', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (283, N'B-283', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (284, N'B-284', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (285, N'B-285', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (286, N'B-286', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (287, N'B-287', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (288, N'B-288', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (289, N'B-289', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (290, N'B-290', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (291, N'B-291', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (292, N'B-292', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (293, N'B-293', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (294, N'B-294', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (295, N'B-295', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (296, N'B-296', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (297, N'B-297', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (298, N'B-298', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (299, N'B-299', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (300, N'B-300', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (301, N'B-301', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (302, N'B-302', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (303, N'B-303', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (304, N'B-304', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (305, N'B-305', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (306, N'B-306', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (307, N'B-307', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (308, N'B-308', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (309, N'B-309', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (310, N'B-310', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (311, N'B-311', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (312, N'B-312', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (313, N'B-313', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (314, N'B-314', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (315, N'B-315', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (316, N'B-316', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (317, N'B-317', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (318, N'B-318', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (319, N'B-319', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (320, N'B-320', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (321, N'B-321', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (322, N'B-322', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (323, N'B-323', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (324, N'B-324', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (325, N'B-325', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (326, N'B-326', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (327, N'B-327', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (328, N'B-328', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (329, N'B-329', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (330, N'B-330', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (331, N'B-331', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (332, N'B-332', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (333, N'B-333', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (334, N'B-334', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (335, N'B-335', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (336, N'B-336', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (337, N'B-337', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (338, N'B-338', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (339, N'B-339', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (340, N'B-340', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (341, N'B-341', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (342, N'B-342', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (343, N'B-343', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (344, N'B-344', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (345, N'B-345', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (346, N'B-346', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (347, N'B-347', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (348, N'B-348', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (349, N'B-349', 1, 2)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (350, N'B-350', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (351, N'B-351', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (352, N'B-352', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (353, N'B-353', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (354, N'B-354', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (355, N'B-355', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (356, N'B-356', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (357, N'B-357', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (358, N'B-358', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (359, N'B-359', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (360, N'B-360', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (361, N'B-361', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (362, N'B-362', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (363, N'B-363', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (364, N'B-364', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (365, N'B-365', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (366, N'B-366', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (367, N'B-367', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (368, N'B-368', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (369, N'B-369', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (370, N'B-370', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (371, N'B-371', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (372, N'B-372', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (373, N'B-373', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (374, N'B-374', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (375, N'B-375', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (376, N'B-376', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (377, N'B-377', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (378, N'B-378', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (379, N'B-379', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (380, N'B-380', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (381, N'B-381', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (382, N'B-382', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (383, N'B-383', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (384, N'B-384', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (385, N'B-385', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (386, N'B-386', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (387, N'B-387', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (388, N'B-388', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (389, N'B-389', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (390, N'B-390', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (391, N'B-391', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (392, N'B-392', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (393, N'B-393', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (394, N'B-394', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (395, N'B-395', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (396, N'B-396', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (397, N'B-397', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (398, N'B-398', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (399, N'B-399', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (400, N'B-400', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (401, N'B-401', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (402, N'B-402', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (403, N'B-403', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (404, N'B-404', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (405, N'B-405', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (406, N'B-406', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (407, N'B-407', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (408, N'B-408', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (409, N'B-409', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (410, N'B-410', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (411, N'B-411', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (412, N'B-412', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (413, N'B-413', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (414, N'B-414', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (415, N'B-415', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (416, N'B-416', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (417, N'B-417', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (418, N'B-418', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (419, N'B-419', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (420, N'B-420', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (421, N'B-421', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (422, N'B-422', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (423, N'B-423', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (424, N'B-424', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (425, N'B-425', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (426, N'B-426', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (427, N'B-427', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (428, N'B-428', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (429, N'B-429', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (430, N'B-430', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (431, N'B-431', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (432, N'B-432', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (433, N'B-433', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (434, N'B-434', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (435, N'B-435', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (436, N'B-436', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (437, N'B-437', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (438, N'B-438', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (439, N'B-439', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (440, N'B-440', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (441, N'B-441', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (442, N'B-442', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (443, N'B-443', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (444, N'B-444', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (445, N'B-445', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (446, N'B-446', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (447, N'B-447', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (448, N'B-448', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (449, N'B-449', 1, 2)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (450, N'B-450', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (451, N'B-451', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (452, N'B-452', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (453, N'B-453', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (454, N'B-454', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (455, N'B-455', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (456, N'B-456', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (457, N'B-457', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (458, N'B-458', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (459, N'B-459', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (460, N'B-460', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (461, N'B-461', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (462, N'B-462', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (463, N'B-463', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (464, N'B-464', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (465, N'B-465', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (466, N'B-466', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (467, N'B-467', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (468, N'B-468', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (469, N'B-469', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (470, N'B-470', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (471, N'B-471', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (472, N'B-472', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (473, N'B-473', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (474, N'B-474', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (475, N'B-475', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (476, N'B-476', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (477, N'B-477', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (478, N'B-478', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (479, N'B-479', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (480, N'B-480', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (481, N'B-481', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (482, N'B-482', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (483, N'B-483', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (484, N'B-484', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (485, N'B-485', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (486, N'B-486', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (487, N'B-487', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (488, N'B-488', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (489, N'B-489', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (490, N'B-490', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (491, N'B-491', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (492, N'B-492', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (493, N'B-493', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (494, N'B-494', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (495, N'B-495', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (496, N'B-496', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (497, N'B-497', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (498, N'B-498', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (499, N'B-499', 1, 2)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (500, N'C-500', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (501, N'C-501', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (502, N'C-502', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (503, N'C-503', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (504, N'C-504', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (505, N'C-505', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (506, N'C-506', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (507, N'C-507', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (508, N'C-508', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (509, N'C-509', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (510, N'C-510', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (511, N'C-511', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (512, N'C-512', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (513, N'C-513', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (514, N'C-514', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (515, N'C-515', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (516, N'C-516', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (517, N'C-517', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (518, N'C-518', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (519, N'C-519', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (520, N'C-520', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (521, N'C-521', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (522, N'C-522', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (523, N'C-523', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (524, N'C-524', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (525, N'C-525', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (526, N'C-526', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (527, N'C-527', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (528, N'C-528', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (529, N'C-529', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (530, N'C-530', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (531, N'C-531', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (532, N'C-532', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (533, N'C-533', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (534, N'C-534', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (535, N'C-535', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (536, N'C-536', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (537, N'C-537', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (538, N'C-538', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (539, N'C-539', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (540, N'C-540', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (541, N'C-541', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (542, N'C-542', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (543, N'C-543', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (544, N'C-544', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (545, N'C-545', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (546, N'C-546', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (547, N'C-547', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (548, N'C-548', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (549, N'C-549', 1, 3)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (550, N'C-550', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (551, N'C-551', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (552, N'C-552', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (553, N'C-553', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (554, N'C-554', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (555, N'C-555', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (556, N'C-556', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (557, N'C-557', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (558, N'C-558', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (559, N'C-559', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (560, N'C-560', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (561, N'C-561', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (562, N'C-562', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (563, N'C-563', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (564, N'C-564', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (565, N'C-565', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (566, N'C-566', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (567, N'C-567', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (568, N'C-568', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (569, N'C-569', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (570, N'C-570', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (571, N'C-571', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (572, N'C-572', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (573, N'C-573', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (574, N'C-574', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (575, N'C-575', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (576, N'C-576', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (577, N'C-577', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (578, N'C-578', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (579, N'C-579', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (580, N'C-580', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (581, N'C-581', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (582, N'C-582', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (583, N'C-583', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (584, N'C-584', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (585, N'C-585', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (586, N'C-586', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (587, N'C-587', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (588, N'C-588', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (589, N'C-589', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (590, N'C-590', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (591, N'C-591', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (592, N'C-592', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (593, N'C-593', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (594, N'C-594', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (595, N'C-595', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (596, N'C-596', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (597, N'C-597', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (598, N'C-598', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (599, N'C-599', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (600, N'C-600', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (601, N'C-601', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (602, N'C-602', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (603, N'C-603', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (604, N'C-604', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (605, N'C-605', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (606, N'C-606', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (607, N'C-607', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (608, N'C-608', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (609, N'C-609', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (610, N'C-610', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (611, N'C-611', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (612, N'C-612', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (613, N'C-613', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (614, N'C-614', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (615, N'C-615', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (616, N'C-616', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (617, N'C-617', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (618, N'C-618', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (619, N'C-619', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (620, N'C-620', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (621, N'C-621', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (622, N'C-622', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (623, N'C-623', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (624, N'C-624', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (625, N'C-625', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (626, N'C-626', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (627, N'C-627', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (628, N'C-628', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (629, N'C-629', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (630, N'C-630', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (631, N'C-631', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (632, N'C-632', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (633, N'C-633', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (634, N'C-634', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (635, N'C-635', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (636, N'C-636', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (637, N'C-637', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (638, N'C-638', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (639, N'C-639', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (640, N'C-640', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (641, N'C-641', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (642, N'C-642', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (643, N'C-643', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (644, N'C-644', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (645, N'C-645', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (646, N'C-646', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (647, N'C-647', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (648, N'C-648', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (649, N'C-649', 1, 3)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (650, N'C-650', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (651, N'C-651', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (652, N'C-652', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (653, N'C-653', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (654, N'C-654', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (655, N'C-655', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (656, N'C-656', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (657, N'C-657', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (658, N'C-658', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (659, N'C-659', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (660, N'C-660', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (661, N'C-661', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (662, N'C-662', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (663, N'C-663', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (664, N'C-664', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (665, N'C-665', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (666, N'C-666', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (667, N'C-667', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (668, N'C-668', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (669, N'C-669', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (670, N'C-670', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (671, N'C-671', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (672, N'C-672', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (673, N'C-673', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (674, N'C-674', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (675, N'C-675', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (676, N'C-676', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (677, N'C-677', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (678, N'C-678', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (679, N'C-679', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (680, N'C-680', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (681, N'C-681', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (682, N'C-682', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (683, N'C-683', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (684, N'C-684', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (685, N'C-685', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (686, N'C-686', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (687, N'C-687', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (688, N'C-688', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (689, N'C-689', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (690, N'C-690', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (691, N'C-691', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (692, N'C-692', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (693, N'C-693', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (694, N'C-694', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (695, N'C-695', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (696, N'C-696', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (697, N'C-697', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (698, N'C-698', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (699, N'C-699', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (700, N'C-700', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (701, N'C-701', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (702, N'C-702', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (703, N'C-703', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (704, N'C-704', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (705, N'C-705', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (706, N'C-706', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (707, N'C-707', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (708, N'C-708', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (709, N'C-709', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (710, N'C-710', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (711, N'C-711', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (712, N'C-712', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (713, N'C-713', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (714, N'C-714', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (715, N'C-715', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (716, N'C-716', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (717, N'C-717', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (718, N'C-718', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (719, N'C-719', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (720, N'C-720', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (721, N'C-721', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (722, N'C-722', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (723, N'C-723', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (724, N'C-724', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (725, N'C-725', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (726, N'C-726', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (727, N'C-727', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (728, N'C-728', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (729, N'C-729', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (730, N'C-730', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (731, N'C-731', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (732, N'C-732', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (733, N'C-733', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (734, N'C-734', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (735, N'C-735', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (736, N'C-736', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (737, N'C-737', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (738, N'C-738', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (739, N'C-739', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (740, N'C-740', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (741, N'C-741', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (742, N'C-742', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (743, N'C-743', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (744, N'C-744', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (745, N'C-745', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (746, N'C-746', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (747, N'C-747', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (748, N'C-748', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (749, N'C-749', 1, 3)
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (750, N'C-750', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (751, N'C-751', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (752, N'C-752', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (753, N'C-753', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (754, N'C-754', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (755, N'C-755', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (756, N'C-756', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (757, N'C-757', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (758, N'C-758', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (759, N'C-759', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (760, N'C-760', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (761, N'C-761', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (762, N'C-762', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (763, N'C-763', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (764, N'C-764', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (765, N'C-765', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (766, N'C-766', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (767, N'C-767', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (768, N'C-768', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (769, N'C-769', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (770, N'C-770', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (771, N'C-771', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (772, N'C-772', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (773, N'C-773', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (774, N'C-774', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (775, N'C-775', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (776, N'C-776', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (777, N'C-777', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (778, N'C-778', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (779, N'C-779', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (780, N'C-780', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (781, N'C-781', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (782, N'C-782', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (783, N'C-783', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (784, N'C-784', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (785, N'C-785', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (786, N'C-786', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (787, N'C-787', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (788, N'C-788', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (789, N'C-789', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (790, N'C-790', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (791, N'C-791', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (792, N'C-792', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (793, N'C-793', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (794, N'C-794', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (795, N'C-795', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (796, N'C-796', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (797, N'C-797', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (798, N'C-798', 1, 3)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo], [Disponibilidad], [IdParqueo]) VALUES (799, N'C-799', 1, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1011, N'Luisa', N'Sierra', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1012, N'Julian', N'Duque', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1041, N'Amalia', N'Gutierrez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1054, N'Miguel', N'Suarez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1055, N'Adriana', N'Hoyos', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1056, N'Javier', N'Santana', 1, 1, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1067, N'Dalia', N'Lemos', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1068, N'Amalia', N'Vergara', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1075, N'Natalia', N'Aristizabal', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1076, N'Jorge', N'Idarraga', 1, 3, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1078, N'Rafael', N'Cortes', 1, 8, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1079, N'Elena', N'Perez', 1, 11, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1080, N'Jacobo', N'Bustos', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1152, N'Alberto', N'Peláez', 1, 11, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1153, N'Tomas', N'Ramirez', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1154, N'Angelina', N'Pulgarin', 1, 4, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1167, N'Juan', N'Arango', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1168, N'Maria', N'Lema', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1169, N'Monica', N'Castro', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1284, N'Antonio', N'Merizalde', 1, 9, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1285, N'Francisco', N'Arias', 1, 9, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1290, N'Oscar', N'Cifuentes', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1291, N'Carmen', N'Uribe', 1, 10, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1292, N'Isabel', N'Salamanca', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1293, N'Karina', N'Jimenez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1294, N'Brenda', N'Aguirre', 1, 4, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1299, N'Catalina', N'Osorio', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1300, N'Carlos', N'Gomez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1301, N'Manuela', N'Casadiegos', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1302, N'Elisa', N'Mota', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1303, N'Dinara', N'Lopez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1310, N'Alejandra', N'Florez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1311, N'Jesus', N'Bermudez', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1329, N'Julieth', N'Osorio', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1330, N'Eliana', N'Ramirez', 1, 7, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1331, N'Juliana', N'Castrillón', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1333, N'Carolina', N'Cano', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1334, N'Alicia', N'Perez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1352, N'Manuel', N'Toro', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1353, N'Gabriel', N'Rodas', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1354, N'Susana', N'Ruiz', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1359, N'Sara', N'Vallejo', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1360, N'Gustavo', N'Mendez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1361, N'Raquel', N'Medina', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1368, N'Tammy', N'Mendez', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1369, N'Sandra', N'Cano', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1370, N'Evelyn', N'Diaz', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1426, N'Pablo', N'Rojas', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1427, N'David', N'Jaramillo', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1428, N'Gloria', N'Tamayo', 1, 4, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1509, N'Pamela', N'Serna', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1510, N'Jessica', N'Marquez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1516, N'Guillermo', N'Fernandez', 1, 6, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1517, N'Karen', N'Restrepo', 1, 9, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1518, N'Leonardo', N'Vasquez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1529, N'Mariana', N'Gomez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1530, N'Daniel', N'Ospina', 1, 11, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1531, N'Angela', N'Alzate', 1, 5, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1556, N'Andrés', N'Peláez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1557, N'Simón', N'Gracía', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1558, N'Sofia', N'Marulanda', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1572, N'Lina', N'Villamizar', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1573, N'Marcela', N'De santis', 1, 7, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1574, N'Samuel', N'Rico', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1656, N'Tatiana', N'Arango', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1657, N'Jose', N'Carmona', 1, 7, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1658, N'Daniela', N'Franco', 1, 8, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1673, N'Stepania', N'Zapata', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1674, N'David', N'Lemus', 1, 1, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1675, N'Jorge', N'Zea', 1, 2, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1676, N'Sebastian', N'Carmona', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1677, N'Juan', N'Hernandez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1679, N'Luis', N'Melano', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1695, N'Camilo', N'Berrio', 1, 8, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1696, N'Cathy', N'Higuita', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1723, N'Esteban', N'Giraldo', 1, 3, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1724, N'Alexandra', N'Guerrero', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1725, N'Sergio', N'Posada', 1, 2, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1727, N'Cristina', N'Cock', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1758, N'Melisa', N'Uribe', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1759, N'Mauricio', N'Arango', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1774, N'Estefania', N'Villegas', 1, 6, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1792, N'Monica', N'Arango', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1793, N'Gonzalo', N'Betancur', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1794, N'Ana Maria', N'Rodríguez', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1814, N'Andrea', N'Carmona', 1, 5, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1815, N'Diana', N'Caro', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1816, N'Alejandro', N'Simanca', 1, 3, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1906, N'Roberta', N'Toledo', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1907, N'Melina', N'Acevedo', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1908, N'Patricia', N'Diez', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1922, N'Barbara', N'Henao', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1923, N'Lisa', N'Guerra', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1931, N'Felipe', N'Arango', 1, 10, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1932, N'Elena', N'Garces', 1, 10, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1933, N'Miguel', N'Sanchez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1949, N'Paula', N'Palacio', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1950, N'Luisa', N'Granda', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1960, N'Felipe', N'Girando', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1961, N'Santiago', N'Jaramillo', 1, 1000, 1)
GO
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1962, N'Hilda', N'Rodriguez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1964, N'Mariana', N'Diaz', 1, 2, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1966, N'Camila', N'Dominguez', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1967, N'Santiago', N'Betancurt', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1968, N'Jeronimo', N'Burgos', 1, 6, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1969, N'Karla', N'Molina', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1975, N'Carlos', N'Posada', 1, 1000, 3)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1976, N'Ana', N'Jaramillo', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1977, N'Virginia', N'Saldarriaga', 1, 1, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1978, N'Lucero', N'Diaz', 1, 5, 4)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (1979, N'Federico', N'Arroyave', 1, 1000, 1)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (2725, N'Isabella', N'Marquez', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (2901, N'Maritza', N'Muñoz', 1, 1000, 2)
INSERT [dbo].[Usuario] ([ID], [NombreUsuario], [ApellidoUsuario], [Estado], [IdHorario], [IdPerfil]) VALUES (2967, N'Victoria', N'Hincapie', 1, 1000, 2)
ALTER TABLE [dbo].[CampoGolf] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[CampoGolf] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[CampoGolf] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[CanchaBasketBall] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[CanchaBasketBall] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[CanchaBasketBall] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[CanchaFutbol] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[CanchaFutbol] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[CanchaFutbol] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[CanchaTenis] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[CanchaTenis] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[CanchaTenis] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[ControlAcceso] ADD  DEFAULT ('12345') FOR [Contrasena]
GO
ALTER TABLE [dbo].[Estado] ADD  DEFAULT ('No Disponible') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('Sin descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('06:00') FOR [HoraInicio]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('06:00') FOR [HoraFin]
GO
ALTER TABLE [dbo].[Invitados] ADD  DEFAULT ('') FOR [Invitado1]
GO
ALTER TABLE [dbo].[Invitados] ADD  DEFAULT ('') FOR [Invitado2]
GO
ALTER TABLE [dbo].[Invitados] ADD  DEFAULT ('') FOR [Invitado3]
GO
ALTER TABLE [dbo].[Invitados] ADD  DEFAULT ('') FOR [Invitado4]
GO
ALTER TABLE [dbo].[Invitados] ADD  DEFAULT ('Invitado con costo adicional') FOR [Invitado5]
GO
ALTER TABLE [dbo].[Parqueo] ADD  DEFAULT ('Sin Asignar') FOR [TipoParqueo]
GO
ALTER TABLE [dbo].[Perfiles] ADD  DEFAULT ('Sin descripcion') FOR [NombrePerfil]
GO
ALTER TABLE [dbo].[Piscina] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[Piscina] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[Piscina] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[Precio] ADD  DEFAULT ('Entrada y Piscina') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Precio] ADD  DEFAULT ((5000)) FOR [Monto]
GO
ALTER TABLE [dbo].[RangoDias] ADD  DEFAULT ('Domingo-Lunes') FOR [Descripcion]
GO
ALTER TABLE [dbo].[ReqSalaEventos] ADD  DEFAULT ('Sin descripcion') FOR [TipoReq]
GO
ALTER TABLE [dbo].[ReqSalaEventos] ADD  DEFAULT ('Sin descripcion') FOR [Cantidad]
GO
ALTER TABLE [dbo].[ReqSalaEventos] ADD  DEFAULT ('') FOR [FechaPrestamo]
GO
ALTER TABLE [dbo].[ReqSalaEventos] ADD  DEFAULT ('') FOR [FechaDevolucion]
GO
ALTER TABLE [dbo].[Requerimientos] ADD  DEFAULT ('Sin Requerimiento') FOR [TipoReq]
GO
ALTER TABLE [dbo].[Requerimientos] ADD  DEFAULT ('') FOR [FechaRequerimientos]
GO
ALTER TABLE [dbo].[Requerimientos] ADD  DEFAULT ('00:00') FOR [HoraRequerimientos]
GO
ALTER TABLE [dbo].[Requerimientos] ADD  DEFAULT ('Sin Requerimiento') FOR [Motivo]
GO
ALTER TABLE [dbo].[Restaurante] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[Restaurante] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[Restaurante] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[SalaEventos] ADD  DEFAULT ((0)) FOR [numeroAsientos]
GO
ALTER TABLE [dbo].[SalaEventos] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[SalaEventos] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[SalonBaile] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[SalonBaile] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[SalonBaile] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[Spa] ADD  DEFAULT ('') FOR [FechaReserva]
GO
ALTER TABLE [dbo].[Spa] ADD  DEFAULT ('06:00') FOR [HoraReserva]
GO
ALTER TABLE [dbo].[Spa] ADD  DEFAULT ((0)) FOR [Cliente]
GO
ALTER TABLE [dbo].[UbicacionParqueo] ADD  DEFAULT ('Sin Asignar') FOR [UbicacionParqueo]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((0)) FOR [Estado]
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
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Clientes'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE  Parqueo.TipoParqueo = 'CLIENTE'
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - VIP'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE Parqueo.TipoParqueo = 'VIP' 
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Empleados'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE Parqueo.TipoParqueo = 'EMPLEADO'
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_CLIENTES]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_CLIENTES]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Clientes'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE  Parqueo.TipoParqueo = 'CLIENTE'
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_EMPLEADOS]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_EMPLEADOS]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - Empleados'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE Parqueo.TipoParqueo = 'EMPLEADO'
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_VIP]    Script Date: 8/19/2018 10:38:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO_VIP]
AS
	BEGIN
		SELECT COUNT(UbicacionParqueo.Disponibilidad) as 'Campos Disponibles - VIP'		FROM UbicacionParqueo 
						INNER JOIN Parqueo ON UbicacionParqueo.IdParqueo = Parqueo.IdParqueo		WHERE Parqueo.TipoParqueo = 'VIP' 
	END
GO
/****** Object:  StoredProcedure [dbo].[SP_ListadoClientesActivos]    Script Date: 8/19/2018 10:38:03 PM ******/
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
/****** Object:  StoredProcedure [dbo].[SP_ListadoEmpleadosRegistradosyActivos]    Script Date: 8/19/2018 10:38:03 PM ******/
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
GO
USE [master]
GO
ALTER DATABASE [Proyectodb] SET  READ_WRITE 
GO

create PROCEDURE [dbo].[SP_ListadoZonasComunes]
AS
BEGIN
	select	IdCampoGolf,IdCanchaBasketBall,IdCanchaFutbol,IdCanchaTenis,IdPiscina,IdParqueo,IdRestaurante,IdSalaEventos,IdSalonBaile,IdSpa
	from Perfiles
END
GO
USE [master]
GO
ALTER DATABASE [Proyectodb] SET  READ_WRITE 
GO
SELECT * FROM Perfiles