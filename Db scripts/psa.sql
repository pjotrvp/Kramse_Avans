USE [master]
GO
/****** Object:  Database [Pjotr_Kramse_PSA]    Script Date: 29-3-2023 19:55:49 ******/
CREATE DATABASE [Pjotr_Kramse_PSA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pjotr_Kramse_PSA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_PSA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pjotr_Kramse_PSA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_PSA_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pjotr_Kramse_PSA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET RECOVERY FULL 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET  MULTI_USER 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pjotr_Kramse_PSA', N'ON'
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET QUERY_STORE = OFF
GO
USE [Pjotr_Kramse_PSA]
GO
/****** Object:  Table [dbo].[D_Consignor]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_D_Consignor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Container]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Container](
	[Id] [int] NOT NULL,
	[Type] [varchar](50) NULL,
	[RefrigerationFlag] [varchar](50) NULL,
	[PowerFlag] [varchar](50) NULL,
	[Length] [float] NULL,
	[Cubes] [float] NULL,
	[EuroPricePerKm] [float] NULL,
 CONSTRAINT [PK_D_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Item]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Item](
	[Id] [int] NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Manufactorer] [nvarchar](50) NULL,
	[ContainerType] [nvarchar](50) NULL,
	[HazardFlag] [nvarchar](50) NULL,
 CONSTRAINT [PK_D_Item] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Port]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Port](
	[PortOrder] [nvarchar](50) NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[DistanceFromOslo] [int] NULL,
	[DistanceFromPiraeus] [int] NULL,
 CONSTRAINT [PK_D_Port] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Ship]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Ship](
	[Id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[MaxTEU] [int] NULL,
	[SpeedInKnots] [int] NULL,
	[SpeedInKm_H] [int] NULL,
	[Country] [nvarchar](50) NULL,
	[Yearcost] [money] NULL,
	[Length] [int] NULL,
	[Width] [int] NULL,
 CONSTRAINT [PK_D_Ship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ShipmentVoyage]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ShipmentVoyage](
	[ShipId] [int] NOT NULL,
	[PortIdEnd] [int] NOT NULL,
	[PortIdNext] [int] NOT NULL,
	[PortIdStart] [int] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[ShipmentId] [int] NOT NULL,
	[ConsignorId] [int] NOT NULL,
	[Item] [int] NOT NULL,
	[ContainertypeId] [int] NOT NULL,
	[LegDateArrival] [datetime] NULL,
	[Traject_Distance] [int] NULL,
	[LegDateDepart] [datetime] NULL,
	[ContainerFirst] [int] NULL,
	[ContainerLast] [int] NULL,
 CONSTRAINT [PK_T_ShipmentVoyage] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[PortIdEnd] ASC,
	[PortIdNext] ASC,
	[PortIdStart] ASC,
	[PortIdCurrent] ASC,
	[ShipmentId] ASC,
	[ConsignorId] ASC,
	[Item] ASC,
	[ContainertypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_StayDays]    Script Date: 29-3-2023 19:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_StayDays](
	[ShipId] [int] NOT NULL,
	[PortIdCurrent] [int] NOT NULL,
	[LegDateArrival] [datetime] NOT NULL,
	[LegDateDepart] [datetime] NOT NULL,
	[PreviousLegDateArrival] [datetime] NULL,
	[StayDays] [int] NOT NULL,
 CONSTRAINT [PK_T_StayDays] PRIMARY KEY CLUSTERED 
(
	[ShipId] ASC,
	[PortIdCurrent] ASC,
	[LegDateArrival] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Consignor] FOREIGN KEY([ConsignorId])
REFERENCES [dbo].[D_Consignor] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Consignor]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Container] FOREIGN KEY([ContainertypeId])
REFERENCES [dbo].[D_Container] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Container]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Item] FOREIGN KEY([Item])
REFERENCES [dbo].[D_Item] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Item]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port] FOREIGN KEY([PortIdEnd])
REFERENCES [dbo].[D_Port] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port1] FOREIGN KEY([PortIdNext])
REFERENCES [dbo].[D_Port] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port1]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port2] FOREIGN KEY([PortIdStart])
REFERENCES [dbo].[D_Port] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port2]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port3] FOREIGN KEY([PortIdCurrent])
REFERENCES [dbo].[D_Port] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port3]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Ship] FOREIGN KEY([ShipId])
REFERENCES [dbo].[D_Ship] ([Id])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Ship]
GO
ALTER TABLE [dbo].[T_StayDays]  WITH CHECK ADD  CONSTRAINT [FK_T_StayDays_D_Port] FOREIGN KEY([PortIdCurrent])
REFERENCES [dbo].[D_Port] ([Id])
GO
ALTER TABLE [dbo].[T_StayDays] CHECK CONSTRAINT [FK_T_StayDays_D_Port]
GO
ALTER TABLE [dbo].[T_StayDays]  WITH CHECK ADD  CONSTRAINT [FK_T_StayDays_D_Ship] FOREIGN KEY([ShipId])
REFERENCES [dbo].[D_Ship] ([Id])
GO
ALTER TABLE [dbo].[T_StayDays] CHECK CONSTRAINT [FK_T_StayDays_D_Ship]
GO
USE [master]
GO
ALTER DATABASE [Pjotr_Kramse_PSA] SET  READ_WRITE 
GO
