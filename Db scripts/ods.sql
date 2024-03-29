USE [master]
GO
/****** Object:  Database [Pjotr_Kramse_ODS]    Script Date: 29-3-2023 19:56:39 ******/
CREATE DATABASE [Pjotr_Kramse_ODS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Pjotr_Kramse_ODS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_ODS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Pjotr_Kramse_ODS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLDEV2019\MSSQL\DATA\Pjotr_Kramse_ODS_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Pjotr_Kramse_ODS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ARITHABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET RECOVERY FULL 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET  MULTI_USER 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Pjotr_Kramse_ODS', N'ON'
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET QUERY_STORE = OFF
GO
USE [Pjotr_Kramse_ODS]
GO
/****** Object:  Table [dbo].[D_Calendar]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Calendar](
	[CALDAY] [date] NOT NULL,
	[DAY_OF_MONTH] [int] NULL,
	[CALYEAR] [int] NULL,
	[CALMONTH_ISO] [char](2) NULL,
	[CALMONTH_NAME] [varchar](20) NULL,
	[CALMONTH_NR] [int] NULL,
	[CALMONTH_NR_OF_DAYS] [int] NULL,
	[CALMONTH_FIRST_DAY] [date] NULL,
	[CALMONTH_LAST_DAY] [date] NULL,
	[CALQUARTER] [int] NULL,
	[WEEKDAY_NR] [int] NULL,
	[WEEKDAY_NAME] [varchar](20) NULL,
	[CALWEEK_ISO] [char](2) NULL,
	[CALWEEK_ISO_LONG] [varchar](7) NULL,
	[CALWEEK_ISO_YEAR] [int] NULL,
	[CALWEEK_ISO_FIRST_DAY] [date] NULL,
	[CALWEEK_ISO_LAST_DAY] [date] NULL,
	[CALWEEK_ISO_WEEKDAY_MONTH_SPLIT] [int] NULL,
	[IS_FIRST_DAY_OF_WEEK_YN] [char](1) NULL,
	[IS_LAST_DAY_OF_WEEK_YN] [char](1) NULL,
	[IS_FIRST_DAY_OF_MONTH_YN] [char](1) NULL,
	[IS_LAST_DAY_OF_MONTH_YN] [char](1) NULL,
 CONSTRAINT [PK_D_Calendar] PRIMARY KEY CLUSTERED 
(
	[CALDAY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Consignor]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Consignor](
	[Id] [int] NOT NULL,
	[Consignor] [nvarchar](255) NOT NULL,
	[City] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NOT NULL,
	[Discount] [float] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_D_Consignor_1] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Container]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Container](
	[RowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[RefrigerationFlag] [varchar](50) NOT NULL,
	[PowerFlag] [varchar](50) NOT NULL,
	[Length] [float] NOT NULL,
	[Cubes] [float] NOT NULL,
	[EuroPricePerKm] [float] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_D_Container_1] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Item]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Item](
	[RowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[Manufactorer] [nvarchar](50) NOT NULL,
	[ContainerType] [nvarchar](50) NOT NULL,
	[HazardFlag] [nvarchar](50) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_D_Item] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Port]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Port](
	[PortOrder] [nvarchar](50) NOT NULL,
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[DistanceFromOslo] [int] NOT NULL,
	[DistanceFromPiraeus] [int] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_D_Port] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[D_Ship]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[D_Ship](
	[RowId] [int] IDENTITY(1,1) NOT NULL,
	[Id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[MaxTEU] [int] NOT NULL,
	[SpeedInKnots] [int] NOT NULL,
	[SpeedInKm_H] [int] NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Yearcost] [money] NOT NULL,
	[Length] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[EndDate] [date] NULL,
	[StartDate] [date] NOT NULL,
 CONSTRAINT [PK_D_Ship] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_ShipmentVoyage]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_ShipmentVoyage](
	[ShipRowId] [int] NOT NULL,
	[ContainerRowId] [int] NOT NULL,
	[ConsignorRowId] [int] NOT NULL,
	[ItemRowId] [int] NOT NULL,
	[ShipmentId] [int] NOT NULL,
	[ContainerStartNr] [int] NOT NULL,
	[ContainerEndNr] [int] NOT NULL,
	[PortStartRowId] [int] NOT NULL,
	[PortCurrentRowId] [int] NOT NULL,
	[PortNextRowId] [int] NOT NULL,
	[PortEndRowId] [int] NOT NULL,
	[LegDateArrivalNext] [date] NOT NULL,
	[LegDateDepartCurrent] [date] NOT NULL,
	[TrajectDistance] [int] NOT NULL,
	[LoadFactor] [float] NOT NULL,
	[DaysTraveling] [int] NULL,
	[TEU] [int] NULL,
 CONSTRAINT [PK_T_ShipmentVoyage] PRIMARY KEY CLUSTERED 
(
	[ShipRowId] ASC,
	[ContainerRowId] ASC,
	[ConsignorRowId] ASC,
	[ItemRowId] ASC,
	[ShipmentId] ASC,
	[PortStartRowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[T_StayDays]    Script Date: 29-3-2023 19:56:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_StayDays](
	[ShipRowId] [int] NOT NULL,
	[PortCurrentRowId] [int] NOT NULL,
	[LegDateArrival] [date] NOT NULL,
	[LegDateDepart] [date] NOT NULL,
	[PreviousLegDateArrival] [date] NULL,
	[StayDays] [int] NOT NULL,
 CONSTRAINT [PK_T_StayDays] PRIMARY KEY CLUSTERED 
(
	[ShipRowId] ASC,
	[PortCurrentRowId] ASC,
	[LegDateArrival] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Calendar] FOREIGN KEY([LegDateArrivalNext])
REFERENCES [dbo].[D_Calendar] ([CALDAY])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Calendar]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Calendar1] FOREIGN KEY([LegDateDepartCurrent])
REFERENCES [dbo].[D_Calendar] ([CALDAY])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Calendar1]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Consignor] FOREIGN KEY([ConsignorRowId])
REFERENCES [dbo].[D_Consignor] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Consignor]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Container] FOREIGN KEY([ContainerRowId])
REFERENCES [dbo].[D_Container] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Container]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Item] FOREIGN KEY([ItemRowId])
REFERENCES [dbo].[D_Item] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Item]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port] FOREIGN KEY([PortCurrentRowId])
REFERENCES [dbo].[D_Port] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port1] FOREIGN KEY([PortStartRowId])
REFERENCES [dbo].[D_Port] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port1]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port2] FOREIGN KEY([PortNextRowId])
REFERENCES [dbo].[D_Port] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port2]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Port3] FOREIGN KEY([PortEndRowId])
REFERENCES [dbo].[D_Port] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Port3]
GO
ALTER TABLE [dbo].[T_ShipmentVoyage]  WITH CHECK ADD  CONSTRAINT [FK_T_ShipmentVoyage_D_Ship] FOREIGN KEY([ShipRowId])
REFERENCES [dbo].[D_Ship] ([RowId])
GO
ALTER TABLE [dbo].[T_ShipmentVoyage] CHECK CONSTRAINT [FK_T_ShipmentVoyage_D_Ship]
GO
ALTER TABLE [dbo].[T_StayDays]  WITH CHECK ADD  CONSTRAINT [FK_T_StayDays_D_Calendar] FOREIGN KEY([LegDateArrival])
REFERENCES [dbo].[D_Calendar] ([CALDAY])
GO
ALTER TABLE [dbo].[T_StayDays] CHECK CONSTRAINT [FK_T_StayDays_D_Calendar]
GO
ALTER TABLE [dbo].[T_StayDays]  WITH CHECK ADD  CONSTRAINT [FK_T_StayDays_D_Port] FOREIGN KEY([PortCurrentRowId])
REFERENCES [dbo].[D_Port] ([RowId])
GO
ALTER TABLE [dbo].[T_StayDays] CHECK CONSTRAINT [FK_T_StayDays_D_Port]
GO
ALTER TABLE [dbo].[T_StayDays]  WITH CHECK ADD  CONSTRAINT [FK_T_StayDays_D_Ship] FOREIGN KEY([ShipRowId])
REFERENCES [dbo].[D_Ship] ([RowId])
GO
ALTER TABLE [dbo].[T_StayDays] CHECK CONSTRAINT [FK_T_StayDays_D_Ship]
GO
USE [master]
GO
ALTER DATABASE [Pjotr_Kramse_ODS] SET  READ_WRITE 
GO
