USE [master]
GO
/****** Object:  Database [PruebaTekus]    Script Date: 14/06/2018 10:45:32 p. m. ******/
CREATE DATABASE [PruebaTekus]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PruebaTekus', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PruebaTekus.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PruebaTekus_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\PruebaTekus_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [PruebaTekus] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PruebaTekus].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PruebaTekus] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PruebaTekus] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PruebaTekus] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PruebaTekus] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PruebaTekus] SET ARITHABORT OFF 
GO
ALTER DATABASE [PruebaTekus] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PruebaTekus] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PruebaTekus] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PruebaTekus] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PruebaTekus] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PruebaTekus] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PruebaTekus] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PruebaTekus] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PruebaTekus] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PruebaTekus] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PruebaTekus] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PruebaTekus] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PruebaTekus] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PruebaTekus] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PruebaTekus] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PruebaTekus] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PruebaTekus] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PruebaTekus] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PruebaTekus] SET  MULTI_USER 
GO
ALTER DATABASE [PruebaTekus] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PruebaTekus] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PruebaTekus] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PruebaTekus] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PruebaTekus] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PruebaTekus] SET QUERY_STORE = OFF
GO
USE [PruebaTekus]
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
USE [PruebaTekus]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 14/06/2018 10:45:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nit] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 14/06/2018 10:45:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaisServicio]    Script Date: 14/06/2018 10:45:32 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaisServicio](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdServicio] [int] NOT NULL,
	[IdPais] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 14/06/2018 10:45:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[ValorHora] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosCliente]    Script Date: 14/06/2018 10:45:33 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosCliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[IdServicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Id], [Nit], [Nombre], [Correo]) VALUES (1, N'3434', N'daniel', N'dagudelomazo@gmail.es')
INSERT [dbo].[Clientes] ([Id], [Nit], [Nombre], [Correo]) VALUES (2, N'5655', N'Sebastian', N'sebas@gmail.com')
INSERT [dbo].[Clientes] ([Id], [Nit], [Nombre], [Correo]) VALUES (3, N'34341', N'Servicio1', N'agudelo@f.com')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([Id], [Nombre]) VALUES (1, N'Colombia')
INSERT [dbo].[Pais] ([Id], [Nombre]) VALUES (2, N'Venezuela')
SET IDENTITY_INSERT [dbo].[Pais] OFF
SET IDENTITY_INSERT [dbo].[PaisServicio] ON 

INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (1, 6, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (2, 6, 2)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (3, 7, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (4, 7, 2)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (5, 8, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (6, 8, 2)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (7, 9, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (8, 10, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (9, 11, 1)
INSERT [dbo].[PaisServicio] ([Id], [IdServicio], [IdPais]) VALUES (10, 11, 2)
SET IDENTITY_INSERT [dbo].[PaisServicio] OFF
SET IDENTITY_INSERT [dbo].[Servicios] ON 

INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (6, N'Servicio6', N'5666')
INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (7, N'ServicioFinal', N'45555')
INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (8, N'ServicioFinal22', N'234444')
INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (9, N'Servicioprobar1', N'3444')
INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (10, N'Servicio1', N'44000')
INSERT [dbo].[Servicios] ([Id], [Nombre], [ValorHora]) VALUES (11, N'Servicio', N'4500')
SET IDENTITY_INSERT [dbo].[Servicios] OFF
SET IDENTITY_INSERT [dbo].[ServiciosCliente] ON 

INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (5, 1, 6)
INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (6, 1, 7)
INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (7, 1, 8)
INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (8, 1, 9)
INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (9, 2, 10)
INSERT [dbo].[ServiciosCliente] ([Id], [IdCliente], [IdServicio]) VALUES (10, 1, 11)
SET IDENTITY_INSERT [dbo].[ServiciosCliente] OFF
ALTER TABLE [dbo].[PaisServicio]  WITH CHECK ADD  CONSTRAINT [FK_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([Id])
GO
ALTER TABLE [dbo].[PaisServicio] CHECK CONSTRAINT [FK_Pais]
GO
ALTER TABLE [dbo].[PaisServicio]  WITH CHECK ADD  CONSTRAINT [FK_Servicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([Id])
GO
ALTER TABLE [dbo].[PaisServicio] CHECK CONSTRAINT [FK_Servicio]
GO
ALTER TABLE [dbo].[ServiciosCliente]  WITH CHECK ADD  CONSTRAINT [FK_ClienteServicio] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([Id])
GO
ALTER TABLE [dbo].[ServiciosCliente] CHECK CONSTRAINT [FK_ClienteServicio]
GO
ALTER TABLE [dbo].[ServiciosCliente]  WITH CHECK ADD  CONSTRAINT [FK_ServicioServicio] FOREIGN KEY([IdServicio])
REFERENCES [dbo].[Servicios] ([Id])
GO
ALTER TABLE [dbo].[ServiciosCliente] CHECK CONSTRAINT [FK_ServicioServicio]
GO
USE [master]
GO
ALTER DATABASE [PruebaTekus] SET  READ_WRITE 
GO
