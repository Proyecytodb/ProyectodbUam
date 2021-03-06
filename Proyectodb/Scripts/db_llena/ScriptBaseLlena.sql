USE [master]
GO
/****** Object:  Database [Proyectodb]    Script Date: 7/13/2018 6:21:09 PM ******/
CREATE DATABASE [Proyectodb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Expediente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\Proyectodb.mdf' , SIZE = 8192KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'Expediente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\Log\Proyectodb.ldf' , SIZE = 6144KB , MAXSIZE = 10240KB , FILEGROWTH = 5120KB )
GO
ALTER DATABASE [Proyectodb] SET COMPATIBILITY_LEVEL = 140
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
/****** Object:  Table [dbo].[CampoGolf]    Script Date: 7/13/2018 6:21:10 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[IdCampoGolf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchaBasketBall]    Script Date: 7/13/2018 6:21:10 PM ******/
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
/****** Object:  Table [dbo].[CanchaFutbol]    Script Date: 7/13/2018 6:21:10 PM ******/
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
/****** Object:  Table [dbo].[CanchaTenis]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Estado]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Horario]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Parqueo]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Perfiles]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Piscina]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Precio]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[RagoDias]    Script Date: 7/13/2018 6:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RagoDias](
	[IdRangoDias] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRangoDias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReqSalaEventos]    Script Date: 7/13/2018 6:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReqSalaEventos](
	[IdReqSE] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Requerimientos]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Restaurante]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[SalaEventos]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[SalonBaile]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[Spa]    Script Date: 7/13/2018 6:21:11 PM ******/
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
/****** Object:  Table [dbo].[UbicacionParqueo]    Script Date: 7/13/2018 6:21:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UbicacionParqueo](
	[IdUbicacionParqueo] [int] NOT NULL,
	[UbicacionParqueo] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUbicacionParqueo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 7/13/2018 6:21:11 PM ******/
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
INSERT [dbo].[CampoGolf] ([IdCampoGolf], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 500, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CampoGolf] ([IdCampoGolf], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 500, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaBasketBall] ([IdCanchaBasketBall], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 200, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaBasketBall] ([IdCanchaBasketBall], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 200, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaFutbol] ([IdCanchaFutbol], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 700, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaFutbol] ([IdCanchaFutbol], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 700, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaTenis] ([IdCanchaTenis], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 600, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[CanchaTenis] ([IdCanchaTenis], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 600, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Estado] ([IdEstado], [Descripcion]) VALUES (0, N'No Disponible')
INSERT [dbo].[Estado] ([IdEstado], [Descripcion]) VALUES (1, N'Disponible')
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
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (0, N'Domingos-Sabado')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (1, N'Lunes-Viernes')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (2, N'Martes-Sabados')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (3, N'Miercoles-Domingos')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (4, N'Jueves-Lunes')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (5, N'Viernes-Martes')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (6, N'Sabados-Miercioles')
INSERT [dbo].[RagoDias] ([IdRangoDias], [Descripcion]) VALUES (7, N'Domingos-Jueves')
INSERT [dbo].[ReqSalaEventos] ([IdReqSE], [TipoReq], [Cantidad], [FechaPrestamo], [FechaDevolucion]) VALUES (0, N'Sin descripcion', N'Sin descripcion', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Requerimientos] ([IdReq], [TipoReq], [FechaRequerimientos], [HoraRequerimientos], [Motivo]) VALUES (0, N'Sin Requerimiento', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), N'Sin Requerimiento')
INSERT [dbo].[Restaurante] ([IdRestaurante], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 400, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Restaurante] ([IdRestaurante], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 400, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[SalaEventos] ([IdSalaEventos], [IdEstado], [IdReqSE], [IdHorario], [numeroAsientos], [FechaReserva], [HoraReserva]) VALUES (0, 0, 0, 100, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time))
INSERT [dbo].[SalaEventos] ([IdSalaEventos], [IdEstado], [IdReqSE], [IdHorario], [numeroAsientos], [FechaReserva], [HoraReserva]) VALUES (1, 1, 0, 100, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time))
INSERT [dbo].[SalonBaile] ([IdSalonBaile], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 900, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[SalonBaile] ([IdSalonBaile], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 900, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Spa] ([IdSpa], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (0, 0, 0, 800, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[Spa] ([IdSpa], [IdEstado], [IdReq], [IdHorario], [FechaReserva], [HoraReserva], [Cliente]) VALUES (1, 1, 0, 800, CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'00:00:00' AS Time), 0)
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (0, N'Sin Asignar')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (1, N'A-01')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (2, N'A-02')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (3, N'A-03')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (4, N'A-04')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (5, N'A-05')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (6, N'A-06')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (7, N'A-07')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (8, N'A-08')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (9, N'A-09')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (10, N'A-10')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (11, N'A-11')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (12, N'A-12')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (13, N'A-13')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (14, N'A-14')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (15, N'A-15')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (16, N'A-16')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (17, N'A-17')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (18, N'A-18')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (19, N'A-19')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (20, N'A-20')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (21, N'A-21')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (22, N'A-22')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (23, N'A-23')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (24, N'A-24')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (25, N'A-25')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (26, N'A-26')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (27, N'A-27')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (28, N'A-28')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (29, N'A-29')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (30, N'A-30')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (31, N'A-31')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (32, N'A-32')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (33, N'A-33')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (34, N'A-34')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (35, N'A-35')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (36, N'A-36')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (37, N'A-37')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (38, N'A-38')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (39, N'A-39')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (40, N'A-40')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (41, N'A-41')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (42, N'A-42')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (43, N'A-43')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (44, N'A-44')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (45, N'A-45')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (46, N'A-46')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (47, N'A-47')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (48, N'A-48')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (49, N'A-49')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (50, N'A-50')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (51, N'A-51')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (52, N'A-52')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (53, N'A-53')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (54, N'A-54')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (55, N'A-55')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (56, N'A-56')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (57, N'A-57')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (58, N'A-58')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (59, N'A-59')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (60, N'A-60')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (61, N'A-61')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (62, N'A-62')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (63, N'A-63')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (64, N'A-64')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (65, N'A-65')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (66, N'A-66')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (67, N'A-67')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (68, N'A-68')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (69, N'A-69')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (70, N'A-70')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (71, N'A-71')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (72, N'A-72')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (73, N'A-73')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (74, N'A-74')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (75, N'A-75')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (76, N'A-76')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (77, N'A-77')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (78, N'A-78')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (79, N'A-79')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (80, N'A-80')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (81, N'A-81')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (82, N'A-82')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (83, N'A-83')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (84, N'A-84')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (85, N'A-85')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (86, N'A-86')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (87, N'A-87')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (88, N'A-88')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (89, N'A-89')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (90, N'A-90')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (91, N'A-91')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (92, N'A-92')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (93, N'A-93')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (94, N'A-94')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (95, N'A-95')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (96, N'A-96')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (97, N'A-97')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (98, N'A-98')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (99, N'A-99')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (100, N'A-100')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (101, N'A-101')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (102, N'A-102')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (103, N'A-103')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (104, N'A-104')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (105, N'A-105')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (106, N'A-106')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (107, N'A-107')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (108, N'A-108')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (109, N'A-109')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (110, N'A-110')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (111, N'A-111')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (112, N'A-112')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (113, N'A-113')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (114, N'A-114')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (115, N'A-115')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (116, N'A-116')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (117, N'A-117')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (118, N'A-118')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (119, N'A-119')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (120, N'A-120')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (121, N'A-121')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (122, N'A-122')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (123, N'A-123')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (124, N'A-124')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (125, N'A-125')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (126, N'A-126')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (127, N'A-127')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (128, N'A-128')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (129, N'A-129')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (130, N'A-130')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (131, N'A-131')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (132, N'A-132')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (133, N'A-133')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (134, N'A-134')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (135, N'A-135')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (136, N'A-136')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (137, N'A-137')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (138, N'A-138')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (139, N'A-139')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (140, N'A-140')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (141, N'A-141')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (142, N'A-142')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (143, N'A-143')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (144, N'A-144')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (145, N'A-145')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (146, N'A-146')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (147, N'A-147')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (148, N'A-148')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (149, N'A-149')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (150, N'A-150')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (200, N'B-200')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (201, N'B-201')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (202, N'B-202')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (203, N'B-203')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (204, N'B-204')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (205, N'B-205')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (206, N'B-206')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (207, N'B-207')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (208, N'B-208')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (209, N'B-209')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (210, N'B-210')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (211, N'B-211')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (212, N'B-212')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (213, N'B-213')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (214, N'B-214')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (215, N'B-215')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (216, N'B-216')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (217, N'B-217')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (218, N'B-218')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (219, N'B-219')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (220, N'B-220')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (221, N'B-221')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (222, N'B-222')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (223, N'B-223')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (224, N'B-224')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (225, N'B-225')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (226, N'B-226')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (227, N'B-227')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (228, N'B-228')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (229, N'B-229')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (230, N'B-230')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (231, N'B-231')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (232, N'B-232')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (233, N'B-233')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (234, N'B-234')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (235, N'B-235')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (236, N'B-236')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (237, N'B-237')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (238, N'B-238')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (239, N'B-239')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (240, N'B-240')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (241, N'B-241')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (242, N'B-242')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (243, N'B-243')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (244, N'B-244')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (245, N'B-245')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (246, N'B-246')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (247, N'B-247')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (248, N'B-248')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (249, N'B-249')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (250, N'B-250')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (251, N'B-251')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (252, N'B-252')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (253, N'B-253')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (254, N'B-254')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (255, N'B-255')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (256, N'B-256')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (257, N'B-257')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (258, N'B-258')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (259, N'B-259')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (260, N'B-260')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (261, N'B-261')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (262, N'B-262')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (263, N'B-263')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (264, N'B-264')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (265, N'B-265')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (266, N'B-266')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (267, N'B-267')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (268, N'B-268')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (269, N'B-269')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (270, N'B-270')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (271, N'B-271')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (272, N'B-272')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (273, N'B-273')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (274, N'B-274')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (275, N'B-275')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (276, N'B-276')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (277, N'B-277')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (278, N'B-278')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (279, N'B-279')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (280, N'B-280')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (281, N'B-281')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (282, N'B-282')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (283, N'B-283')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (284, N'B-284')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (285, N'B-285')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (286, N'B-286')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (287, N'B-287')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (288, N'B-288')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (289, N'B-289')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (290, N'B-290')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (291, N'B-291')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (292, N'B-292')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (293, N'B-293')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (294, N'B-294')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (295, N'B-295')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (296, N'B-296')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (297, N'B-297')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (298, N'B-298')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (299, N'B-299')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (300, N'B-300')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (301, N'B-301')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (302, N'B-302')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (303, N'B-303')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (304, N'B-304')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (305, N'B-305')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (306, N'B-306')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (307, N'B-307')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (308, N'B-308')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (309, N'B-309')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (310, N'B-310')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (311, N'B-311')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (312, N'B-312')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (313, N'B-313')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (314, N'B-314')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (315, N'B-315')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (316, N'B-316')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (317, N'B-317')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (318, N'B-318')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (319, N'B-319')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (320, N'B-320')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (321, N'B-321')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (322, N'B-322')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (323, N'B-323')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (324, N'B-324')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (325, N'B-325')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (326, N'B-326')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (327, N'B-327')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (328, N'B-328')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (329, N'B-329')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (330, N'B-330')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (331, N'B-331')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (332, N'B-332')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (333, N'B-333')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (334, N'B-334')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (335, N'B-335')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (336, N'B-336')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (337, N'B-337')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (338, N'B-338')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (339, N'B-339')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (340, N'B-340')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (341, N'B-341')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (342, N'B-342')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (343, N'B-343')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (344, N'B-344')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (345, N'B-345')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (346, N'B-346')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (347, N'B-347')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (348, N'B-348')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (349, N'B-349')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (350, N'B-350')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (351, N'B-351')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (352, N'B-352')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (353, N'B-353')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (354, N'B-354')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (355, N'B-355')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (356, N'B-356')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (357, N'B-357')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (358, N'B-358')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (359, N'B-359')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (360, N'B-360')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (361, N'B-361')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (362, N'B-362')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (363, N'B-363')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (364, N'B-364')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (365, N'B-365')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (366, N'B-366')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (367, N'B-367')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (368, N'B-368')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (369, N'B-369')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (370, N'B-370')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (371, N'B-371')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (372, N'B-372')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (373, N'B-373')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (374, N'B-374')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (375, N'B-375')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (376, N'B-376')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (377, N'B-377')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (378, N'B-378')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (379, N'B-379')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (380, N'B-380')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (381, N'B-381')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (382, N'B-382')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (383, N'B-383')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (384, N'B-384')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (385, N'B-385')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (386, N'B-386')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (387, N'B-387')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (388, N'B-388')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (389, N'B-389')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (390, N'B-390')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (391, N'B-391')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (392, N'B-392')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (393, N'B-393')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (394, N'B-394')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (395, N'B-395')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (396, N'B-396')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (397, N'B-397')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (398, N'B-398')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (399, N'B-399')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (400, N'B-400')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (401, N'B-401')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (402, N'B-402')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (403, N'B-403')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (404, N'B-404')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (405, N'B-405')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (406, N'B-406')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (407, N'B-407')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (408, N'B-408')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (409, N'B-409')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (410, N'B-410')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (411, N'B-411')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (412, N'B-412')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (413, N'B-413')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (414, N'B-414')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (415, N'B-415')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (416, N'B-416')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (417, N'B-417')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (418, N'B-418')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (419, N'B-419')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (420, N'B-420')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (421, N'B-421')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (422, N'B-422')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (423, N'B-423')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (424, N'B-424')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (425, N'B-425')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (426, N'B-426')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (427, N'B-427')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (428, N'B-428')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (429, N'B-429')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (430, N'B-430')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (431, N'B-431')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (432, N'B-432')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (433, N'B-433')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (434, N'B-434')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (435, N'B-435')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (436, N'B-436')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (437, N'B-437')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (438, N'B-438')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (439, N'B-439')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (440, N'B-440')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (441, N'B-441')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (442, N'B-442')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (443, N'B-443')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (444, N'B-444')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (445, N'B-445')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (446, N'B-446')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (447, N'B-447')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (448, N'B-448')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (449, N'B-449')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (450, N'B-450')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (451, N'B-451')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (452, N'B-452')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (453, N'B-453')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (454, N'B-454')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (455, N'B-455')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (456, N'B-456')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (457, N'B-457')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (458, N'B-458')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (459, N'B-459')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (460, N'B-460')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (461, N'B-461')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (462, N'B-462')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (463, N'B-463')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (464, N'B-464')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (465, N'B-465')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (466, N'B-466')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (467, N'B-467')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (468, N'B-468')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (469, N'B-469')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (470, N'B-470')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (471, N'B-471')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (472, N'B-472')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (473, N'B-473')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (474, N'B-474')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (475, N'B-475')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (476, N'B-476')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (477, N'B-477')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (478, N'B-478')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (479, N'B-479')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (480, N'B-480')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (481, N'B-481')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (482, N'B-482')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (483, N'B-483')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (484, N'B-484')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (485, N'B-485')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (486, N'B-486')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (487, N'B-487')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (488, N'B-488')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (489, N'B-489')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (490, N'B-490')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (491, N'B-491')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (492, N'B-492')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (493, N'B-493')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (494, N'B-494')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (495, N'B-495')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (496, N'B-496')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (497, N'B-497')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (498, N'B-498')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (499, N'B-499')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (500, N'C-500')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (501, N'C-501')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (502, N'C-502')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (503, N'C-503')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (504, N'C-504')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (505, N'C-505')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (506, N'C-506')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (507, N'C-507')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (508, N'C-508')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (509, N'C-509')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (510, N'C-510')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (511, N'C-511')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (512, N'C-512')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (513, N'C-513')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (514, N'C-514')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (515, N'C-515')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (516, N'C-516')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (517, N'C-517')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (518, N'C-518')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (519, N'C-519')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (520, N'C-520')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (521, N'C-521')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (522, N'C-522')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (523, N'C-523')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (524, N'C-524')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (525, N'C-525')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (526, N'C-526')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (527, N'C-527')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (528, N'C-528')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (529, N'C-529')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (530, N'C-530')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (531, N'C-531')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (532, N'C-532')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (533, N'C-533')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (534, N'C-534')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (535, N'C-535')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (536, N'C-536')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (537, N'C-537')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (538, N'C-538')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (539, N'C-539')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (540, N'C-540')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (541, N'C-541')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (542, N'C-542')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (543, N'C-543')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (544, N'C-544')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (545, N'C-545')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (546, N'C-546')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (547, N'C-547')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (548, N'C-548')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (549, N'C-549')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (550, N'C-550')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (551, N'C-551')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (552, N'C-552')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (553, N'C-553')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (554, N'C-554')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (555, N'C-555')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (556, N'C-556')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (557, N'C-557')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (558, N'C-558')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (559, N'C-559')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (560, N'C-560')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (561, N'C-561')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (562, N'C-562')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (563, N'C-563')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (564, N'C-564')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (565, N'C-565')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (566, N'C-566')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (567, N'C-567')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (568, N'C-568')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (569, N'C-569')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (570, N'C-570')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (571, N'C-571')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (572, N'C-572')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (573, N'C-573')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (574, N'C-574')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (575, N'C-575')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (576, N'C-576')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (577, N'C-577')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (578, N'C-578')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (579, N'C-579')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (580, N'C-580')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (581, N'C-581')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (582, N'C-582')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (583, N'C-583')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (584, N'C-584')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (585, N'C-585')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (586, N'C-586')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (587, N'C-587')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (588, N'C-588')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (589, N'C-589')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (590, N'C-590')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (591, N'C-591')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (592, N'C-592')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (593, N'C-593')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (594, N'C-594')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (595, N'C-595')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (596, N'C-596')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (597, N'C-597')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (598, N'C-598')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (599, N'C-599')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (600, N'C-600')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (601, N'C-601')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (602, N'C-602')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (603, N'C-603')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (604, N'C-604')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (605, N'C-605')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (606, N'C-606')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (607, N'C-607')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (608, N'C-608')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (609, N'C-609')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (610, N'C-610')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (611, N'C-611')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (612, N'C-612')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (613, N'C-613')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (614, N'C-614')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (615, N'C-615')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (616, N'C-616')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (617, N'C-617')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (618, N'C-618')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (619, N'C-619')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (620, N'C-620')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (621, N'C-621')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (622, N'C-622')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (623, N'C-623')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (624, N'C-624')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (625, N'C-625')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (626, N'C-626')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (627, N'C-627')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (628, N'C-628')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (629, N'C-629')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (630, N'C-630')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (631, N'C-631')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (632, N'C-632')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (633, N'C-633')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (634, N'C-634')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (635, N'C-635')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (636, N'C-636')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (637, N'C-637')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (638, N'C-638')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (639, N'C-639')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (640, N'C-640')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (641, N'C-641')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (642, N'C-642')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (643, N'C-643')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (644, N'C-644')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (645, N'C-645')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (646, N'C-646')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (647, N'C-647')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (648, N'C-648')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (649, N'C-649')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (650, N'C-650')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (651, N'C-651')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (652, N'C-652')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (653, N'C-653')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (654, N'C-654')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (655, N'C-655')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (656, N'C-656')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (657, N'C-657')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (658, N'C-658')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (659, N'C-659')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (660, N'C-660')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (661, N'C-661')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (662, N'C-662')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (663, N'C-663')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (664, N'C-664')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (665, N'C-665')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (666, N'C-666')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (667, N'C-667')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (668, N'C-668')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (669, N'C-669')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (670, N'C-670')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (671, N'C-671')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (672, N'C-672')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (673, N'C-673')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (674, N'C-674')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (675, N'C-675')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (676, N'C-676')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (677, N'C-677')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (678, N'C-678')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (679, N'C-679')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (680, N'C-680')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (681, N'C-681')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (682, N'C-682')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (683, N'C-683')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (684, N'C-684')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (685, N'C-685')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (686, N'C-686')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (687, N'C-687')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (688, N'C-688')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (689, N'C-689')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (690, N'C-690')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (691, N'C-691')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (692, N'C-692')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (693, N'C-693')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (694, N'C-694')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (695, N'C-695')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (696, N'C-696')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (697, N'C-697')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (698, N'C-698')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (699, N'C-699')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (700, N'C-700')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (701, N'C-701')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (702, N'C-702')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (703, N'C-703')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (704, N'C-704')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (705, N'C-705')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (706, N'C-706')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (707, N'C-707')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (708, N'C-708')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (709, N'C-709')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (710, N'C-710')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (711, N'C-711')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (712, N'C-712')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (713, N'C-713')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (714, N'C-714')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (715, N'C-715')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (716, N'C-716')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (717, N'C-717')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (718, N'C-718')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (719, N'C-719')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (720, N'C-720')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (721, N'C-721')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (722, N'C-722')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (723, N'C-723')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (724, N'C-724')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (725, N'C-725')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (726, N'C-726')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (727, N'C-727')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (728, N'C-728')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (729, N'C-729')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (730, N'C-730')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (731, N'C-731')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (732, N'C-732')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (733, N'C-733')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (734, N'C-734')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (735, N'C-735')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (736, N'C-736')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (737, N'C-737')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (738, N'C-738')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (739, N'C-739')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (740, N'C-740')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (741, N'C-741')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (742, N'C-742')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (743, N'C-743')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (744, N'C-744')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (745, N'C-745')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (746, N'C-746')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (747, N'C-747')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (748, N'C-748')
GO
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (749, N'C-749')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (750, N'C-750')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (751, N'C-751')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (752, N'C-752')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (753, N'C-753')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (754, N'C-754')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (755, N'C-755')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (756, N'C-756')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (757, N'C-757')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (758, N'C-758')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (759, N'C-759')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (760, N'C-760')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (761, N'C-761')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (762, N'C-762')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (763, N'C-763')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (764, N'C-764')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (765, N'C-765')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (766, N'C-766')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (767, N'C-767')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (768, N'C-768')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (769, N'C-769')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (770, N'C-770')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (771, N'C-771')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (772, N'C-772')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (773, N'C-773')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (774, N'C-774')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (775, N'C-775')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (776, N'C-776')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (777, N'C-777')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (778, N'C-778')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (779, N'C-779')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (780, N'C-780')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (781, N'C-781')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (782, N'C-782')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (783, N'C-783')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (784, N'C-784')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (785, N'C-785')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (786, N'C-786')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (787, N'C-787')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (788, N'C-788')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (789, N'C-789')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (790, N'C-790')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (791, N'C-791')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (792, N'C-792')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (793, N'C-793')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (794, N'C-794')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (795, N'C-795')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (796, N'C-796')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (797, N'C-797')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (798, N'C-798')
INSERT [dbo].[UbicacionParqueo] ([IdUbicacionParqueo], [UbicacionParqueo]) VALUES (799, N'C-799')
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
ALTER TABLE [dbo].[Estado] ADD  DEFAULT ('No Disponible') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('Sin descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('06:00') FOR [HoraInicio]
GO
ALTER TABLE [dbo].[Horario] ADD  DEFAULT ('06:00') FOR [HoraFin]
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
ALTER TABLE [dbo].[RagoDias] ADD  DEFAULT ('Domingo-Lunes') FOR [Descripcion]
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
ALTER TABLE [dbo].[CampoGolf]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
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
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD FOREIGN KEY([IdRangoDias])
REFERENCES [dbo].[RagoDias] ([IdRangoDias])
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
ALTER TABLE [dbo].[SalaEventos]  WITH CHECK ADD FOREIGN KEY([IdReqSE])
REFERENCES [dbo].[ReqSalaEventos] ([IdReqSE])
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
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdHorario])
REFERENCES [dbo].[Horario] ([IdHorario])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([IdPerfil])
REFERENCES [dbo].[Perfiles] ([IdPerfil])
GO
USE [master]
GO
ALTER DATABASE [Proyectodb] SET  READ_WRITE 
GO



/****** Object:  StoredProcedure [dbo].[SP_LISTADO_DE_ESPACIOS_LIBRES_Y_OCUPADOS_DE_CADA_PARQUEO]    Script Date: 19/08/2018 18:07:53 ******/
CREATE PROCEDURE pa_LISTADOESPACIOSLIBRESYOCUPADOSENARQUEO
AS
	BEGIN
		SELECT  UbicacionParqueo.IDPARQUEO, 
				UbicacionParqueo.DISPONIBILIDAD,
				PARQUEO.TipoParqueo, 
				COUNT(*) AS TOTAL 
		FROM UbicacionParqueo 
			INNER JOIN Parqueo ON UbicacionParqueo.IdUbicacionParqueo = Parqueo.IdUbicacionParqueo
		GROUP BY UbicacionParqueo.DISPONIBILIDAD, UbicacionParqueo.IDPARQUEO,PARQUEO.TipoParqueo
		ORDER BY UbicacionParqueo.IDPARQUEO
	END

GO
/****** Object:  StoredProcedure [dbo].[SP_ListadoClientesActivos]    Script Date: 19/08/2018 18:07:53 ******/

CREATE PROCEDURE [dbo].[SP_ListadoClientesActivos]
AS
	BEGIN
		SELECT Us.ID,us.NombreUsuario,us.ApellidoUsuario,us.Estado,Inv.Invitado1,Inv.Invitado2,Inv.Invitado3,Inv.Invitado4,Inv.Invitado5
		FROM Invitados Inv INNER JOIN Usuario Us ON Inv.ID = us.ID
		WHERE us.Estado = 1
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
		SELECT us.ID, us.NombreUsuario,us.ApellidoUsuario, us.Estado, PER.NombrePerfil
		FROM Usuario US INNER JOIN Perfiles PER ON us.IdPerfil = PER.IdPerfil
		WHERE per.IdPerfil = 4 and us.Estado = 1
	END

GO
