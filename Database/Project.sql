USE [master]
GO
/****** Object:  Database [MegaPaint]    Script Date: 26/10/2564 11:24:02 ******/
CREATE DATABASE [MegaPaint]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MegaPaint2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MegaPaint2.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MegaPaint2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MegaPaint2_log.ldf' , SIZE = 139264KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MegaPaint] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MegaPaint].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MegaPaint] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MegaPaint] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MegaPaint] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MegaPaint] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MegaPaint] SET ARITHABORT OFF 
GO
ALTER DATABASE [MegaPaint] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MegaPaint] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MegaPaint] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MegaPaint] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MegaPaint] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MegaPaint] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MegaPaint] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MegaPaint] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MegaPaint] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MegaPaint] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MegaPaint] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MegaPaint] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MegaPaint] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MegaPaint] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MegaPaint] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MegaPaint] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MegaPaint] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MegaPaint] SET RECOVERY FULL 
GO
ALTER DATABASE [MegaPaint] SET  MULTI_USER 
GO
ALTER DATABASE [MegaPaint] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MegaPaint] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MegaPaint] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MegaPaint] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MegaPaint] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MegaPaint] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MegaPaint] SET QUERY_STORE = OFF
GO
USE [MegaPaint]
GO
/****** Object:  Table [dbo].[MP_Seller]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Seller](
	[seller_code] [varchar](10) NOT NULL,
	[branch_code] [varchar](10) NULL,
	[prefix_id] [varchar](2) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[profile_picture] [varchar](255) NULL,
	[level_id] [int] NULL,
	[birthday] [date] NULL,
	[mobile_number] [varchar](10) NULL,
	[gender_id] [varchar](2) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[create_by] [varchar](8) NULL,
	[edit_by] [varchar](8) NULL,
	[create_datetime] [datetime2](0) NULL,
	[edit_datetime] [datetime2](0) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Selle__780A0A977F60ED59] PRIMARY KEY CLUSTERED 
(
	[seller_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_SellerPermanentAddress]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_SellerPermanentAddress](
	[seller_code] [varchar](10) NOT NULL,
	[address_no] [int] NULL,
	[building] [varchar](255) NULL,
	[room] [varchar](255) NULL,
	[alley] [varchar](255) NULL,
	[rood] [varchar](255) NULL,
	[changwat_id] [varchar](4) NULL,
	[amphoe_id] [varchar](4) NULL,
	[tambon_id] [varchar](6) NULL,
	[zip_code] [varchar](5) NULL,
	[tel] [varchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Selle__32E77BFC5A25D0B0] PRIMARY KEY CLUSTERED 
(
	[seller_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_SellerPresentAddress]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_SellerPresentAddress](
	[seller_code] [varchar](10) NOT NULL,
	[address_no] [int] NULL,
	[building] [varchar](255) NULL,
	[room] [varchar](255) NULL,
	[alley] [varchar](255) NULL,
	[rood] [varchar](255) NULL,
	[changwat_id] [varchar](4) NULL,
	[amphoe_id] [varchar](4) NULL,
	[tambon_id] [varchar](6) NULL,
	[zip_code] [varchar](5) NULL,
	[tel] [varchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Selle__32E77BFC5A25D0B0_copy1] PRIMARY KEY CLUSTERED 
(
	[seller_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[MP_View_Seller]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MP_View_Seller] AS SELECT
dbo.MP_Seller.seller_code,
dbo.MP_Seller.branch_code,
dbo.MP_Seller.prefix_id,
dbo.MP_Seller.firstname,
dbo.MP_Seller.lastname,
dbo.MP_Seller.birthday,
dbo.MP_Seller.mobile_number,
dbo.MP_Seller.gender_id,
dbo.MP_Seller.username,
dbo.MP_Seller.password,
dbo.MP_Seller.create_by,
dbo.MP_Seller.edit_by,
dbo.MP_Seller.create_datetime,
dbo.MP_Seller.edit_datetime,
dbo.MP_Seller.status,
dbo.MP_Seller.profile_picture,
dbo.MP_SellerPermanentAddress.address_no as permanent_addr_no,
dbo.MP_SellerPermanentAddress.building as permanent_building,
dbo.MP_SellerPermanentAddress.room as permanent_room,
dbo.MP_SellerPermanentAddress.alley as permanent_alley,
dbo.MP_SellerPermanentAddress.rood as permanent_rood,
dbo.MP_SellerPermanentAddress.changwat_id as permanent_changwat_id,
dbo.MP_SellerPermanentAddress.amphoe_id as permanent_amphoe_id,
dbo.MP_SellerPermanentAddress.tambon_id as permanent_tambon_id,
dbo.MP_SellerPermanentAddress.zip_code as permanent_zip_code,
dbo.MP_SellerPermanentAddress.tel as permanent_tel,
dbo.MP_SellerPresentAddress.address_no as present_addr_no,
dbo.MP_SellerPresentAddress.building as present_building,
dbo.MP_SellerPresentAddress.room as present_room,
dbo.MP_SellerPresentAddress.alley as present_alley,
dbo.MP_SellerPresentAddress.rood as present_rood,
dbo.MP_SellerPresentAddress.changwat_id as present_changwat_id,
dbo.MP_SellerPresentAddress.amphoe_id as present_amphoe_id,
dbo.MP_SellerPresentAddress.tambon_id as present_tambon_id,
dbo.MP_SellerPresentAddress.zip_code as present_zip_code,
dbo.MP_SellerPresentAddress.tel as present_tel

FROM
dbo.MP_Seller
LEFT JOIN dbo.MP_SellerPermanentAddress ON dbo.MP_Seller.seller_code = dbo.MP_SellerPermanentAddress.seller_code
	and dbo.MP_SellerPermanentAddress.status = 1
LEFT JOIN dbo.MP_SellerPresentAddress ON dbo.MP_Seller.seller_code = dbo.MP_SellerPresentAddress.seller_code
	and dbo.MP_SellerPresentAddress.status = 1
GO
/****** Object:  Table [dbo].[MT_Gender]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_Gender](
	[gender_id] [varchar](2) NOT NULL,
	[gender_name_th] [varchar](255) NULL,
	[gender_name_en] [varchar](255) NULL,
 CONSTRAINT [PK__MP_Gende__9DF18F87F3C7BC89] PRIMARY KEY CLUSTERED 
(
	[gender_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT_Prefix]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_Prefix](
	[prefix_id] [varchar](2) NOT NULL,
	[prefix_name_th] [varchar](255) NULL,
	[prefix_name_en] [varchar](255) NULL,
 CONSTRAINT [PK__MT_Prefi__CF11A755B8FAEEAF] PRIMARY KEY CLUSTERED 
(
	[prefix_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Admin]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Admin](
	[admin_code] [varchar](10) NOT NULL,
	[prefix_id] [varchar](2) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[avatar] [varchar](255) NULL,
	[level_id] [int] NULL,
	[birthday] [date] NULL,
	[mobile_number] [varchar](10) NULL,
	[gender_id] [varchar](2) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[create_by] [varchar](8) NULL,
	[create_datetime] [datetime2](0) NULL,
	[edit_by] [varchar](8) NULL,
	[edit_datetime] [datetime2](0) NULL,
	[status] [bit] NULL,
	[onchange_password] [bit] NULL,
 CONSTRAINT [PK__MP_Selle__780A0A977F60ED59_copy1] PRIMARY KEY CLUSTERED 
(
	[admin_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[MP_View_Admin]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[MP_View_Admin] AS SELECT
dbo.MP_Admin.admin_code,
dbo.MP_Admin.username,
dbo.MP_Admin.password,
dbo.MT_Prefix.prefix_name_th,
dbo.MP_Admin.firstname,
dbo.MP_Admin.lastname,
dbo.MP_Admin.avatar,
dbo.MP_Admin.level_id,
dbo.MP_Admin.birthday,
dbo.MP_Admin.mobile_number,
dbo.MT_Gender.gender_name_th,
convert(int,datediff(day,dbo.MP_Admin.birthday,getdate())/365) as age
FROM
dbo.MP_Admin
LEFT JOIN dbo.MT_Prefix ON dbo.MP_Admin.prefix_id = dbo.MT_Prefix.prefix_id
LEFT JOIN dbo.MT_Gender ON dbo.MP_Admin.gender_id = dbo.MT_Gender.gender_id
WHERE dbo.MP_Admin.status = 1
GO
/****** Object:  Table [dbo].[MP_AddressType]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_AddressType](
	[type_id] [varchar](2) NOT NULL,
	[name_th] [varchar](255) NULL,
	[name_en] [varchar](255) NULL,
 CONSTRAINT [PK__MP_Addre__5ABF11E5584B93B0] PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Buyer]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Buyer](
	[buyer_code] [varchar](10) NOT NULL,
	[prefix_id] [varchar](2) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[gender_id] [int] NULL,
	[birthday] [date] NULL,
	[tel] [varchar](10) NULL,
	[email] [varchar](255) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[create_datetime] [datetime2](0) NULL,
	[edit_by] [varchar](8) NULL,
	[edit_datetime] [datetime2](0) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Buyer__BAD171520AD2A005] PRIMARY KEY CLUSTERED 
(
	[buyer_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Content]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Content](
	[content_id] [varchar](10) NOT NULL,
	[page_id] [varchar](4) NULL,
	[name] [varchar](255) NULL,
	[detail] [varchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Conte__655FE510DFC23B18] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Product]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Product](
	[item_code] [varchar](10) NOT NULL,
	[name_th] [varchar](255) NULL,
	[retail_price] [decimal](18, 0) NULL,
	[detail] [varchar](255) NULL,
	[category_id] [varchar](4) NULL,
	[wholesale_price] [decimal](18, 0) NULL,
	[unit] [varchar](255) NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK__MP_Produ__52020FDD03317E3D] PRIMARY KEY CLUSTERED 
(
	[item_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_ProductCategory]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_ProductCategory](
	[category_id] [varchar](4) NOT NULL,
	[category_name_th] [varchar](255) NULL,
	[category_name_en] [varchar](255) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Categ__D54EE9B407020F21] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Shop]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Shop](
	[shop_code] [varchar](10) NOT NULL,
	[shop_name_th] [varchar](255) NULL,
	[shop_name_en] [varchar](255) NULL,
	[address_no] [varchar](10) NULL,
	[building] [varchar](255) NULL,
	[room] [varchar](255) NULL,
	[alley] [varchar](255) NULL,
	[rood] [varchar](255) NULL,
	[changwat_id] [varchar](4) NULL,
	[amphoe_id] [varchar](4) NULL,
	[tambon_id] [varchar](6) NULL,
	[zip_code] [varchar](5) NULL,
	[tel] [varchar](20) NULL,
	[lati_longi] [varchar](255) NULL,
	[create_by] [varchar](255) NULL,
	[create_datetime] [datetime2](0) NULL,
	[edit_by] [varchar](255) NULL,
	[edit_datetime] [datetime2](0) NULL,
	[status] [bit] NULL,
	[shop_picture] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[shop_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_Technicial]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_Technicial](
	[technician_code] [varchar](10) NOT NULL,
	[prefix_id] [varchar](2) NULL,
	[firstname] [varchar](255) NULL,
	[lastname] [varchar](255) NULL,
	[nickname] [varchar](255) NULL,
	[gender_id] [varchar](2) NULL,
	[birthday] [date] NULL,
	[profile_picture] [varchar](255) NULL,
	[shop_picture] [varchar](255) NULL,
	[tech_addr_code] [varchar](10) NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[line_id] [int] NULL,
	[create_by] [varchar](8) NULL,
	[create_date] [datetime2](0) NULL,
	[edit_by] [varchar](8) NULL,
	[edit_date] [datetime2](0) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Techn__C20C01BE3965CE5F] PRIMARY KEY CLUSTERED 
(
	[technician_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MP_TechnicianAddress]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MP_TechnicianAddress](
	[tech_addr_code] [varchar](10) NOT NULL,
	[shop_name] [varchar](255) NULL,
	[type_code] [varchar](2) NULL,
	[address_no] [int] NULL,
	[room] [varchar](255) NULL,
	[building] [varchar](255) NULL,
	[alley] [varchar](255) NULL,
	[rood] [varchar](255) NULL,
	[changwat_id] [varchar](4) NULL,
	[amphoe_id] [varchar](4) NULL,
	[tambon_id] [varchar](6) NULL,
	[zip_code] [varchar](5) NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK__MP_Techn__986D29BB19172658] PRIMARY KEY CLUSTERED 
(
	[tech_addr_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT_AddressAmphoe]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_AddressAmphoe](
	[amphoe_id] [varchar](4) NOT NULL,
	[amphoe_name_th] [varchar](255) NULL,
	[amphoe_name_en] [varchar](255) NULL,
	[changwat_id] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT_AddressChangwat]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_AddressChangwat](
	[changwat_id] [varchar](4) NOT NULL,
	[changwat_name_th] [varchar](255) NULL,
	[changwat_name_en] [varchar](255) NULL,
	[geo_id] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT_AddressGeographies]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_AddressGeographies](
	[geo_id] [varchar](4) NOT NULL,
	[geo_name] [varchar](255) NULL,
 CONSTRAINT [PK__MT_Addre__E8ADA4D65265B341] PRIMARY KEY CLUSTERED 
(
	[geo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MT_AddressTambon]    Script Date: 26/10/2564 11:24:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MT_AddressTambon](
	[tambon_id] [varchar](6) NOT NULL,
	[zip_code] [varchar](255) NULL,
	[tambon_name_th] [varchar](255) NULL,
	[tambon_name_en] [varchar](255) NULL,
	[amphoe_id] [varchar](4) NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสประเภทที่อยู่' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_AddressType', @level2type=N'COLUMN',@level2name=N'type_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อประเภทที่อยู่ว่าใช้สำหรับอะไร (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_AddressType', @level2type=N'COLUMN',@level2name=N'name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อประเภทที่อยู่ว่าใช้สำหรับอะไร (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_AddressType', @level2type=N'COLUMN',@level2name=N'name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ประเภทที่อยู่ว่าที่อยู่ที่ Input ใช้สำหรับอะไร' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_AddressType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'admin_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสคำนำหน้านาม' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'prefix_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'firstname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'นามสกุลผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'lastname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รูปโปรไฟล์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ระดับ Admin; 1=Admin Head, 2=Admin leader' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'level_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเกิด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'เบอร์มือถือ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'mobile_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสเพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'gender_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Add user โดย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่ Add' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'create_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edit upser by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'edit_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่ Edit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'edit_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'เปลี่ยน username password เมื่อเริ่มใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin', @level2type=N'COLUMN',@level2name=N'onchange_password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Admin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสผู้ซื้อ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'buyer_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสคำนำหน้านาม' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'prefix_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อผู้ซื้อ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'firstname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'นามสกุลผู้ซื้อ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'lastname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสเพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'gender_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเกิด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'เบอร์โทร' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'อีเมล์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่สมัครสมาชิก' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'create_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'แก้ไขข้อมูลโปรไฟล์ผู้ใช้โดย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'edit_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่แก้ไข' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'edit_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ผู้ซื้อ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Buyer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสบทความ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content', @level2type=N'COLUMN',@level2name=N'content_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสหน้า Page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content', @level2type=N'COLUMN',@level2name=N'page_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อหน้า Page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รายละเอียดหน้า Page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content', @level2type=N'COLUMN',@level2name=N'detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'บทความหน้า Page' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสสินค้าและบริการ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'item_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อสินค้าและบริการ (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ราคาขายปลีก' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'retail_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อสินค้าและบริการ (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'detail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสหมวดหมู่สินค้า' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ราคาขายส่ง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'wholesale_price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'หน่วยสินค้า' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'unit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 = มีสินค้า, 2 = หมดและรอสินค้า, 3 = หมดและเลิกผลิต' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product', @level2type=N'COLUMN',@level2name=N'status_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'สินค้า' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Product'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสหมวดหมู่สินค้า' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_ProductCategory', @level2type=N'COLUMN',@level2name=N'category_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อหมวดหมู่สินค้า (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_ProductCategory', @level2type=N'COLUMN',@level2name=N'category_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อหมวดหมู่สินค้า (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_ProductCategory', @level2type=N'COLUMN',@level2name=N'category_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_ProductCategory', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'หมวดหมู่สินค้า' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_ProductCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'seller_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสสาขาต้นสังกัด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'branch_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสคำนำหน้านาม' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'prefix_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'firstname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'นามสกุลผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'lastname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเกิด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'เบอร์มือถือ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'mobile_number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสเพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'gender_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Add user โดย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'edit upser by' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'edit_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่ Add' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'create_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาที่ Edit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'edit_datetime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ผู้ขาย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Seller'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ที่อยู่ตามทะเบียนบ้าน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_SellerPermanentAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ที่อยู่ปัจจุบัน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_SellerPresentAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสสมาชิกช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'technician_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'คำนำหน้านาม' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'prefix_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'firstname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'นามสกุลช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'lastname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อเล่น' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'nickname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสเพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'gender_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเกิด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รูปโปรไฟล์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'profile_picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รูปร้าน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'shop_picture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสที่อยู่สมาชิกช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'tech_addr_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'อีเมล์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ใช้สำหรับแจ้งเตือนเมื่อมีผู้สนใจจ้างบริการ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'line_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Add โดย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาสำหรับ Add' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'create_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Edit โดย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'edit_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'วันเวลาในการ Edit' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'edit_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_Technicial', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสที่อยู่สมาชิกช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'tech_addr_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อร้าน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'shop_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสประเภทช่วง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'type_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'บ้านเลขที่' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'address_no'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ห้อง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'room'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'อาคาร' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'building'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ซอย' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'alley'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ถนน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'rood'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสจังหวัด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'changwat_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสอำเถอ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'amphoe_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสตำบล' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'tambon_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสไปรษณีย์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'สถานะ Ture = เปิดใช้งาน, Flase = ปิดใช้งาน' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ช่าง' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MP_TechnicianAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสอำเภอ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressAmphoe', @level2type=N'COLUMN',@level2name=N'amphoe_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่ออำเภอ (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressAmphoe', @level2type=N'COLUMN',@level2name=N'amphoe_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่ออำเภอ (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressAmphoe', @level2type=N'COLUMN',@level2name=N'amphoe_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสจังหวัด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressAmphoe', @level2type=N'COLUMN',@level2name=N'changwat_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'อำเภอ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressAmphoe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสจังหวัด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressChangwat', @level2type=N'COLUMN',@level2name=N'changwat_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อจังหวัด (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressChangwat', @level2type=N'COLUMN',@level2name=N'changwat_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อจังหวัด (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressChangwat', @level2type=N'COLUMN',@level2name=N'changwat_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสภาค' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressChangwat', @level2type=N'COLUMN',@level2name=N'geo_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'จังหวัด' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressChangwat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสภาค' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressGeographies', @level2type=N'COLUMN',@level2name=N'geo_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อภาค' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressGeographies', @level2type=N'COLUMN',@level2name=N'geo_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ภาค' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressGeographies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสตำบล' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon', @level2type=N'COLUMN',@level2name=N'tambon_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสไปรษณีย์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon', @level2type=N'COLUMN',@level2name=N'zip_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อตำบล (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon', @level2type=N'COLUMN',@level2name=N'tambon_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อตำบล (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon', @level2type=N'COLUMN',@level2name=N'tambon_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสไปรษณีย์' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon', @level2type=N'COLUMN',@level2name=N'amphoe_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ตำบล' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_AddressTambon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสเพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Gender', @level2type=N'COLUMN',@level2name=N'gender_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อเพศ (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Gender', @level2type=N'COLUMN',@level2name=N'gender_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อเพศ (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Gender', @level2type=N'COLUMN',@level2name=N'gender_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'เพศ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Gender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'รหัสคำนำหน้านาม' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Prefix', @level2type=N'COLUMN',@level2name=N'prefix_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อคำนำหน้างาม (ภาษาไทย)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Prefix', @level2type=N'COLUMN',@level2name=N'prefix_name_th'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ชื่อคำนำหน้างาม (ภาษาอังกฤษ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Prefix', @level2type=N'COLUMN',@level2name=N'prefix_name_en'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'คำนำหน้าชื่อ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MT_Prefix'
GO
USE [master]
GO
ALTER DATABASE [MegaPaint] SET  READ_WRITE 
GO
