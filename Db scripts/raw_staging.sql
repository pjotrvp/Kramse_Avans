USE [master]
GO
/****** Object:  Database [Pjotr_Kramse_Raw]    Script Date: 29-3-2023 19:54:58 ******/
CREATE DATABASE [Pjotr_Kramse_Raw]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pjotr_Kramse_Raw', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_Raw.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pjotr_Kramse_Raw_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_Raw_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pjotr_Kramse_Raw].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET RECOVERY FULL 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET  MULTI_USER 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pjotr_Kramse_Raw', N'ON'
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET QUERY_STORE = OFF
GO
USE [Pjotr_Kramse_Raw]
GO
/****** Object:  Table [dbo].[Consignor]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_Consignor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Container]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Container](
	[Id] [int] NOT NULL,
	[Type] [varchar](50) NULL,
	[RefrigerationFlag] [varchar](50) NULL,
	[PowerFlag] [varchar](50) NULL,
	[Length] [float] NULL,
	[Cubes] [float] NULL,
	[EuroPricePerKm] [float] NULL,
 CONSTRAINT [PK_Container] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountryISO3]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryISO3](
	[ISO3] [nvarchar](3) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[item_key] [int] NOT NULL,
	[item_description] [nvarchar](50) NULL,
	[item_category] [nvarchar](50) NULL,
	[item_mfgr] [nvarchar](50) NULL,
	[item_storage_type] [nvarchar](50) NULL,
	[item_hazard_flag] [nvarchar](50) NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[item_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MRV_Publication]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MRV_Publication](
	[IMO Number] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Ship type] [nvarchar](255) NULL,
	[Reporting Period] [float] NULL,
	[Technical efficiency] [nvarchar](255) NULL,
	[Port of Registry] [nvarchar](255) NULL,
	[Home Port] [nvarchar](255) NULL,
	[Ice Class] [nvarchar](255) NULL,
	[Verifier Number] [nvarchar](255) NULL,
	[Verifier Name] [nvarchar](255) NULL,
	[Verifier NAB] [nvarchar](255) NULL,
	[Verifier Address] [nvarchar](255) NULL,
	[Verifier City] [nvarchar](255) NULL,
	[Verifier Accreditation number] [nvarchar](255) NULL,
	[Verifier Country] [nvarchar](255) NULL,
	[A] [nvarchar](255) NULL,
	[B] [nvarchar](255) NULL,
	[C] [nvarchar](255) NULL,
	[D] [nvarchar](255) NULL,
	[Total fuel consumption (m tonnes)] [float] NULL,
	[Fuel consumptions assigned to On laden (m tonnes)] [nvarchar](255) NULL,
	[Total CO₂ emissions (m tonnes)] [float] NULL,
	[CO₂ emissions from all voyages between ports under a MS jurisdic] [float] NULL,
	[CO₂ emissions from all voyages which departed from ports under a] [float] NULL,
	[CO₂ emissions from all voyages to ports under a MS jurisdiction ] [float] NULL,
	[CO₂ emissions which occurred within ports under a MS jurisdictio] [float] NULL,
	[CO₂ emissions assigned to Passenger transport (m tonnes)] [nvarchar](255) NULL,
	[CO₂ emissions assigned to Freight transport (m tonnes)] [nvarchar](255) NULL,
	[CO₂ emissions assigned to On laden (m tonnes)] [nvarchar](255) NULL,
	[Annual Total time spent at sea (hours)] [float] NULL,
	[Annual average Fuel consumption per distance (kg / n mile)] [float] NULL,
	[Annual average Fuel consumption per transport work (mass) (g / m] [float] NULL,
	[Annual average Fuel consumption per transport work (volume) (g /] [nvarchar](255) NULL,
	[Annual average Fuel consumption per transport work (dwt) (g / dw] [nvarchar](255) NULL,
	[Annual average Fuel consumption per transport work (pax) (g / pa] [nvarchar](255) NULL,
	[Annual average Fuel consumption per transport work (freight) (g ] [nvarchar](255) NULL,
	[Annual average CO₂ emissions per distance (kg CO₂ / n mile)] [float] NULL,
	[Annual average CO₂ emissions per transport work (mass) (g CO₂ / ] [float] NULL,
	[Annual average CO₂ emissions per transport work (volume) (g CO₂ ] [nvarchar](255) NULL,
	[Annual average CO₂ emissions per transport work (dwt) (g CO₂ / d] [nvarchar](255) NULL,
	[Annual average CO₂ emissions per transport work (pax) (g CO₂ / p] [nvarchar](255) NULL,
	[Annual average CO₂ emissions per transport work (freight) (g CO₂] [nvarchar](255) NULL,
	[Through ice (n miles)] [nvarchar](255) NULL,
	[Total time spent at sea (hours)] [float] NULL,
	[Total time spent at sea through ice (hours)] [nvarchar](255) NULL,
	[Fuel consumption per distance on laden voyages (kg / n mile)] [nvarchar](255) NULL,
	[Fuel consumption per transport work (mass) on laden voyages (g /] [nvarchar](255) NULL,
	[Fuel consumption per transport work (volume) on laden voyages (g] [nvarchar](255) NULL,
	[Fuel consumption per transport work (dwt) on laden voyages (g / ] [nvarchar](255) NULL,
	[Fuel consumption per transport work (pax) on laden voyages (g / ] [nvarchar](255) NULL,
	[Fuel consumption per transport work (freight) on laden voyages (] [nvarchar](255) NULL,
	[CO₂ emissions per distance on laden voyages (kg CO₂ / n mile)] [nvarchar](255) NULL,
	[CO₂ emissions per transport work (mass) on laden voyages (g CO₂ ] [nvarchar](255) NULL,
	[CO₂ emissions per transport work (volume) on laden voyages (g CO] [nvarchar](255) NULL,
	[CO₂ emissions per transport work (dwt) on laden voyages (g CO₂ /] [nvarchar](255) NULL,
	[CO₂ emissions per transport work (pax) on laden voyages (g CO₂ /] [nvarchar](255) NULL,
	[CO₂ emissions per transport work (freight) on laden voyages (g C] [nvarchar](255) NULL,
	[Additional information to facilitate the understanding of the re] [nvarchar](255) NULL,
	[Average density of the cargo transported (m tonnes / m³)] [nvarchar](255) NULL,
 CONSTRAINT [PK_MRV_Publication] PRIMARY KEY CLUSTERED 
(
	[IMO Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Port]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Port](
	[P_PortOrder] [nvarchar](50) NULL,
	[VPS_PortId] [int] NOT NULL,
	[P_PortName] [nvarchar](50) NULL,
	[P_Country] [nvarchar](50) NULL,
	[P_DistanceFromOslo] [int] NULL,
	[P_DistanceFromPiraeus] [int] NULL,
 CONSTRAINT [PK_Port] PRIMARY KEY CLUSTERED 
(
	[VPS_PortId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ship]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ship](
	[VS_Shipid] [int] NOT NULL,
	[Sh_Shipname] [nvarchar](50) NULL,
	[Sh_MaxTEU] [int] NULL,
	[Sh_SpeedInKnots] [int] NULL,
	[Sh_SpeedInKm_H] [int] NULL,
	[Sh_Country] [nvarchar](50) NULL,
	[Sh_Yearcost] [money] NULL,
	[Sh_Length] [int] NULL,
	[Sh_Width] [int] NULL,
 CONSTRAINT [PK_Ship] PRIMARY KEY CLUSTERED 
(
	[VS_Shipid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[ShipmentId] [int] NOT NULL,
	[VoyageId] [int] NULL,
	[ConsignorId] [int] NULL,
	[PortIdFrom] [int] NULL,
	[PortIdTo] [int] NULL,
	[Distance] [int] NULL,
	[NumberContainers] [int] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShipmentDetail]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShipmentDetail](
	[ShipmentId] [int] NOT NULL,
	[ContainerNr] [nvarchar](50) NOT NULL,
	[Item] [int] NOT NULL,
	[ContainertypeId] [int] NOT NULL,
	[ContainerFirst] [int] NULL,
	[ContainerLast] [int] NULL,
	[ContAmount] [int] NULL,
 CONSTRAINT [PK_ShipmentDetail] PRIMARY KEY CLUSTERED 
(
	[ShipmentId] ASC,
	[ContainerNr] ASC,
	[ContainertypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voyage]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voyage](
	[VV_VoyageId] [int] NOT NULL,
	[VS_ShipId] [int] NULL,
	[V_DateDepartVoyage] [datetime] NULL,
	[VPS_PortIdStart] [int] NULL,
	[V_PortIdEnd] [int] NULL,
 CONSTRAINT [PK_Voyage] PRIMARY KEY CLUSTERED 
(
	[VV_VoyageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoyagePort]    Script Date: 29-3-2023 19:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoyagePort](
	[VV_VoyageId] [int] NOT NULL,
	[VP_PortIdCurrent] [int] NOT NULL,
	[Vp_PortIdNext] [int] NOT NULL,
	[Vp_LegDateDepart] [datetime] NULL,
	[Vp_LegDateArrival] [datetime] NULL,
	[Vp_Traject_Distance] [int] NULL,
	[Vp_PortOrder] [nvarchar](50) NULL,
	[VP_TimeStandingStill] [int] NULL,
 CONSTRAINT [PK_VoyagePort] PRIMARY KEY CLUSTERED 
(
	[VV_VoyageId] ASC,
	[VP_PortIdCurrent] ASC,
	[Vp_PortIdNext] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Consignor] FOREIGN KEY([ConsignorId])
REFERENCES [dbo].[Consignor] ([Id])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Consignor]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Voyage] FOREIGN KEY([VoyageId])
REFERENCES [dbo].[Voyage] ([VV_VoyageId])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Voyage]
GO
ALTER TABLE [dbo].[ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_ShipmentDetail_Container1] FOREIGN KEY([ContainertypeId])
REFERENCES [dbo].[Container] ([Id])
GO
ALTER TABLE [dbo].[ShipmentDetail] CHECK CONSTRAINT [FK_ShipmentDetail_Container1]
GO
ALTER TABLE [dbo].[ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_ShipmentDetail_Item] FOREIGN KEY([Item])
REFERENCES [dbo].[Item] ([item_key])
GO
ALTER TABLE [dbo].[ShipmentDetail] CHECK CONSTRAINT [FK_ShipmentDetail_Item]
GO
ALTER TABLE [dbo].[ShipmentDetail]  WITH CHECK ADD  CONSTRAINT [FK_ShipmentDetail_Shipment] FOREIGN KEY([ShipmentId])
REFERENCES [dbo].[Shipment] ([ShipmentId])
GO
ALTER TABLE [dbo].[ShipmentDetail] CHECK CONSTRAINT [FK_ShipmentDetail_Shipment]
GO
ALTER TABLE [dbo].[Voyage]  WITH CHECK ADD  CONSTRAINT [FK_Voyage_Port] FOREIGN KEY([VPS_PortIdStart])
REFERENCES [dbo].[Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[Voyage] CHECK CONSTRAINT [FK_Voyage_Port]
GO
ALTER TABLE [dbo].[Voyage]  WITH CHECK ADD  CONSTRAINT [FK_Voyage_Ship] FOREIGN KEY([VS_ShipId])
REFERENCES [dbo].[Ship] ([VS_Shipid])
GO
ALTER TABLE [dbo].[Voyage] CHECK CONSTRAINT [FK_Voyage_Ship]
GO
ALTER TABLE [dbo].[VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_VoyagePort_Port] FOREIGN KEY([VP_PortIdCurrent])
REFERENCES [dbo].[Port] ([VPS_PortId])
GO
ALTER TABLE [dbo].[VoyagePort] CHECK CONSTRAINT [FK_VoyagePort_Port]
GO
ALTER TABLE [dbo].[VoyagePort]  WITH CHECK ADD  CONSTRAINT [FK_VoyagePort_Voyage] FOREIGN KEY([VV_VoyageId])
REFERENCES [dbo].[Voyage] ([VV_VoyageId])
GO
ALTER TABLE [dbo].[VoyagePort] CHECK CONSTRAINT [FK_VoyagePort_Voyage]
GO
USE [master]
GO
ALTER DATABASE [Pjotr_Kramse_Raw] SET  READ_WRITE 
GO
