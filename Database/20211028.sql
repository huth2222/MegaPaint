/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : MegaPaint
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 28/10/2021 16:39:13
*/


-- ----------------------------
-- Table structure for MP_AddressType
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_AddressType]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_AddressType]
GO

CREATE TABLE [dbo].[MP_AddressType] (
  [type_id] varchar(2) COLLATE Thai_100_BIN2  NOT NULL,
  [name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [name_en] varchar(255) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MP_AddressType] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสประเภทที่อยู่',
'SCHEMA', N'dbo',
'TABLE', N'MP_AddressType',
'COLUMN', N'type_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อประเภทที่อยู่ว่าใช้สำหรับอะไร (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MP_AddressType',
'COLUMN', N'name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อประเภทที่อยู่ว่าใช้สำหรับอะไร (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MP_AddressType',
'COLUMN', N'name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ประเภทที่อยู่ว่าที่อยู่ที่ Input ใช้สำหรับอะไร',
'SCHEMA', N'dbo',
'TABLE', N'MP_AddressType'
GO


-- ----------------------------
-- Records of MP_AddressType
-- ----------------------------
INSERT INTO [dbo].[MP_AddressType] VALUES (N'1', N'ที่อยู่ในการออกใบกำกับภาษี', N'Address for issuing tax invoices.')
GO

INSERT INTO [dbo].[MP_AddressType] VALUES (N'2', N'ที่อยู่สำหรับจัดส่งสินค้า', N'Delivery address.')
GO


-- ----------------------------
-- Table structure for MP_Admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Admin]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Admin]
GO

CREATE TABLE [dbo].[MP_Admin] (
  [admin_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [prefix_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [firstname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [lastname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [avatar] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [level_id] int  NULL,
  [birthday] date  NULL,
  [mobile_number] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [gender_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [username] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [password] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [create_by] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [create_datetime] datetime2(0)  NULL,
  [edit_by] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [edit_datetime] datetime2(0)  NULL,
  [status] bit  NULL,
  [onchange_password] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_Admin] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'admin_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสคำนำหน้านาม',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'prefix_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'firstname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'นามสกุลผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'lastname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รูปโปรไฟล์',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'avatar'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ระดับ Admin; 1=Admin Head, 2=Admin leader',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'level_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเกิด',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'เบอร์มือถือ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'mobile_number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสเพศ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'gender_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Add user โดย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่ Add',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'create_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'edit upser by',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'edit_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่ Edit',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'edit_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'เปลี่ยน username password เมื่อเริ่มใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin',
'COLUMN', N'onchange_password'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Admin'
GO


-- ----------------------------
-- Records of MP_Admin
-- ----------------------------
INSERT INTO [dbo].[MP_Admin] VALUES (N'0000000001', N'01', N'อุดร', N'ผัดนุ่น', N'0000000001.jpg', N'1', N'1983-01-07', N'0800187010', N'01', N'huth', N'111', N'', N'2021-10-26 13:57:55', N'', N'2021-10-26 13:57:55', N'1', N'0')
GO

INSERT INTO [dbo].[MP_Admin] VALUES (N'0000000004', N'01', N'อุดร', N'ผัดนุ่น', N'0000000004.jpg', N'2', N'1900-01-01', N'0800187011', N'01', N'Username3', N'123', N'0000000001', N'2021-10-27 08:29:24', N'0000000001', N'1900-01-01 00:00:00', N'1', N'0')
GO

INSERT INTO [dbo].[MP_Admin] VALUES (N'0000000005', N'01', N'อุดร', N'ผัดนุ่น', N'', N'2', N'1900-01-01', N'', N'01', N'Username4', N'123', N'0000000001', N'2021-10-27 08:30:42', N'', N'1900-01-01 00:00:00', N'1', N'0')
GO


-- ----------------------------
-- Table structure for MP_Buyer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Buyer]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Buyer]
GO

CREATE TABLE [dbo].[MP_Buyer] (
  [buyer_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [prefix_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [firstname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [lastname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [gender_id] int  NULL,
  [birthday] date  NULL,
  [tel] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [email] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [username] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [password] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [create_datetime] datetime2(0)  NULL,
  [edit_by] varchar(8) COLLATE Thai_100_BIN2  NULL,
  [edit_datetime] datetime2(0)  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_Buyer] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสผู้ซื้อ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'buyer_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสคำนำหน้านาม',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'prefix_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อผู้ซื้อ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'firstname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'นามสกุลผู้ซื้อ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'lastname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสเพศ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'gender_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเกิด',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'เบอร์โทร',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'tel'
GO

EXEC sp_addextendedproperty
'MS_Description', N'อีเมล์',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่สมัครสมาชิก',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'create_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'แก้ไขข้อมูลโปรไฟล์ผู้ใช้โดย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'edit_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่แก้ไข',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'edit_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ผู้ซื้อ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Buyer'
GO


-- ----------------------------
-- Table structure for MP_Content
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Content]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Content]
GO

CREATE TABLE [dbo].[MP_Content] (
  [content_id] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [page_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [name] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [detail] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_Content] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสบทความ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content',
'COLUMN', N'content_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสหน้า Page',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content',
'COLUMN', N'page_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อหน้า Page',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รายละเอียดหน้า Page',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content',
'COLUMN', N'detail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'บทความหน้า Page',
'SCHEMA', N'dbo',
'TABLE', N'MP_Content'
GO


-- ----------------------------
-- Table structure for MP_Product
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Product]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Product]
GO

CREATE TABLE [dbo].[MP_Product] (
  [item_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [retail_price] decimal(18)  NULL,
  [detail] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [category_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [wholesale_price] decimal(18)  NULL,
  [unit] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [status_id] int  NULL
)
GO

ALTER TABLE [dbo].[MP_Product] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสสินค้าและบริการ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'item_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อสินค้าและบริการ (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ราคาขายปลีก',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'retail_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อสินค้าและบริการ (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'detail'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสหมวดหมู่สินค้า',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'category_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ราคาขายส่ง',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'wholesale_price'
GO

EXEC sp_addextendedproperty
'MS_Description', N'หน่วยสินค้า',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'unit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'1 = มีสินค้า, 2 = หมดและรอสินค้า, 3 = หมดและเลิกผลิต',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product',
'COLUMN', N'status_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'สินค้า',
'SCHEMA', N'dbo',
'TABLE', N'MP_Product'
GO


-- ----------------------------
-- Table structure for MP_ProductCategory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_ProductCategory]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_ProductCategory]
GO

CREATE TABLE [dbo].[MP_ProductCategory] (
  [category_id] varchar(4) COLLATE Thai_100_BIN2  NOT NULL,
  [category_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [category_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_ProductCategory] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสหมวดหมู่สินค้า',
'SCHEMA', N'dbo',
'TABLE', N'MP_ProductCategory',
'COLUMN', N'category_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อหมวดหมู่สินค้า (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MP_ProductCategory',
'COLUMN', N'category_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อหมวดหมู่สินค้า (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MP_ProductCategory',
'COLUMN', N'category_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_ProductCategory',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'หมวดหมู่สินค้า',
'SCHEMA', N'dbo',
'TABLE', N'MP_ProductCategory'
GO


-- ----------------------------
-- Table structure for MP_Seller
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Seller]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Seller]
GO

CREATE TABLE [dbo].[MP_Seller] (
  [seller_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [branch_code] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [prefix_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [firstname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [lastname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [profile_picture] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [level_id] int  NULL,
  [birthday] date  NULL,
  [mobile_number] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [gender_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [username] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [password] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [create_by] varchar(8) COLLATE Thai_100_BIN2  NULL,
  [edit_by] varchar(8) COLLATE Thai_100_BIN2  NULL,
  [create_datetime] datetime2(0)  NULL,
  [edit_datetime] datetime2(0)  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_Seller] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'seller_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสสาขาต้นสังกัด',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'branch_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสคำนำหน้านาม',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'prefix_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'firstname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'นามสกุลผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'lastname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเกิด',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'เบอร์มือถือ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'mobile_number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสเพศ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'gender_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Add user โดย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'edit upser by',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'edit_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่ Add',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'create_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาที่ Edit',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'edit_datetime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ผู้ขาย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Seller'
GO


-- ----------------------------
-- Table structure for MP_SellerPermanentAddress
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_SellerPermanentAddress]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_SellerPermanentAddress]
GO

CREATE TABLE [dbo].[MP_SellerPermanentAddress] (
  [seller_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [address_no] int  NULL,
  [building] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [room] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [alley] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [rood] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [tambon_id] varchar(6) COLLATE Thai_100_BIN2  NULL,
  [zip_code] varchar(5) COLLATE Thai_100_BIN2  NULL,
  [tel] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_SellerPermanentAddress] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ที่อยู่ตามทะเบียนบ้าน',
'SCHEMA', N'dbo',
'TABLE', N'MP_SellerPermanentAddress'
GO


-- ----------------------------
-- Table structure for MP_SellerPresentAddress
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_SellerPresentAddress]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_SellerPresentAddress]
GO

CREATE TABLE [dbo].[MP_SellerPresentAddress] (
  [seller_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [address_no] int  NULL,
  [building] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [room] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [alley] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [rood] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [tambon_id] varchar(6) COLLATE Thai_100_BIN2  NULL,
  [zip_code] varchar(5) COLLATE Thai_100_BIN2  NULL,
  [tel] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_SellerPresentAddress] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'ที่อยู่ปัจจุบัน',
'SCHEMA', N'dbo',
'TABLE', N'MP_SellerPresentAddress'
GO


-- ----------------------------
-- Table structure for MP_Shop
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Shop]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Shop]
GO

CREATE TABLE [dbo].[MP_Shop] (
  [shop_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [shop_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [shop_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [address_no] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [building] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [room] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [alley] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [rood] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [tambon_id] varchar(6) COLLATE Thai_100_BIN2  NULL,
  [zip_code] varchar(5) COLLATE Thai_100_BIN2  NULL,
  [tel] varchar(20) COLLATE Thai_100_BIN2  NULL,
  [lati_longi] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [create_by] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [create_datetime] datetime2(0)  NULL,
  [edit_by] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [edit_datetime] datetime2(0)  NULL,
  [status] bit  NULL,
  [shop_picture] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [moo] int  NULL
)
GO

ALTER TABLE [dbo].[MP_Shop] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of MP_Shop
-- ----------------------------
INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000001', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'20', N'2004', N'200403', N'20150', N'0800187010', NULL, N'0000000001', N'2021-10-28 14:01:35', N'', N'1900-01-01 00:00:00', N'1', N'', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000002', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'24', N'2401', N'240116', N'24000', N'0123456789', NULL, N'0000000001', N'2021-10-28 14:23:03', N'', N'1900-01-01 00:00:00', N'1', N'', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000003', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'12', N'1201', N'120103', N'11000', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:10:54', N'', N'1900-01-01 00:00:00', N'1', N'', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000004', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'15', N'1504', N'150412', N'14120', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:15:55', N'', N'1900-01-01 00:00:00', N'1', N'0000000004.jpg', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000005', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'20', N'2003', N'200303', N'20190', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:27:30', N'', N'1900-01-01 00:00:00', N'1', N'0000000005.jpg', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000006', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'23', N'2301', N'230111', N'23000', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:32:58', N'', N'1900-01-01 00:00:00', N'1', N'0000000006.jpg', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000007', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'24', N'2403', N'240305', N'24170', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:35:54', N'', N'1900-01-01 00:00:00', N'1', N'0000000007.jpg', NULL)
GO

INSERT INTO [dbo].[MP_Shop] VALUES (N'0000000008', N'ชื่อร้าน', NULL, N'11/2', N'อาคาร', N'1', N'ซอย', N'ถนน', N'25', N'2502', N'250211', N'25110', N'0800187010', NULL, N'0000000001', N'2021-10-28 15:47:19', N'', N'1900-01-01 00:00:00', N'1', N'0000000008.jpg', NULL)
GO


-- ----------------------------
-- Table structure for MP_Technicial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_Technicial]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_Technicial]
GO

CREATE TABLE [dbo].[MP_Technicial] (
  [technician_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [prefix_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [firstname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [lastname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [nickname] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [gender_id] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [birthday] date  NULL,
  [profile_picture] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [shop_picture] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [tech_addr_code] varchar(10) COLLATE Thai_100_BIN2  NULL,
  [username] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [password] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [email] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [line_id] int  NULL,
  [create_by] varchar(8) COLLATE Thai_100_BIN2  NULL,
  [create_date] datetime2(0)  NULL,
  [edit_by] varchar(8) COLLATE Thai_100_BIN2  NULL,
  [edit_date] datetime2(0)  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_Technicial] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสสมาชิกช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'technician_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'คำนำหน้านาม',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'prefix_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'firstname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'นามสกุลช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'lastname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อเล่น',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'nickname'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสเพศ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'gender_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเกิด',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'birthday'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รูปโปรไฟล์',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'profile_picture'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รูปร้าน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'shop_picture'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสที่อยู่สมาชิกช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'tech_addr_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'อีเมล์',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'email'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ใช้สำหรับแจ้งเตือนเมื่อมีผู้สนใจจ้างบริการ',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'line_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Add โดย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาสำหรับ Add',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'create_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Edit โดย',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'edit_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'วันเวลาในการ Edit',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'edit_date'
GO

EXEC sp_addextendedproperty
'MS_Description', N'Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_Technicial',
'COLUMN', N'status'
GO


-- ----------------------------
-- Table structure for MP_TechnicianAddress
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_TechnicianAddress]') AND type IN ('U'))
	DROP TABLE [dbo].[MP_TechnicianAddress]
GO

CREATE TABLE [dbo].[MP_TechnicianAddress] (
  [tech_addr_code] varchar(10) COLLATE Thai_100_BIN2  NOT NULL,
  [shop_name] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [type_code] varchar(2) COLLATE Thai_100_BIN2  NULL,
  [address_no] int  NULL,
  [room] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [building] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [alley] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [rood] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NULL,
  [tambon_id] varchar(6) COLLATE Thai_100_BIN2  NULL,
  [zip_code] varchar(5) COLLATE Thai_100_BIN2  NULL,
  [status] bit  NULL
)
GO

ALTER TABLE [dbo].[MP_TechnicianAddress] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสที่อยู่สมาชิกช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'tech_addr_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อร้าน',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'shop_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสประเภทช่วง',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'type_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'บ้านเลขที่',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'address_no'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ห้อง',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'room'
GO

EXEC sp_addextendedproperty
'MS_Description', N'อาคาร',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'building'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ซอย',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'alley'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ถนน',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'rood'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสจังหวัด',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'changwat_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสอำเถอ',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'amphoe_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสตำบล',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'tambon_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสไปรษณีย์',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'zip_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'สถานะ Ture = เปิดใช้งาน, Flase = ปิดใช้งาน',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress',
'COLUMN', N'status'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ช่าง',
'SCHEMA', N'dbo',
'TABLE', N'MP_TechnicianAddress'
GO


-- ----------------------------
-- Table structure for MT_AddressAmphoe
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_AddressAmphoe]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_AddressAmphoe]
GO

CREATE TABLE [dbo].[MT_AddressAmphoe] (
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NOT NULL,
  [amphoe_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [amphoe_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_AddressAmphoe] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสอำเภอ',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressAmphoe',
'COLUMN', N'amphoe_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่ออำเภอ (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressAmphoe',
'COLUMN', N'amphoe_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่ออำเภอ (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressAmphoe',
'COLUMN', N'amphoe_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสจังหวัด',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressAmphoe',
'COLUMN', N'changwat_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'อำเภอ',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressAmphoe'
GO


-- ----------------------------
-- Records of MT_AddressAmphoe
-- ----------------------------
INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1001', N'เขตพระนคร', N'Khet Phra Nakhon', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1002', N'เขตดุสิต', N'Khet Dusit', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1003', N'เขตหนองจอก', N'Khet Nong Chok', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1004', N'เขตบางรัก', N'Khet Bang Rak', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1005', N'เขตบางเขน', N'Khet Bang Khen', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1006', N'เขตบางกะปิ', N'Khet Bang Kapi', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1007', N'เขตปทุมวัน', N'Khet Pathum Wan', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1008', N'เขตป้อมปราบศัตรูพ่าย', N'Khet Pom Prap Sattru Phai', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1009', N'เขตพระโขนง', N'Khet Phra Khanong', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1010', N'เขตมีนบุรี', N'Khet Min Buri', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1011', N'เขตลาดกระบัง', N'Khet Lat Krabang', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1012', N'เขตยานนาวา', N'Khet Yan Nawa', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1013', N'เขตสัมพันธวงศ์', N'Khet Samphanthawong', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1014', N'เขตพญาไท', N'Khet Phaya Thai', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1015', N'เขตธนบุรี', N'Khet Thon Buri', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1016', N'เขตบางกอกใหญ่', N'Khet Bangkok Yai', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1017', N'เขตห้วยขวาง', N'Khet Huai Khwang', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1018', N'เขตคลองสาน', N'Khet Khlong San', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1019', N'เขตตลิ่งชัน', N'Khet Taling Chan', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1020', N'เขตบางกอกน้อย', N'Khet Bangkok Noi', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1021', N'เขตบางขุนเทียน', N'Khet Bang Khun Thian', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1022', N'เขตภาษีเจริญ', N'Khet Phasi Charoen', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1023', N'เขตหนองแขม', N'Khet Nong Khaem', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1024', N'เขตราษฎร์บูรณะ', N'Khet Rat Burana', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1025', N'เขตบางพลัด', N'Khet Bang Phlat', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1026', N'เขตดินแดง', N'Khet Din Daeng', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1027', N'เขตบึงกุ่ม', N'Khet Bueng Kum', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1028', N'เขตสาทร', N'Khet Sathon', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1029', N'เขตบางซื่อ', N'Khet Bang Sue', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1030', N'เขตจตุจักร', N'Khet Chatuchak', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1031', N'เขตบางคอแหลม', N'Khet Bang Kho Laem', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1032', N'เขตประเวศ', N'Khet Prawet', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1033', N'เขตคลองเตย', N'Khet Khlong Toei', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1034', N'เขตสวนหลวง', N'Khet Suan Luang', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1035', N'เขตจอมทอง', N'Khet Chom Thong', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1036', N'เขตดอนเมือง', N'Khet Don Mueang', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1037', N'เขตราชเทวี', N'Khet Ratchathewi', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1038', N'เขตลาดพร้าว', N'Khet Lat Phrao', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1039', N'เขตวัฒนา', N'Khet Vadhana', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1040', N'เขตบางแค', N'Khet Bang Khae', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1041', N'เขตหลักสี่', N'Khet Lak Si', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1042', N'เขตสายไหม', N'Khet Sai Mai', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1043', N'เขตคันนายาว', N'Khet Khan Na Yao', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1044', N'เขตสะพานสูง', N'Khet Saphan Sung', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1045', N'เขตวังทองหลาง', N'Khet Wang Thonglang', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1046', N'เขตคลองสามวา', N'Khet Khlong Sam Wa', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1047', N'เขตบางนา', N'Khet Bang Na', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1048', N'เขตทวีวัฒนา', N'Khet Thawi Watthana', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1049', N'เขตทุ่งครุ', N'Khet Thung Khru', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1050', N'เขตบางบอน', N'Khet Bang Bon', N'10')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1101', N'อำเภอเมืองสมุทรปราการ', N'Amphoe Mueang Samut Prakan', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1102', N'อำเภอบางบ่อ', N'Amphoe Bang Bo', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1103', N'อำเภอบางพลี', N'Amphoe Bang Phli', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1104', N'อำเภอพระประแดง', N'Amphoe Phra Pradaeng', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1105', N'อำเภอพระสมุทรเจดีย์', N'Amphoe Phra Samut Chedi', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1106', N'อำเภอบางเสาธง', N'Amphoe Bang Sao Thong', N'11')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1201', N'อำเภอเมืองนนทบุรี', N'Amphoe Mueang Nonthaburi', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1202', N'อำเภอบางกรวย', N'Amphoe Bang Kruai', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1203', N'อำเภอบางใหญ่', N'Amphoe Bang Yai', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1204', N'อำเภอบางบัวทอง', N'Amphoe Bang Bua Thong', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1205', N'อำเภอไทรน้อย', N'Amphoe Sai Noi', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1206', N'อำเภอปากเกร็ด', N'Amphoe Pak Kret', N'12')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1301', N'อำเภอเมืองปทุมธานี', N'Amphoe Mueang Pathum Thani', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1302', N'อำเภอคลองหลวง', N'Amphoe Khlong Luang', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1303', N'อำเภอธัญบุรี', N'Amphoe Thanyaburi', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1304', N'อำเภอหนองเสือ', N'Amphoe Nong Suea', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1305', N'อำเภอลาดหลุมแก้ว', N'Amphoe Lat Lum Kaeo', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1306', N'อำเภอลำลูกกา', N'Amphoe Lam Luk Ka', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1307', N'อำเภอสามโคก', N'Amphoe Sam Khok', N'13')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1401', N'อำเภอพระนครศรีอยุธยา', N'Amphoe Phra Nakhon Si Ayutthaya', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1402', N'อำเภอท่าเรือ', N'Amphoe Tha Ruea', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1403', N'อำเภอนครหลวง', N'Amphoe Nakhon Luang', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1404', N'อำเภอบางไทร', N'Amphoe Bang Sai', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1405', N'อำเภอบางบาล', N'Amphoe Bang Ban', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1406', N'อำเภอบางปะอิน', N'Amphoe Bang Pa-in', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1407', N'อำเภอบางปะหัน', N'Amphoe Bang Pahan', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1408', N'อำเภอผักไห่', N'Amphoe Phak Hai', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1409', N'อำเภอภาชี', N'Amphoe Phachi', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1410', N'อำเภอลาดบัวหลวง', N'Amphoe Lat Bua Luang', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1411', N'อำเภอวังน้อย', N'Amphoe Wang Noi', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1412', N'อำเภอเสนา', N'Amphoe Sena', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1413', N'อำเภอบางซ้าย', N'Amphoe Bang Sai', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1414', N'อำเภออุทัย', N'Amphoe Uthai', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1415', N'อำเภอมหาราช', N'Amphoe Maha Rat', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1416', N'อำเภอบ้านแพรก', N'Amphoe Ban Phraek', N'14')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1501', N'อำเภอเมืองอ่างทอง', N'Amphoe Mueang Ang Thong', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1502', N'อำเภอไชโย', N'Amphoe Chaiyo', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1503', N'อำเภอป่าโมก', N'Amphoe Pa Mok', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1504', N'อำเภอโพธิ์ทอง', N'Amphoe Pho Thong', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1505', N'อำเภอแสวงหา', N'Amphoe Sawaeng Ha', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1506', N'อำเภอวิเศษชัยชาญ', N'Amphoe Wiset Chai Chan', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1507', N'อำเภอสามโก้', N'Amphoe Samko', N'15')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1601', N'อำเภอเมืองลพบุรี', N'Amphoe Mueang Lop Buri', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1602', N'อำเภอพัฒนานิคม', N'Amphoe Phatthana Nikhom', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1603', N'อำเภอโคกสำโรง', N'Amphoe Khok Samrong', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1604', N'อำเภอชัยบาดาล', N'Amphoe Chai Badan', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1605', N'อำเภอท่าวุ้ง', N'Amphoe Tha Wung', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1606', N'อำเภอบ้านหมี่', N'Amphoe Ban Mi', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1607', N'อำเภอท่าหลวง', N'Amphoe Tha Luang', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1608', N'อำเภอสระโบสถ์', N'Amphoe Sa Bot', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1609', N'อำเภอโคกเจริญ', N'Amphoe Khok Charoen', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1610', N'อำเภอลำสนธิ', N'Amphoe Lam Sonthi', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1611', N'อำเภอหนองม่วง', N'Amphoe Nong Muang', N'16')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1701', N'อำเภอเมืองสิงห์บุรี', N'Amphoe Mueang Sing Buri', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1702', N'อำเภอบางระจัน', N'Amphoe Bang Rachan', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1703', N'อำเภอค่ายบางระจัน', N'Amphoe Khai Bang Rachan', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1704', N'อำเภอพรหมบุรี', N'Amphoe Phrom Buri', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1705', N'อำเภอท่าช้าง', N'Amphoe Tha Chang', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1706', N'อำเภออินทร์บุรี', N'Amphoe In Buri', N'17')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1801', N'อำเภอเมืองชัยนาท', N'Amphoe Mueang Chai Nat', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1802', N'อำเภอมโนรมย์', N'Amphoe Manorom', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1803', N'อำเภอวัดสิงห์', N'Amphoe Wat Sing', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1804', N'อำเภอสรรพยา', N'Amphoe Sapphaya', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1805', N'อำเภอสรรคบุรี', N'Amphoe Sankhaburi', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1806', N'อำเภอหันคา', N'Amphoe Hankha', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1807', N'อำเภอหนองมะโมง', N'Amphoe Nong Mamong', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1808', N'อำเภอเนินขาม', N'Amphoe Noen Kham', N'18')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1901', N'อำเภอเมืองสระบุรี', N'Amphoe Mueang Saraburi', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1902', N'อำเภอแก่งคอย', N'Amphoe Kaeng Khoi', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1903', N'อำเภอหนองแค', N'Amphoe Nong Khae', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1904', N'อำเภอวิหารแดง', N'Amphoe Wihan Daeng', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1905', N'อำเภอหนองแซง', N'Amphoe Nong Saeng', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1906', N'อำเภอบ้านหมอ', N'Amphoe Ban Mo', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1907', N'อำเภอดอนพุด', N'Amphoe Don Phut', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1908', N'อำเภอหนองโดน', N'Amphoe Nong Don', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1909', N'อำเภอพระพุทธบาท', N'Amphoe Phra Phutthabat', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1910', N'อำเภอเสาไห้', N'Amphoe Sao Hai', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1911', N'อำเภอมวกเหล็ก', N'Amphoe Muak Lek', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1912', N'อำเภอวังม่วง', N'Amphoe Wang Muang', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'1913', N'อำเภอเฉลิมพระเกียรติ', N'Amphoe Chaloem Phra Kiat', N'19')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2001', N'อำเภอเมืองชลบุรี', N'Amphoe Mueang Chon Buri', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2002', N'อำเภอบ้านบึง', N'Amphoe Ban Bueng', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2003', N'อำเภอหนองใหญ่', N'Amphoe Nong Yai', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2004', N'อำเภอบางละมุง', N'Amphoe Bang Lamung', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2005', N'อำเภอพานทอง', N'Amphoe Phan Thong', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2006', N'อำเภอพนัสนิคม', N'Amphoe Phanat Nikhom', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2007', N'อำเภอศรีราชา', N'Amphoe Si Racha', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2008', N'อำเภอเกาะสีชัง', N'Amphoe Ko Sichang', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2009', N'อำเภอสัตหีบ', N'Amphoe Sattahip', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2010', N'อำเภอบ่อทอง', N'Amphoe Bo Thong', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2011', N'อำเภอเกาะจันทร์', N'Amphoe Ko Chan', N'20')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2101', N'อำเภอเมืองระยอง', N'Amphoe Mueang Rayong', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2102', N'อำเภอบ้านฉาง', N'Amphoe Ban Chang', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2103', N'อำเภอแกลง', N'Amphoe Klaeng', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2104', N'อำเภอวังจันทร์', N'Amphoe Wang Chan', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2105', N'อำเภอบ้านค่าย', N'Amphoe Ban Khai', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2106', N'อำเภอปลวกแดง', N'Amphoe Pluak Daeng', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2107', N'อำเภอเขาชะเมา', N'Amphoe Khao Chamao', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2108', N'อำเภอนิคมพัฒนา', N'Amphoe Nikhom Phatthana', N'21')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2201', N'อำเภอเมืองจันทบุรี', N'Amphoe Mueang Chanthaburi', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2202', N'อำเภอขลุง', N'Amphoe Khlung', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2203', N'อำเภอท่าใหม่', N'Amphoe Tha Mai', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2204', N'อำเภอโป่งน้ำร้อน', N'Amphoe Pong Nam Ron', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2205', N'อำเภอมะขาม', N'Amphoe Makham', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2206', N'อำเภอแหลมสิงห์', N'Amphoe Laem Sing', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2207', N'อำเภอสอยดาว', N'Amphoe Soi Dao', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2208', N'อำเภอแก่งหางแมว', N'Amphoe Kaeng Hang Maeo', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2209', N'อำเภอนายายอาม', N'Amphoe Na Yai Am', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2210', N'อำเภอเขาคิชฌกูฏ', N'Amphoe Khao Khitchakut', N'22')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2301', N'อำเภอเมืองตราด', N'Amphoe Mueang Trat', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2302', N'อำเภอคลองใหญ่', N'Amphoe Khlong Yai', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2303', N'อำเภอเขาสมิง', N'Amphoe Khao Saming', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2304', N'อำเภอบ่อไร่', N'Amphoe Bo Rai', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2305', N'อำเภอแหลมงอบ', N'Amphoe Laem Ngop', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2306', N'อำเภอเกาะกูด', N'Amphoe Ko Kut', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2307', N'อำเภอเกาะช้าง', N'Amphoe Ko Chang', N'23')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2401', N'อำเภอเมืองฉะเชิงเทรา', N'Amphoe Mueang Chachoengsao', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2402', N'อำเภอบางคล้า', N'Amphoe Bang Khla', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2403', N'อำเภอบางน้ำเปรี้ยว', N'Amphoe Bang Nam Priao', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2404', N'อำเภอบางปะกง', N'Amphoe Bang Pakong', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2405', N'อำเภอบ้านโพธิ์', N'Amphoe Ban Pho', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2406', N'อำเภอพนมสารคาม', N'Amphoe Phanom Sarakham', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2407', N'อำเภอราชสาส์น', N'Amphoe Ratchasan', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2408', N'อำเภอสนามชัยเขต', N'Amphoe Sanam Chai Khet', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2409', N'อำเภอแปลงยาว', N'Amphoe Plaeng Yao', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2410', N'อำเภอท่าตะเกียบ', N'Amphoe Tha Takiap', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2411', N'อำเภอคลองเขื่อน', N'Amphoe Khlong Khuean', N'24')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2501', N'อำเภอเมืองปราจีนบุรี', N'Amphoe Mueang Prachin Buri', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2502', N'อำเภอกบินทร์บุรี', N'Amphoe Kabin Buri', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2503', N'อำเภอนาดี', N'Amphoe Na Di', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2506', N'อำเภอบ้านสร้าง', N'Amphoe Ban Sang', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2507', N'อำเภอประจันตคาม', N'Amphoe Prachantakham', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2508', N'อำเภอศรีมหาโพธิ', N'Amphoe Si Maha Phot', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2509', N'อำเภอศรีมโหสถ', N'Amphoe Si Mahosot', N'25')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2601', N'อำเภอเมืองนครนายก', N'Amphoe Mueang Nakhon Nayok', N'26')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2602', N'อำเภอปากพลี', N'Amphoe Pak Phli', N'26')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2603', N'อำเภอบ้านนา', N'Amphoe Ban Na', N'26')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2604', N'อำเภอองครักษ์', N'Amphoe Ongkharak', N'26')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2701', N'อำเภอเมืองสระแก้ว', N'Amphoe Mueang Sa Kaeo', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2702', N'อำเภอคลองหาด', N'Amphoe Khlong Hat', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2703', N'อำเภอตาพระยา', N'Amphoe Ta Phraya', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2704', N'อำเภอวังน้ำเย็น', N'Amphoe Wang Nam Yen', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2705', N'อำเภอวัฒนานคร', N'Amphoe Watthana Nakhon', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2706', N'อำเภออรัญประเทศ', N'Amphoe Aranyaprathet', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2707', N'อำเภอเขาฉกรรจ์', N'Amphoe Khao Chakan', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2708', N'อำเภอโคกสูง', N'Amphoe Khok Sung', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'2709', N'อำเภอวังสมบูรณ์', N'Amphoe Wang Sombun', N'27')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3001', N'อำเภอเมืองนครราชสีมา', N'Amphoe Mueang Nakhon Ratchasima', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3002', N'อำเภอครบุรี', N'Amphoe Khon Buri', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3003', N'อำเภอเสิงสาง', N'Amphoe Soeng Sang', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3004', N'อำเภอคง', N'Amphoe Khong', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3005', N'อำเภอบ้านเหลื่อม', N'Amphoe Ban Lueam', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3006', N'อำเภอจักราช', N'Amphoe Chakkarat', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3007', N'อำเภอโชคชัย', N'Amphoe Chok Chai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3008', N'อำเภอด่านขุนทด', N'Amphoe Dan Khun Thot', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3009', N'อำเภอโนนไทย', N'Amphoe Non Thai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3010', N'อำเภอโนนสูง', N'Amphoe Non Sung', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3011', N'อำเภอขามสะแกแสง', N'Amphoe Kham Sakaesaeng', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3012', N'อำเภอบัวใหญ่', N'Amphoe Bua Yai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3013', N'อำเภอประทาย', N'Amphoe Prathai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3014', N'อำเภอปักธงชัย', N'Amphoe Pak Thong Chai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3015', N'อำเภอพิมาย', N'Amphoe Phimai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3016', N'อำเภอห้วยแถลง', N'Amphoe Huai Thalaeng', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3017', N'อำเภอชุมพวง', N'Amphoe Chum Phuang', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3018', N'อำเภอสูงเนิน', N'Amphoe Sung Noen', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3019', N'อำเภอขามทะเลสอ', N'Amphoe Kham Thale So', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3020', N'อำเภอสีคิ้ว', N'Amphoe Sikhio', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3021', N'อำเภอปากช่อง', N'Amphoe Pak Chong', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3022', N'อำเภอหนองบุญมาก', N'Amphoe Nong Bunmak', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3023', N'อำเภอแก้งสนามนาง', N'Amphoe Kaeng Sanam Nang', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3024', N'อำเภอโนนแดง', N'Amphoe Non Daeng', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3025', N'อำเภอวังน้ำเขียว', N'Amphoe Wang Nam Khiao', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3026', N'อำเภอเทพารักษ์', N'Amphoe Thepharak', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3027', N'อำเภอเมืองยาง', N'Amphoe Mueang Yang', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3028', N'อำเภอพระทองคำ', N'Amphoe Phra Thong Kham', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3029', N'อำเภอลำทะเมนชัย', N'Amphoe Lam Thamenchai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3030', N'อำเภอบัวลาย', N'Amphoe Bua Lai', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3031', N'อำเภอสีดา', N'Amphoe Sida', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3032', N'อำเภอเฉลิมพระเกียรติ', N'Amphoe Chaloem Phra Kiat', N'30')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3101', N'อำเภอเมืองบุรีรัมย์', N'Amphoe Mueang Buri Ram', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3102', N'อำเภอคูเมือง', N'Amphoe Khu Mueang', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3103', N'อำเภอกระสัง', N'Amphoe Krasang', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3104', N'อำเภอนางรอง', N'Amphoe Nang Rong', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3105', N'อำเภอหนองกี่', N'Amphoe Nong Ki', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3106', N'อำเภอละหานทราย', N'Amphoe Lahan Sai', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3107', N'อำเภอประโคนชัย', N'Amphoe Prakhon Chai', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3108', N'อำเภอบ้านกรวด', N'Amphoe Ban Kruat', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3109', N'อำเภอพุทไธสง', N'Amphoe Phutthaisong', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3110', N'อำเภอลำปลายมาศ', N'Amphoe Lam Plai Mat', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3111', N'อำเภอสตึก', N'Amphoe Satuek', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3112', N'อำเภอปะคำ', N'Amphoe Pakham', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3113', N'อำเภอนาโพธิ์', N'Amphoe Na Pho', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3114', N'อำเภอหนองหงส์', N'Amphoe Nong Hong', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3115', N'อำเภอพลับพลาชัย', N'Amphoe Phlapphla Chai', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3116', N'อำเภอห้วยราช', N'Amphoe Huai Rat', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3117', N'อำเภอโนนสุวรรณ', N'Amphoe Non Suwan', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3118', N'อำเภอชำนิ', N'Amphoe Chamni', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3119', N'อำเภอบ้านใหม่ไชยพจน์', N'Amphoe Ban Mai Chaiyaphot', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3120', N'อำเภอโนนดินแดง', N'Amphoe Non Din Daeng', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3121', N'อำเภอบ้านด่าน', N'Amphoe Ban Dan', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3122', N'อำเภอแคนดง', N'Amphoe Khaen Dong', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3123', N'อำเภอเฉลิมพระเกียรติ', N'Amphoe Chaloem Phra Kiat', N'31')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3201', N'อำเภอเมืองสุรินทร์', N'Amphoe Mueang Surin', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3202', N'อำเภอชุมพลบุรี', N'Amphoe Chumphon Buri', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3203', N'อำเภอท่าตูม', N'Amphoe Tha Tum', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3204', N'อำเภอจอมพระ', N'Amphoe Chom Phra', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3205', N'อำเภอปราสาท', N'Amphoe Prasat', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3206', N'อำเภอกาบเชิง', N'Amphoe Kap Choeng', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3207', N'อำเภอรัตนบุรี', N'Amphoe Rattanaburi', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3208', N'อำเภอสนม', N'Amphoe Sanom', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3209', N'อำเภอศีขรภูมิ', N'Amphoe Sikhoraphum', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3210', N'อำเภอสังขะ', N'Amphoe Sangkha', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3211', N'อำเภอลำดวน', N'Amphoe Lamduan', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3212', N'อำเภอสำโรงทาบ', N'Amphoe Samrong Thap', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3213', N'อำเภอบัวเชด', N'Amphoe Buachet', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3214', N'อำเภอพนมดงรัก', N'Amphoe Phanom Dong Rak', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3215', N'อำเภอศรีณรงค์', N'Amphoe Si Narong', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3216', N'อำเภอเขวาสินรินทร์', N'Amphoe Khwao Sinrin', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3217', N'อำเภอโนนนารายณ์', N'Amphoe Non Narai', N'32')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3301', N'อำเภอเมืองศรีสะเกษ', N'Amphoe Mueang Si Sa Ket', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3302', N'อำเภอยางชุมน้อย', N'Amphoe Yang Chum Noi', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3303', N'อำเภอกันทรารมย์', N'Amphoe Kanthararom', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3304', N'อำเภอกันทรลักษ์', N'Amphoe Kantharalak', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3305', N'อำเภอขุขันธ์', N'Amphoe Khukhan', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3306', N'อำเภอไพรบึง', N'Amphoe Phrai Bueng', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3307', N'อำเภอปรางค์กู่', N'Amphoe Prang Ku', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3308', N'อำเภอขุนหาญ', N'Amphoe Khun Han', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3309', N'อำเภอราษีไศล', N'Amphoe Rasi Salai', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3310', N'อำเภออุทุมพรพิสัย', N'Amphoe Uthumphon Phisai', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3311', N'อำเภอบึงบูรพ์', N'Amphoe Bueng Bun', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3312', N'อำเภอห้วยทับทัน', N'Amphoe Huai Thap Than', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3313', N'อำเภอโนนคูณ', N'Amphoe Non Khun', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3314', N'อำเภอศรีรัตนะ', N'Amphoe Si Rattana', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3315', N'อำเภอน้ำเกลี้ยง', N'Amphoe Nam Kliang', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3316', N'อำเภอวังหิน', N'Amphoe Wang Hin', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3317', N'อำเภอภูสิงห์', N'Amphoe Phu Sing', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3318', N'อำเภอเมืองจันทร์', N'Amphoe Mueang Chan', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3319', N'อำเภอเบญจลักษ์', N'Amphoe Benchalak', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3320', N'อำเภอพยุห์', N'Amphoe Phayu', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3321', N'อำเภอโพธิ์ศรีสุวรรณ', N'Amphoe Pho Si Suwan', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3322', N'อำเภอศิลาลาด', N'Amphoe Sila Lat', N'33')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3401', N'อำเภอเมืองอุบลราชธานี', N'Amphoe Mueang Ubon Ratchathani', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3402', N'อำเภอศรีเมืองใหม่', N'Amphoe Si Mueang Mai', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3403', N'อำเภอโขงเจียม', N'Amphoe Khong Chiam', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3404', N'อำเภอเขื่องใน', N'Amphoe Khueang Nai', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3405', N'อำเภอเขมราฐ', N'Amphoe Khemarat', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3407', N'อำเภอเดชอุดม', N'Amphoe Det Udom', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3408', N'อำเภอนาจะหลวย', N'Amphoe Na Chaluai', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3409', N'อำเภอน้ำยืน', N'Amphoe Nam Yuen', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3410', N'อำเภอบุณฑริก', N'Amphoe Buntharik', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3411', N'อำเภอตระการพืชผล', N'Amphoe Trakan Phuet Phon', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3412', N'อำเภอกุดข้าวปุ้น', N'Amphoe Kut Khaopun', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3414', N'อำเภอม่วงสามสิบ', N'Amphoe Muang Sam Sip', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3415', N'อำเภอวารินชำราบ', N'Amphoe Warin Chamrap', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3419', N'อำเภอพิบูลมังสาหาร', N'Amphoe Phibun Mangsahan', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3420', N'อำเภอตาลสุม', N'Amphoe Tan Sum', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3421', N'อำเภอโพธิ์ไทร', N'Amphoe Pho Sai', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3422', N'อำเภอสำโรง', N'Amphoe Samrong', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3424', N'อำเภอดอนมดแดง', N'Amphoe Don Mot Daeng', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3425', N'อำเภอสิรินธร', N'Amphoe Sirindhorn', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3426', N'อำเภอทุ่งศรีอุดม', N'Amphoe Thung Si Udom', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3429', N'อำเภอนาเยีย', N'Amphoe Na Yia', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3430', N'อำเภอนาตาล', N'Amphoe Na Tan', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3431', N'อำเภอเหล่าเสือโก้ก', N'Fang Kham', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3432', N'อำเภอสว่างวีระวงศ์', N'Amphoe Sawang Wirawong', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3433', N'อำเภอน้ำขุ่น', N'Amphoe Nam Khun', N'34')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3501', N'อำเภอเมืองยโสธร', N'Amphoe Mueang Yasothon', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3502', N'อำเภอทรายมูล', N'Amphoe Sai Mun', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3503', N'อำเภอกุดชุม', N'Amphoe Kut Chum', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3504', N'อำเภอคำเขื่อนแก้ว', N'Amphoe Kham Khuean Kaeo', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3505', N'อำเภอป่าติ้ว', N'Amphoe Pa Tio', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3506', N'อำเภอมหาชนะชัย', N'Amphoe Maha Chana Chai', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3507', N'อำเภอค้อวัง', N'Amphoe Kho Wang', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3508', N'อำเภอเลิงนกทา', N'Amphoe Loeng Nok Tha', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3509', N'อำเภอไทยเจริญ', N'Amphoe Thai Charoen', N'35')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3601', N'อำเภอเมืองชัยภูมิ', N'Amphoe Mueang Chaiyaphum', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3602', N'อำเภอบ้านเขว้า', N'Amphoe Ban Khwao', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3603', N'อำเภอคอนสวรรค์', N'Amphoe Khon Sawan', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3604', N'อำเภอเกษตรสมบูรณ์', N'Amphoe Kaset Sombun', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3605', N'อำเภอหนองบัวแดง', N'Amphoe Nong Bua Daeng', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3606', N'อำเภอจัตุรัส', N'Amphoe Chatturat', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3607', N'อำเภอบำเหน็จณรงค์', N'Amphoe Bamnet Narong', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3608', N'อำเภอหนองบัวระเหว', N'Amphoe Nong Bua Rawe', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3609', N'อำเภอเทพสถิต', N'Amphoe Thep Sathit', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3610', N'อำเภอภูเขียว', N'Amphoe Phu Khiao', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3611', N'อำเภอบ้านแท่น', N'Amphoe Ban Thaen', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3612', N'อำเภอแก้งคร้อ', N'Amphoe Kaeng Khro', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3613', N'อำเภอคอนสาร', N'Amphoe Khon San', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3614', N'อำเภอภักดีชุมพล', N'Amphoe Phakdi Chumphon', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3615', N'อำเภอเนินสง่า', N'Amphoe Noen Sa-nga', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3616', N'อำเภอซับใหญ่', N'Amphoe Sap Yai', N'36')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3701', N'อำเภอเมืองอำนาจเจริญ', N'Amphoe Mueang Amnat Charoen', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3702', N'อำเภอชานุมาน', N'Amphoe Chanuman', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3703', N'อำเภอปทุมราชวงศา', N'Amphoe Pathum Ratchawongsa', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3704', N'อำเภอพนา', N'Amphoe Phana', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3705', N'อำเภอเสนางคนิคม', N'Amphoe Senangkhanikhom', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3706', N'อำเภอหัวตะพาน', N'Amphoe Hua Taphan', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3707', N'อำเภอลืออำนาจ', N'Amphoe Lue Amnat', N'37')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3801', N'อำเภอเมืองบึงกาฬ', N'Amphoe Mueang Bueng Kan', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3802', N'อำเภอพรเจริญ', N'Amphoe Phon Charoen', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3803', N'อำเภอโซ่พิสัย', N'Amphoe So Phisai', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3804', N'อำเภอเซกา', N'Amphoe Seka', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3805', N'อำเภอปากคาด', N'Amphoe Pak Khat', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3806', N'อำเภอบึงโขงหลง', N'Amphoe Bueng Khong Long', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3807', N'อำเภอศรีวิไล', N'Amphoe Si Wilai', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3808', N'อำเภอบุ่งคล้า', N'Amphoe Bung Khla', N'38')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3901', N'อำเภอเมืองหนองบัวลำภู', N'Amphoe Mueang Nong Bua Lam Phu', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3902', N'อำเภอนากลาง', N'Amphoe Na Klang', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3903', N'อำเภอโนนสัง', N'Amphoe Non Sang', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3904', N'อำเภอศรีบุญเรือง', N'Amphoe Si Bun Rueang', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3905', N'อำเภอสุวรรณคูหา', N'Amphoe Suwannakhuha', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'3906', N'อำเภอนาวัง', N'Amphoe Na Wang', N'39')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4001', N'อำเภอเมืองขอนแก่น', N'Amphoe Mueang Khon Kaen', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4002', N'อำเภอบ้านฝาง', N'Amphoe Ban Fang', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4003', N'อำเภอพระยืน', N'Amphoe Phra Yuen', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4004', N'อำเภอหนองเรือ', N'Amphoe Nong Ruea', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4005', N'อำเภอชุมแพ', N'Amphoe Chum Phae', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4006', N'อำเภอสีชมพู', N'Amphoe Si Chomphu', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4007', N'อำเภอน้ำพอง', N'Amphoe Nam Phong', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4008', N'อำเภออุบลรัตน์', N'Amphoe Ubolratana', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4009', N'อำเภอกระนวน', N'Amphoe Kranuan', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4010', N'อำเภอบ้านไผ่', N'Amphoe Ban Phai', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4011', N'อำเภอเปือยน้อย', N'Amphoe Pueai Noi', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4012', N'อำเภอพล', N'Amphoe Phon', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4013', N'อำเภอแวงใหญ่', N'Amphoe Waeng Yai', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4014', N'อำเภอแวงน้อย', N'Amphoe Waeng Noi', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4015', N'อำเภอหนองสองห้อง', N'Amphoe Nong Song Hong', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4016', N'อำเภอภูเวียง', N'Amphoe Phu Wiang', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4017', N'อำเภอมัญจาคีรี', N'Amphoe Mancha Khiri', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4018', N'อำเภอชนบท', N'Amphoe Chonnabot', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4019', N'อำเภอเขาสวนกวาง', N'Amphoe Khao Suan Kwang', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4020', N'อำเภอภูผาม่าน', N'Amphoe Phu Pha Man', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4021', N'อำเภอซำสูง', N'Amphoe Sam Sung', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4022', N'อำเภอโคกโพธิ์ไชย', N'Amphoe Khok Pho Chai', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4023', N'อำเภอหนองนาคำ', N'Amphoe Nong Na Kham', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4024', N'อำเภอบ้านแฮด', N'Amphoe Ban Haet', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4025', N'อำเภอโนนศิลา', N'Amphoe Non Sila', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4026', N'อำเภอเวียงเก่า', N'Amphoe Wiang Kao', N'40')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4101', N'อำเภอเมืองอุดรธานี', N'Amphoe Mueang Udon Thani', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4102', N'อำเภอกุดจับ', N'Amphoe Kut Chap', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4103', N'อำเภอหนองวัวซอ', N'Amphoe Nong Wua So', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4104', N'อำเภอกุมภวาปี', N'Amphoe Kumphawapi', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4105', N'อำเภอโนนสะอาด', N'Amphoe Non Sa-at', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4106', N'อำเภอหนองหาน', N'Amphoe Nong Han', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4107', N'อำเภอทุ่งฝน', N'Amphoe Thung Fon', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4108', N'อำเภอไชยวาน', N'Amphoe Chai Wan', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4109', N'อำเภอศรีธาตุ', N'Amphoe Si That', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4110', N'อำเภอวังสามหมอ', N'Amphoe Wang Sam Mo', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4111', N'อำเภอบ้านดุง', N'Amphoe Ban Dung', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4117', N'อำเภอบ้านผือ', N'Amphoe Ban Phue', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4118', N'อำเภอน้ำโสม', N'Amphoe Nam Som', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4119', N'อำเภอเพ็ญ', N'Amphoe Phen', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4120', N'อำเภอสร้างคอม', N'Amphoe Sang Khom', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4121', N'อำเภอหนองแสง', N'Amphoe Nong Saeng', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4122', N'อำเภอนายูง', N'Amphoe Na Yung', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4123', N'อำเภอพิบูลย์รักษ์', N'Amphoe Phibun Rak', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4124', N'อำเภอกู่แก้ว', N'Amphoe Ku Kaeo', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4125', N'อำเภอประจักษ์ศิลปาคม', N'Amphoe Prachak Sinlapakhom', N'41')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4201', N'อำเภอเมืองเลย', N'Amphoe Mueang Loei', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4202', N'อำเภอนาด้วง', N'Amphoe Na Duang', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4203', N'อำเภอเชียงคาน', N'Amphoe Chiang Khan', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4204', N'อำเภอปากชม', N'Amphoe Pak Chom', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4205', N'อำเภอด่านซ้าย', N'Amphoe Dan Sai', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4206', N'อำเภอนาแห้ว', N'Amphoe Na Haeo', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4207', N'อำเภอภูเรือ', N'Amphoe Phu Ruea', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4208', N'อำเภอท่าลี่', N'Amphoe Tha Li', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4209', N'อำเภอวังสะพุง', N'Amphoe Wang Saphung', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4210', N'อำเภอภูกระดึง', N'Amphoe Phu Kradueng', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4211', N'อำเภอภูหลวง', N'Amphoe Phu Luang', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4212', N'อำเภอผาขาว', N'Amphoe Pha Khao', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4213', N'อำเภอเอราวัณ', N'Amphoe Erawan', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4214', N'อำเภอหนองหิน', N'Amphoe Nong Hin', N'42')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4301', N'อำเภอเมืองหนองคาย', N'Amphoe Mueang Nong Khai', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4302', N'อำเภอท่าบ่อ', N'Amphoe Tha Bo', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4305', N'อำเภอโพนพิสัย', N'Amphoe Phon Phisai', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4307', N'อำเภอศรีเชียงใหม่', N'Amphoe Si Chiang Mai', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4308', N'อำเภอสังคม', N'Amphoe Sangkhom', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4314', N'อำเภอสระใคร', N'Amphoe Sakhrai', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4315', N'อำเภอเฝ้าไร่', N'Amphoe Fao Rai', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4316', N'อำเภอรัตนวาปี', N'Amphoe Rattanawapi', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4317', N'อำเภอโพธิ์ตาก', N'Amphoe Pho Tak', N'43')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4401', N'อำเภอเมืองมหาสารคาม', N'Amphoe Mueang Maha Sarakham', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4402', N'อำเภอแกดำ', N'Amphoe Kae Dam', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4403', N'อำเภอโกสุมพิสัย', N'Amphoe Kosum Phisai', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4404', N'อำเภอกันทรวิชัย', N'Amphoe Kantharawichai', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4405', N'อำเภอเชียงยืน', N'Amphoe Chiang Yuen', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4406', N'อำเภอบรบือ', N'Amphoe Borabue', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4407', N'อำเภอนาเชือก', N'Amphoe Na Chueak', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4408', N'อำเภอพยัคฆภูมิพิสัย', N'Amphoe Phayakkhaphum Phisai', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4409', N'อำเภอวาปีปทุม', N'Amphoe Wapi Pathum', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4410', N'อำเภอนาดูน', N'Amphoe Na Dun', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4411', N'อำเภอยางสีสุราช', N'Amphoe Yang Si Surat', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4412', N'อำเภอกุดรัง', N'Amphoe Kut Rang', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4413', N'อำเภอชื่นชม', N'Amphoe Chuen Chom', N'44')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4501', N'อำเภอเมืองร้อยเอ็ด', N'Amphoe Mueang Roi Et', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4502', N'อำเภอเกษตรวิสัย', N'Amphoe Kaset Wisai', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4503', N'อำเภอปทุมรัตต์', N'Amphoe Pathum Rat', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4504', N'อำเภอจตุรพักตรพิมาน', N'Amphoe Chaturaphak Phiman', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4505', N'อำเภอธวัชบุรี', N'Amphoe Thawat Buri', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4506', N'อำเภอพนมไพร', N'Amphoe Phanom Phrai', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4507', N'อำเภอโพนทอง', N'Amphoe Phon Thong', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4508', N'อำเภอโพธิ์ชัย', N'Amphoe Pho Chai', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4509', N'อำเภอหนองพอก', N'Amphoe Nong Phok', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4510', N'อำเภอเสลภูมิ', N'Amphoe Selaphum', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4511', N'อำเภอสุวรรณภูมิ', N'Amphoe Suwannaphum', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4512', N'อำเภอเมืองสรวง', N'Amphoe Mueang Suang', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4513', N'อำเภอโพนทราย', N'Amphoe Phon Sai', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4514', N'อำเภออาจสามารถ', N'Amphoe At Samat', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4515', N'อำเภอเมยวดี', N'Amphoe Moei Wadi', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4516', N'อำเภอศรีสมเด็จ', N'Amphoe Si Somdet', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4517', N'อำเภอจังหาร', N'Amphoe Changhan', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4518', N'อำเภอเชียงขวัญ', N'Amphoe Chiang Khwan', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4519', N'อำเภอหนองฮี', N'Amphoe Nong Hi', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4520', N'อำเภอทุ่งเขาหลวง', N'Amphoe Thung Khao Luang', N'45')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4601', N'อำเภอเมืองกาฬสินธุ์', N'Amphoe Mueang Kalasin', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4602', N'อำเภอนามน', N'Amphoe Na Mon', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4603', N'อำเภอกมลาไสย', N'Amphoe Kamalasai', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4604', N'อำเภอร่องคำ', N'Amphoe Rong Kham', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4605', N'อำเภอกุฉินารายณ์', N'Amphoe Kuchinarai', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4606', N'อำเภอเขาวง', N'Amphoe Khao Wong', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4607', N'อำเภอยางตลาด', N'Amphoe Yang Talat', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4608', N'อำเภอห้วยเม็ก', N'Amphoe Huai Mek', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4609', N'อำเภอสหัสขันธ์', N'Amphoe Sahatsakhan', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4610', N'อำเภอคำม่วง', N'Amphoe Kham Muang', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4611', N'อำเภอท่าคันโท', N'Amphoe Tha Khantho', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4612', N'อำเภอหนองกุงศรี', N'Amphoe Nong Kung Si', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4613', N'อำเภอสมเด็จ', N'Amphoe Somdet', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4614', N'อำเภอห้วยผึ้ง', N'Amphoe Huai Phueng', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4615', N'อำเภอสามชัย', N'Amphoe Sam Chai', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4616', N'อำเภอนาคู', N'Amphoe Na Khu', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4617', N'อำเภอดอนจาน', N'Amphoe Don Chan', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4618', N'อำเภอฆ้องชัย', N'Amphoe Khong Chai', N'46')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4701', N'อำเภอเมืองสกลนคร', N'Amphoe Mueang Sakon Nakhon', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4702', N'อำเภอกุสุมาลย์', N'Amphoe Kusuman', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4703', N'อำเภอกุดบาก', N'Amphoe Kut Bak', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4704', N'อำเภอพรรณานิคม', N'Amphoe Phanna Nikhom', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4705', N'อำเภอพังโคน', N'Amphoe Phang Khon', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4706', N'อำเภอวาริชภูมิ', N'Amphoe Waritchaphum', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4707', N'อำเภอนิคมน้ำอูน', N'Amphoe Nikhom Nam Un', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4708', N'อำเภอวานรนิวาส', N'Amphoe Wanon Niwat', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4709', N'อำเภอคำตากล้า', N'Amphoe Kham Ta Kla', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4710', N'อำเภอบ้านม่วง', N'Amphoe Ban Muang', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4711', N'อำเภออากาศอำนวย', N'Amphoe Akat Amnuai', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4712', N'อำเภอสว่างแดนดิน', N'Amphoe Sawang Daen Din', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4713', N'อำเภอส่องดาว', N'Amphoe Song Dao', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4714', N'อำเภอเต่างอย', N'Amphoe Tao Ngoi', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4715', N'อำเภอโคกศรีสุพรรณ', N'Amphoe Khok Si Suphan', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4716', N'อำเภอเจริญศิลป์', N'Amphoe Charoen Sin', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4717', N'อำเภอโพนนาแก้ว', N'Amphoe Phon Na Kaeo', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4718', N'อำเภอภูพาน', N'Amphoe Phu Phan', N'47')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4801', N'อำเภอเมืองนครพนม', N'Amphoe Mueang Nakhon Phanom', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4802', N'อำเภอปลาปาก', N'Amphoe Pla Pak', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4803', N'อำเภอท่าอุเทน', N'Amphoe Tha Uthen', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4804', N'อำเภอบ้านแพง', N'Amphoe Ban Phaeng', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4805', N'อำเภอธาตุพนม', N'Amphoe That Phanom', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4806', N'อำเภอเรณูนคร', N'Amphoe Renu Nakhon', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4807', N'อำเภอนาแก', N'Amphoe Na Kae', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4808', N'อำเภอศรีสงคราม', N'Amphoe Si Songkhram', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4809', N'อำเภอนาหว้า', N'Amphoe Na Wa', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4810', N'อำเภอโพนสวรรค์', N'Amphoe Phon Sawan', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4811', N'อำเภอนาทม', N'Amphoe Na Thom', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4812', N'อำเภอวังยาง', N'Amphoe Wang Yang', N'48')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4901', N'อำเภอเมืองมุกดาหาร', N'Amphoe Mueang Mukdahan', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4902', N'อำเภอนิคมคำสร้อย', N'Amphoe Nikhom Kham Soi', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4903', N'อำเภอดอนตาล', N'Amphoe Don Tan', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4904', N'อำเภอดงหลวง', N'Amphoe Dong Luang', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4905', N'อำเภอคำชะอี', N'Amphoe Khamcha-i', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4906', N'อำเภอหว้านใหญ่', N'Amphoe Wan Yai', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'4907', N'อำเภอหนองสูง', N'Amphoe Nong Sung', N'49')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5001', N'อำเภอเมืองเชียงใหม่', N'Amphoe Mueang Chiang Mai', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5002', N'อำเภอจอมทอง', N'Amphoe Chom Thong', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5003', N'อำเภอแม่แจ่ม', N'Amphoe Mae Chaem', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5004', N'อำเภอเชียงดาว', N'Amphoe Chiang Dao', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5005', N'อำเภอดอยสะเก็ด', N'Amphoe Doi Saket', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5006', N'อำเภอแม่แตง', N'Amphoe Mae Taeng', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5007', N'อำเภอแม่ริม', N'Amphoe Mae Rim', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5008', N'อำเภอสะเมิง', N'Amphoe Samoeng', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5009', N'อำเภอฝาง', N'Amphoe Fang', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5010', N'อำเภอแม่อาย', N'Amphoe Mae Ai', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5011', N'อำเภอพร้าว', N'Amphoe Phrao', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5012', N'อำเภอสันป่าตอง', N'Amphoe San Pa Tong', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5013', N'อำเภอสันกำแพง', N'Amphoe San Kamphaeng', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5014', N'อำเภอสันทราย', N'Amphoe San Sai', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5015', N'อำเภอหางดง', N'Amphoe Hang Dong', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5016', N'อำเภอฮอด', N'Amphoe Hot', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5017', N'อำเภอดอยเต่า', N'Amphoe Doi Tao', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5018', N'อำเภออมก๋อย', N'Amphoe Omkoi', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5019', N'อำเภอสารภี', N'Amphoe Saraphi', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5020', N'อำเภอเวียงแหง', N'Amphoe Wiang Haeng', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5021', N'อำเภอไชยปราการ', N'Amphoe Chai Prakan', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5022', N'อำเภอแม่วาง', N'Amphoe Mae Wang', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5023', N'อำเภอแม่ออน', N'Amphoe Mae On', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5024', N'อำเภอดอยหล่อ', N'Amphoe Doi Lo', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5025', N'อำเภอกัลยาณิวัฒนา', N'Amphoe Galayani Vadhana', N'50')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5101', N'อำเภอเมืองลำพูน', N'Amphoe Mueang Lamphun', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5102', N'อำเภอแม่ทา', N'Amphoe Mae Tha', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5103', N'อำเภอบ้านโฮ่ง', N'Amphoe Ban Hong', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5104', N'อำเภอลี้', N'Amphoe Li', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5105', N'อำเภอทุ่งหัวช้าง', N'Amphoe Thung Hua Chang', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5106', N'อำเภอป่าซาง', N'Amphoe Pa Sang', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5107', N'อำเภอบ้านธิ', N'Amphoe Ban Thi', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5108', N'อำเภอเวียงหนองล่อง', N'Amphoe Wiang Nong Long', N'51')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5201', N'อำเภอเมืองลำปาง', N'Amphoe Mueang Lampang', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5202', N'อำเภอแม่เมาะ', N'Amphoe Mae Mo', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5203', N'อำเภอเกาะคา', N'Amphoe Ko Kha', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5204', N'อำเภอเสริมงาม', N'Amphoe Soem Ngam', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5205', N'อำเภองาว', N'Amphoe Ngao', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5206', N'อำเภอแจ้ห่ม', N'Amphoe Chae Hom', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5207', N'อำเภอวังเหนือ', N'Amphoe Wang Nuea', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5208', N'อำเภอเถิน', N'Amphoe Thoen', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5209', N'อำเภอแม่พริก', N'Amphoe Mae Phrik', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5210', N'อำเภอแม่ทะ', N'Amphoe Mae Tha', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5211', N'อำเภอสบปราบ', N'Amphoe Sop Prap', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5212', N'อำเภอห้างฉัตร', N'Amphoe Hang Chat', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5213', N'อำเภอเมืองปาน', N'Amphoe Mueang Pan', N'52')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5301', N'อำเภอเมืองอุตรดิตถ์', N'Amphoe Mueang Uttaradit', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5302', N'อำเภอตรอน', N'Amphoe Tron', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5303', N'อำเภอท่าปลา', N'Amphoe Tha Pla', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5304', N'อำเภอน้ำปาด', N'Amphoe Nam Pat', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5305', N'อำเภอฟากท่า', N'Amphoe Fak Tha', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5306', N'อำเภอบ้านโคก', N'Amphoe Ban Khok', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5307', N'อำเภอพิชัย', N'Amphoe Phichai', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5308', N'อำเภอลับแล', N'Amphoe Laplae', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5309', N'อำเภอทองแสนขัน', N'Amphoe Thong Saen Khan', N'53')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5401', N'อำเภอเมืองแพร่', N'Amphoe Mueang Phrae', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5402', N'อำเภอร้องกวาง', N'Amphoe Rong Kwang', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5403', N'อำเภอลอง', N'Amphoe Long', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5404', N'อำเภอสูงเม่น', N'Amphoe Sung Men', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5405', N'อำเภอเด่นชัย', N'Amphoe Den Chai', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5406', N'อำเภอสอง', N'Amphoe Song', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5407', N'อำเภอวังชิ้น', N'Amphoe Wang Chin', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5408', N'อำเภอหนองม่วงไข่', N'Amphoe Nong Muang Khai', N'54')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5501', N'อำเภอเมืองน่าน', N'Amphoe Mueang Nan', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5502', N'อำเภอแม่จริม', N'Amphoe Mae Charim', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5503', N'อำเภอบ้านหลวง', N'Amphoe Ban Luang', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5504', N'อำเภอนาน้อย', N'Amphoe Na Noi', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5505', N'อำเภอปัว', N'Amphoe Pua', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5506', N'อำเภอท่าวังผา', N'Amphoe Tha Wang Pha', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5507', N'อำเภอเวียงสา', N'Amphoe Wiang Sa', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5508', N'อำเภอทุ่งช้าง', N'Amphoe Thung Chang', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5509', N'อำเภอเชียงกลาง', N'Amphoe Chiang Klang', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5510', N'อำเภอนาหมื่น', N'Amphoe Na Muen', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5511', N'อำเภอสันติสุข', N'Amphoe Santi Suk', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5512', N'อำเภอบ่อเกลือ', N'Amphoe Bo Kluea', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5513', N'อำเภอสองแคว', N'Amphoe Song Khwae', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5514', N'อำเภอภูเพียง', N'Amphoe Phu Phiang', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5515', N'อำเภอเฉลิมพระเกียรติ', N'Amphoe Chaloem Phra Kiat', N'55')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5601', N'อำเภอเมืองพะเยา', N'Amphoe Mueang Phayao', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5602', N'อำเภอจุน', N'Amphoe Chun', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5603', N'อำเภอเชียงคำ', N'Amphoe Chiang Kham', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5604', N'อำเภอเชียงม่วน', N'Amphoe Chiang Muan', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5605', N'อำเภอดอกคำใต้', N'Amphoe Dok Khamtai', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5606', N'อำเภอปง', N'Amphoe Pong', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5607', N'อำเภอแม่ใจ', N'Amphoe Mae Chai', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5608', N'อำเภอภูซาง', N'Amphoe Phu Sang', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5609', N'อำเภอภูกามยาว', N'Amphoe Phu Kamyao', N'56')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5701', N'อำเภอเมืองเชียงราย', N'Amphoe Mueang Chiang Rai', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5702', N'อำเภอเวียงชัย', N'Amphoe Wiang Chai', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5703', N'อำเภอเชียงของ', N'Amphoe Chiang Khong', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5704', N'อำเภอเทิง', N'Amphoe Thoeng', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5705', N'อำเภอพาน', N'Amphoe Phan', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5706', N'อำเภอป่าแดด', N'Amphoe Pa Daet', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5707', N'อำเภอแม่จัน', N'Amphoe Mae Chan', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5708', N'อำเภอเชียงแสน', N'Amphoe Chiang Saen', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5709', N'อำเภอแม่สาย', N'Amphoe Mae Sai', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5710', N'อำเภอแม่สรวย', N'Amphoe Mae Suai', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5711', N'อำเภอเวียงป่าเป้า', N'Amphoe Wiang Pa Pao', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5712', N'อำเภอพญาเม็งราย', N'Amphoe Phaya Mengrai', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5713', N'อำเภอเวียงแก่น', N'Amphoe Wiang Kaen', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5714', N'อำเภอขุนตาล', N'Amphoe Khun Tan', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5715', N'อำเภอแม่ฟ้าหลวง', N'Amphoe Mae Fa Luang', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5716', N'อำเภอแม่ลาว', N'Amphoe Mae Lao', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5717', N'อำเภอเวียงเชียงรุ้ง', N'Amphoe Wiang Chiang Rung', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5718', N'อำเภอดอยหลวง', N'Amphoe Doi Luang', N'57')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5801', N'อำเภอเมืองแม่ฮ่องสอน', N'Amphoe Mueang Mae Hong Son', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5802', N'อำเภอขุนยวม', N'Amphoe Khun Yuam', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5803', N'อำเภอปาย', N'Amphoe Pai', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5804', N'อำเภอแม่สะเรียง', N'Amphoe Mae Sariang', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5805', N'อำเภอแม่ลาน้อย', N'Amphoe Mae La Noi', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5806', N'อำเภอสบเมย', N'Amphoe Sop Moei', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'5807', N'อำเภอปางมะผ้า', N'Amphoe Pang Mapha', N'58')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6001', N'อำเภอเมืองนครสวรรค์', N'Amphoe Mueang Nakhon Sawan', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6002', N'อำเภอโกรกพระ', N'Amphoe Krok Phra', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6003', N'อำเภอชุมแสง', N'Amphoe Chum Saeng', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6004', N'อำเภอหนองบัว', N'Amphoe Nong Bua', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6005', N'อำเภอบรรพตพิสัย', N'Amphoe Banphot Phisai', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6006', N'อำเภอเก้าเลี้ยว', N'Amphoe Kao Liao', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6007', N'อำเภอตาคลี', N'Amphoe Takhli', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6008', N'อำเภอท่าตะโก', N'Amphoe Tha Tako', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6009', N'อำเภอไพศาลี', N'Amphoe Phaisali', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6010', N'อำเภอพยุหะคีรี', N'Amphoe Phayuha Khiri', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6011', N'อำเภอลาดยาว', N'Amphoe Lat Yao', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6012', N'อำเภอตากฟ้า', N'Amphoe Tak Fa', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6013', N'อำเภอแม่วงก์', N'Amphoe Mae Wong', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6014', N'อำเภอแม่เปิน', N'Amphoe Mae Poen', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6015', N'อำเภอชุมตาบง', N'Amphoe Chum Ta Bong', N'60')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6101', N'อำเภอเมืองอุทัยธานี', N'Amphoe Mueang Uthai Thani', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6102', N'อำเภอทัพทัน', N'Amphoe Thap Than', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6103', N'อำเภอสว่างอารมณ์', N'Amphoe Sawang Arom', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6104', N'อำเภอหนองฉาง', N'Amphoe Nong Chang', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6105', N'อำเภอหนองขาหย่าง', N'Amphoe Nong Khayang', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6106', N'อำเภอบ้านไร่', N'Amphoe Ban Rai', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6107', N'อำเภอลานสัก', N'Amphoe Lan Sak', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6108', N'อำเภอห้วยคต', N'Amphoe Huai Khot', N'61')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6201', N'อำเภอเมืองกำแพงเพชร', N'Amphoe Mueang Kamphaeng Phet', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6202', N'อำเภอไทรงาม', N'Amphoe Sai Ngam', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6203', N'อำเภอคลองลาน', N'Amphoe Khlong Lan', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6204', N'อำเภอขาณุวรลักษบุรี', N'Amphoe Khanu Woralaksaburi', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6205', N'อำเภอคลองขลุง', N'Amphoe Khlong Khlung', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6206', N'อำเภอพรานกระต่าย', N'Amphoe Phran Kratai', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6207', N'อำเภอลานกระบือ', N'Amphoe Lan Krabue', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6208', N'อำเภอทรายทองวัฒนา', N'Amphoe Sai Thong Watthana', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6209', N'อำเภอปางศิลาทอง', N'Amphoe Pang Sila Thong', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6210', N'อำเภอบึงสามัคคี', N'Amphoe Bueng Samakkhi', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6211', N'อำเภอโกสัมพีนคร', N'Amphoe Kosamphi Nakhon', N'62')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6301', N'อำเภอเมืองตาก', N'Amphoe Mueang Tak', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6302', N'อำเภอบ้านตาก', N'Amphoe Ban Tak', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6303', N'อำเภอสามเงา', N'Amphoe Sam Ngao', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6304', N'อำเภอแม่ระมาด', N'Amphoe Mae Ramat', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6305', N'อำเภอท่าสองยาง', N'Amphoe Tha Song Yang', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6306', N'อำเภอแม่สอด', N'Amphoe Mae Sot', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6307', N'อำเภอพบพระ', N'Amphoe Phop Phra', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6308', N'อำเภออุ้มผาง', N'Amphoe Umphang', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6309', N'อำเภอวังเจ้า', N'Amphoe Wang Chao', N'63')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6401', N'อำเภอเมืองสุโขทัย', N'Amphoe Mueang Sukhothai', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6402', N'อำเภอบ้านด่านลานหอย', N'Amphoe Ban Dan Lan Hoi', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6403', N'อำเภอคีรีมาศ', N'Amphoe Khiri Mat', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6404', N'อำเภอกงไกรลาศ', N'Amphoe Kong Krailat', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6405', N'อำเภอศรีสัชนาลัย', N'Amphoe Si Satchanalai', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6406', N'อำเภอศรีสำโรง', N'Amphoe Si Samrong', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6407', N'อำเภอสวรรคโลก', N'Amphoe Sawankhalok', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6408', N'อำเภอศรีนคร', N'Amphoe Si Nakhon', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6409', N'อำเภอทุ่งเสลี่ยม', N'Amphoe Thung Saliam', N'64')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6501', N'อำเภอเมืองพิษณุโลก', N'Amphoe Mueang Phitsanulok', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6502', N'อำเภอนครไทย', N'Amphoe Nakhon Thai', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6503', N'อำเภอชาติตระการ', N'Amphoe Chat Trakan', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6504', N'อำเภอบางระกำ', N'Amphoe Bang Rakam', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6505', N'อำเภอบางกระทุ่ม', N'Amphoe Bang Krathum', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6506', N'อำเภอพรหมพิราม', N'Amphoe Phrom Phiram', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6507', N'อำเภอวัดโบสถ์', N'Amphoe Wat Bot', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6508', N'อำเภอวังทอง', N'Amphoe Wang Thong', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6509', N'อำเภอเนินมะปราง', N'Amphoe Noen Maprang', N'65')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6601', N'อำเภอเมืองพิจิตร', N'Amphoe Mueang Phichit', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6602', N'อำเภอวังทรายพูน', N'Amphoe Wang Sai Phun', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6603', N'อำเภอโพธิ์ประทับช้าง', N'Amphoe Pho Prathap Chang', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6604', N'อำเภอตะพานหิน', N'Amphoe Taphan Hin', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6605', N'อำเภอบางมูลนาก', N'Amphoe Bang Mun Nak', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6606', N'อำเภอโพทะเล', N'Amphoe Pho Thale', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6607', N'อำเภอสามง่าม', N'Amphoe Sam Ngam', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6608', N'อำเภอทับคล้อ', N'Amphoe Thap Khlo', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6609', N'อำเภอสากเหล็ก', N'Amphoe Sak Lek', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6610', N'อำเภอบึงนาราง', N'Amphoe Bueng Na Rang', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6611', N'อำเภอดงเจริญ', N'Amphoe Dong Charoen', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6612', N'อำเภอวชิรบารมี', N'Amphoe Wachirabarami', N'66')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6701', N'อำเภอเมืองเพชรบูรณ์', N'Amphoe Mueang Phetchabun', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6702', N'อำเภอชนแดน', N'Amphoe Chon Daen', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6703', N'อำเภอหล่มสัก', N'Amphoe Lom Sak', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6704', N'อำเภอหล่มเก่า', N'Amphoe Lom Kao', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6705', N'อำเภอวิเชียรบุรี', N'Amphoe Wichian Buri', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6706', N'อำเภอศรีเทพ', N'Amphoe Si Thep', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6707', N'อำเภอหนองไผ่', N'Amphoe Nong Phai', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6708', N'อำเภอบึงสามพัน', N'Amphoe Bueng Sam Phan', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6709', N'อำเภอน้ำหนาว', N'Amphoe Nam Nao', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6710', N'อำเภอวังโป่ง', N'Amphoe Wang Pong', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'6711', N'อำเภอเขาค้อ', N'Amphoe Khao Kho', N'67')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7001', N'อำเภอเมืองราชบุรี', N'Amphoe Mueang Ratchaburi', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7002', N'อำเภอจอมบึง', N'Amphoe Chom Bueng', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7003', N'อำเภอสวนผึ้ง', N'Amphoe Suan Phueng', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7004', N'อำเภอดำเนินสะดวก', N'Amphoe Damnoen Saduak', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7005', N'อำเภอบ้านโป่ง', N'Amphoe Ban Pong', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7006', N'อำเภอบางแพ', N'Amphoe Bang Phae', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7007', N'อำเภอโพธาราม', N'Amphoe Photharam', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7008', N'อำเภอปากท่อ', N'Amphoe Pak Tho', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7009', N'อำเภอวัดเพลง', N'Amphoe Wat Phleng', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7010', N'อำเภอบ้านคา', N'Amphoe Ban Kha', N'70')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7101', N'อำเภอเมืองกาญจนบุรี', N'Amphoe Mueang Kanchanaburi', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7102', N'อำเภอไทรโยค', N'Amphoe Sai Yok', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7103', N'อำเภอบ่อพลอย', N'Amphoe Bo Phloi', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7104', N'อำเภอศรีสวัสดิ์', N'Amphoe Si Sawat', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7105', N'อำเภอท่ามะกา', N'Amphoe Tha Maka', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7106', N'อำเภอท่าม่วง', N'Amphoe Tha Muang', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7107', N'อำเภอทองผาภูมิ', N'Amphoe Thong Pha Phum', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7108', N'อำเภอสังขละบุรี', N'Amphoe Sangkhla Buri', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7109', N'อำเภอพนมทวน', N'Amphoe Phanom Thuan', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7110', N'อำเภอเลาขวัญ', N'Amphoe Lao Khwan', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7111', N'อำเภอด่านมะขามเตี้ย', N'Amphoe Dan Makham Tia', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7112', N'อำเภอหนองปรือ', N'Amphoe Nong Prue', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7113', N'อำเภอห้วยกระเจา', N'Amphoe Huai Krachao', N'71')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7201', N'อำเภอเมืองสุพรรณบุรี', N'Amphoe Mueang Suphan Buri', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7202', N'อำเภอเดิมบางนางบวช', N'Amphoe Doem Bang Nang Buat', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7203', N'อำเภอด่านช้าง', N'Amphoe Dan Chang', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7204', N'อำเภอบางปลาม้า', N'Amphoe Bang Pla Ma', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7205', N'อำเภอศรีประจันต์', N'Amphoe Si Prachan', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7206', N'อำเภอดอนเจดีย์', N'Amphoe Don Chedi', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7207', N'อำเภอสองพี่น้อง', N'Amphoe Song Phi Nong', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7208', N'อำเภอสามชุก', N'Amphoe Sam Chuk', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7209', N'อำเภออู่ทอง', N'Amphoe U Thong', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7210', N'อำเภอหนองหญ้าไซ', N'Amphoe Nong Ya Sai', N'72')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7301', N'อำเภอเมืองนครปฐม', N'Amphoe Mueang Nakhon Pathom', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7302', N'อำเภอกำแพงแสน', N'Amphoe Kamphaeng Saen', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7303', N'อำเภอนครชัยศรี', N'Amphoe Nakhon Chai Si', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7304', N'อำเภอดอนตูม', N'Amphoe Don Tum', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7305', N'อำเภอบางเลน', N'Amphoe Bang Len', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7306', N'อำเภอสามพราน', N'Amphoe Sam Phran', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7307', N'อำเภอพุทธมณฑล', N'Amphoe Phutthamonthon', N'73')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7401', N'อำเภอเมืองสมุทรสาคร', N'Amphoe Mueang Samut Sakhon', N'74')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7402', N'อำเภอกระทุ่มแบน', N'Amphoe Krathum Baen', N'74')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7403', N'อำเภอบ้านแพ้ว', N'Amphoe Ban Phaeo', N'74')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7501', N'อำเภอเมืองสมุทรสงคราม', N'Amphoe Mueang Samut Songkhram', N'75')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7502', N'อำเภอบางคนที', N'Amphoe Bang Khonthi', N'75')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7503', N'อำเภออัมพวา', N'Amphoe Amphawa', N'75')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7601', N'อำเภอเมืองเพชรบุรี', N'Amphoe Mueang Phetchaburi', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7602', N'อำเภอเขาย้อย', N'Amphoe Khao Yoi', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7603', N'อำเภอหนองหญ้าปล้อง', N'Amphoe Nong Ya Plong', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7604', N'อำเภอชะอำ', N'Amphoe Cha-am', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7605', N'อำเภอท่ายาง', N'Amphoe Tha Yang', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7606', N'อำเภอบ้านลาด', N'Amphoe Ban Lat', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7607', N'อำเภอบ้านแหลม', N'Amphoe Ban Laem', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7608', N'อำเภอแก่งกระจาน', N'Amphoe Kaeng Krachan', N'76')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7701', N'อำเภอเมืองประจวบคีรีขันธ์', N'Amphoe Mueang Prachuap Khiri Khan', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7702', N'อำเภอกุยบุรี', N'Amphoe Kui Buri', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7703', N'อำเภอทับสะแก', N'Amphoe Thap Sakae', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7704', N'อำเภอบางสะพาน', N'Amphoe Bang Saphan', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7705', N'อำเภอบางสะพานน้อย', N'Amphoe Bang Saphan Noi', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7706', N'อำเภอปราณบุรี', N'Amphoe Pran Buri', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7707', N'อำเภอหัวหิน', N'Amphoe Hua Hin', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'7708', N'อำเภอสามร้อยยอด', N'Amphoe Sam Roi Yot', N'77')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8001', N'อำเภอเมืองนครศรีธรรมราช', N'Amphoe Mueang Nakhon Si Thammarat', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8002', N'อำเภอพรหมคีรี', N'Amphoe Phrom Khiri', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8003', N'อำเภอลานสกา', N'Amphoe Lan Saka', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8004', N'อำเภอฉวาง', N'Amphoe Chawang', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8005', N'อำเภอพิปูน', N'Amphoe Phipun', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8006', N'อำเภอเชียรใหญ่', N'Amphoe Chian Yai', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8007', N'อำเภอชะอวด', N'Amphoe Cha-uat', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8008', N'อำเภอท่าศาลา', N'Amphoe Tha Sala', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8009', N'อำเภอทุ่งสง', N'Amphoe Thung Song', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8010', N'อำเภอนาบอน', N'Amphoe Na Bon', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8011', N'อำเภอทุ่งใหญ่', N'Amphoe Thung Yai', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8012', N'อำเภอปากพนัง', N'Amphoe Pak Phanang', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8013', N'อำเภอร่อนพิบูลย์', N'Amphoe Ron Phibun', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8014', N'อำเภอสิชล', N'Amphoe Sichon', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8015', N'อำเภอขนอม', N'Amphoe Khanom', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8016', N'อำเภอหัวไทร', N'Amphoe Hua Sai', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8017', N'อำเภอบางขัน', N'Amphoe Bang Khan', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8018', N'อำเภอถ้ำพรรณรา', N'Amphoe Tham Phannara', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8019', N'อำเภอจุฬาภรณ์', N'Amphoe Chulabhorn', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8020', N'อำเภอพระพรหม', N'Amphoe Phra Phrom', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8021', N'อำเภอนบพิตำ', N'Amphoe Nopphitam', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8022', N'อำเภอช้างกลาง', N'Amphoe Chang Klang', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8023', N'อำเภอเฉลิมพระเกียรติ', N'Amphoe Chaloem Phra Kiat', N'80')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8101', N'อำเภอเมืองกระบี่', N'Amphoe Mueang Krabi', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8102', N'อำเภอเขาพนม', N'Amphoe Khao Phanom', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8103', N'อำเภอเกาะลันตา', N'Amphoe Ko Lanta', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8104', N'อำเภอคลองท่อม', N'Amphoe Khlong Thom', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8105', N'อำเภออ่าวลึก', N'Amphoe Ao Luek', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8106', N'อำเภอปลายพระยา', N'Amphoe Plai Phraya', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8107', N'อำเภอลำทับ', N'Amphoe Lam Thap', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8108', N'อำเภอเหนือคลอง', N'Amphoe Nuea Khlong', N'81')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8201', N'อำเภอเมืองพังงา', N'Amphoe Mueang Phang-nga', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8202', N'อำเภอเกาะยาว', N'Amphoe Ko Yao', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8203', N'อำเภอกะปง', N'Amphoe Kapong', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8204', N'อำเภอตะกั่วทุ่ง', N'Amphoe Takua Thung', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8205', N'อำเภอตะกั่วป่า', N'Amphoe Takua Pa', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8206', N'อำเภอคุระบุรี', N'Amphoe Khura Buri', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8207', N'อำเภอทับปุด', N'Amphoe Thap Put', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8208', N'อำเภอท้ายเหมือง', N'Amphoe Thai Mueang', N'82')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8301', N'อำเภอเมืองภูเก็ต', N'Amphoe Mueang Phuket', N'83')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8302', N'อำเภอกะทู้', N'Amphoe Kathu', N'83')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8303', N'อำเภอถลาง', N'Amphoe Thalang', N'83')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8401', N'อำเภอเมืองสุราษฎร์ธานี', N'Amphoe Mueang Surat Thani', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8402', N'อำเภอกาญจนดิษฐ์', N'Amphoe Kanchanadit', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8403', N'อำเภอดอนสัก', N'Amphoe Don Sak', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8404', N'อำเภอเกาะสมุย', N'Amphoe Ko Samui', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8405', N'อำเภอเกาะพะงัน', N'Amphoe Ko Pha-ngan', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8406', N'อำเภอไชยา', N'Amphoe Chaiya', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8407', N'อำเภอท่าชนะ', N'Amphoe Tha Chana', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8408', N'อำเภอคีรีรัฐนิคม', N'Amphoe Khiri Rat Nikhom', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8409', N'อำเภอบ้านตาขุน', N'Amphoe Ban Ta Khun', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8410', N'อำเภอพนม', N'Amphoe Phanom', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8411', N'อำเภอท่าฉาง', N'Amphoe Tha Chang', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8412', N'อำเภอบ้านนาสาร', N'Amphoe Ban Na San', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8413', N'อำเภอบ้านนาเดิม', N'Amphoe Ban Na Doem', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8414', N'อำเภอเคียนซา', N'Amphoe Khian Sa', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8415', N'อำเภอเวียงสระ', N'Amphoe Wiang Sa', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8416', N'อำเภอพระแสง', N'Amphoe Phrasaeng', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8417', N'อำเภอพุนพิน', N'Amphoe Phunphin', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8418', N'อำเภอชัยบุรี', N'Amphoe Chai Buri', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8419', N'อำเภอวิภาวดี', N'Amphoe Vibhavadi', N'84')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8501', N'อำเภอเมืองระนอง', N'Amphoe Mueang Ranong', N'85')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8502', N'อำเภอละอุ่น', N'Amphoe La-un', N'85')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8503', N'อำเภอกะเปอร์', N'Amphoe Kapoe', N'85')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8504', N'อำเภอกระบุรี', N'Amphoe Kra Buri', N'85')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8505', N'อำเภอสุขสำราญ', N'Amphoe Suk Samran', N'85')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8601', N'อำเภอเมืองชุมพร', N'Amphoe Mueang Chumphon', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8602', N'อำเภอท่าแซะ', N'Amphoe Tha Sae', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8603', N'อำเภอปะทิว', N'Amphoe Pathio', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8604', N'อำเภอหลังสวน', N'Amphoe Lang Suan', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8605', N'อำเภอละแม', N'Amphoe Lamae', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8606', N'อำเภอพะโต๊ะ', N'Amphoe Phato', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8607', N'อำเภอสวี', N'Amphoe Sawi', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'8608', N'อำเภอทุ่งตะโก', N'Amphoe Thung Tako', N'86')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9001', N'อำเภอเมืองสงขลา', N'Amphoe Mueang Songkhla', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9002', N'อำเภอสทิงพระ', N'Amphoe Sathing Phra', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9003', N'อำเภอจะนะ', N'Amphoe Chana', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9004', N'อำเภอนาทวี', N'Amphoe Na Thawi', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9005', N'อำเภอเทพา', N'Amphoe Thepha', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9006', N'อำเภอสะบ้าย้อย', N'Amphoe Saba Yoi', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9007', N'อำเภอระโนด', N'Amphoe Ranot', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9008', N'อำเภอกระแสสินธุ์', N'Amphoe Krasae Sin', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9009', N'อำเภอรัตภูมิ', N'Amphoe Rattaphum', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9010', N'อำเภอสะเดา', N'Amphoe Sadao', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9011', N'อำเภอหาดใหญ่', N'Amphoe Hat Yai', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9012', N'อำเภอนาหม่อม', N'Amphoe Na Mom', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9013', N'อำเภอควนเนียง', N'Amphoe Khuan Niang', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9014', N'อำเภอบางกล่ำ', N'Amphoe Bang Klam', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9015', N'อำเภอสิงหนคร', N'Amphoe Singhanakhon', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9016', N'อำเภอคลองหอยโข่ง', N'Amphoe Khlong Hoi Khong', N'90')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9101', N'อำเภอเมืองสตูล', N'Amphoe Mueang Satun', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9102', N'อำเภอควนโดน', N'Amphoe Khuan Don', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9103', N'อำเภอควนกาหลง', N'Amphoe Khuan Kalong', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9104', N'อำเภอท่าแพ', N'Amphoe Tha Phae', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9105', N'อำเภอละงู', N'Amphoe La-ngu', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9106', N'อำเภอทุ่งหว้า', N'Amphoe Thung Wa', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9107', N'อำเภอมะนัง', N'Amphoe Manang', N'91')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9201', N'อำเภอเมืองตรัง', N'Amphoe Mueang Trang', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9202', N'อำเภอกันตัง', N'Amphoe Kantang', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9203', N'อำเภอย่านตาขาว', N'Amphoe Yan Ta Khao', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9204', N'อำเภอปะเหลียน', N'Amphoe Palian', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9205', N'อำเภอสิเกา', N'Amphoe Sikao', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9206', N'อำเภอห้วยยอด', N'Amphoe Huai Yot', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9207', N'อำเภอวังวิเศษ', N'Amphoe Wang Wiset', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9208', N'อำเภอนาโยง', N'Amphoe Na Yong', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9209', N'อำเภอรัษฎา', N'Amphoe Ratsada', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9210', N'อำเภอหาดสำราญ', N'Amphoe Hat Samran', N'92')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9301', N'อำเภอเมืองพัทลุง', N'Amphoe Mueang Phatthalung', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9302', N'อำเภอกงหรา', N'Amphoe Kong Ra', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9303', N'อำเภอเขาชัยสน', N'Amphoe Khao Chaison', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9304', N'อำเภอตะโหมด', N'Amphoe Tamot', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9305', N'อำเภอควนขนุน', N'Amphoe Khuan Khanun', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9306', N'อำเภอปากพะยูน', N'Amphoe Pak Phayun', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9307', N'อำเภอศรีบรรพต', N'Amphoe Si Banphot', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9308', N'อำเภอป่าบอน', N'Amphoe Pa Bon', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9309', N'อำเภอบางแก้ว', N'Amphoe Bang Kaeo', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9310', N'อำเภอป่าพะยอม', N'Amphoe Pa Phayom', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9311', N'อำเภอศรีนครินทร์', N'Amphoe Srinagarindra', N'93')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9401', N'อำเภอเมืองปัตตานี', N'Amphoe Mueang Pattani', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9402', N'อำเภอโคกโพธิ์', N'Amphoe Khok Pho', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9403', N'อำเภอหนองจิก', N'Amphoe Nong Chik', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9404', N'อำเภอปะนาเระ', N'Amphoe Panare', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9405', N'อำเภอมายอ', N'Amphoe Mayo', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9406', N'อำเภอทุ่งยางแดง', N'Amphoe Thung Yang Daeng', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9407', N'อำเภอสายบุรี', N'Amphoe Sai Buri', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9408', N'อำเภอไม้แก่น', N'Amphoe Mai Kaen', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9409', N'อำเภอยะหริ่ง', N'Amphoe Yaring', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9410', N'อำเภอยะรัง', N'Amphoe Yarang', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9411', N'อำเภอกะพ้อ', N'Amphoe Kapho', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9412', N'อำเภอแม่ลาน', N'Amphoe Mae Lan', N'94')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9501', N'อำเภอเมืองยะลา', N'Amphoe Mueang Yala', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9502', N'อำเภอเบตง', N'Amphoe Betong', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9503', N'อำเภอบันนังสตา', N'Amphoe Bannang Sata', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9504', N'อำเภอธารโต', N'Amphoe Than To', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9505', N'อำเภอยะหา', N'Amphoe Yaha', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9506', N'อำเภอรามัน', N'Amphoe Raman', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9507', N'อำเภอกาบัง', N'Amphoe Kabang', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9508', N'อำเภอกรงปินัง', N'Amphoe Krong Pinang', N'95')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9601', N'อำเภอเมืองนราธิวาส', N'Amphoe Mueang Narathiwat', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9602', N'อำเภอตากใบ', N'Amphoe Tak Bai', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9603', N'อำเภอบาเจาะ', N'Amphoe Bacho', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9604', N'อำเภอยี่งอ', N'Amphoe Yi-ngo', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9605', N'อำเภอระแงะ', N'Amphoe Ra-ngae', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9606', N'อำเภอรือเสาะ', N'Amphoe Rueso', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9607', N'อำเภอศรีสาคร', N'Amphoe Si Sakhon', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9608', N'อำเภอแว้ง', N'Amphoe Waeng', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9609', N'อำเภอสุคิริน', N'Amphoe Sukhirin', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9610', N'อำเภอสุไหงโก-ลก', N'Amphoe Su-ngai Kolok', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9611', N'อำเภอสุไหงปาดี', N'Amphoe Su-ngai Padi', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9612', N'อำเภอจะแนะ', N'Amphoe Chanae', N'96')
GO

INSERT INTO [dbo].[MT_AddressAmphoe] VALUES (N'9613', N'อำเภอเจาะไอร้อง', N'Amphoe Cho-airong', N'96')
GO


-- ----------------------------
-- Table structure for MT_AddressChangwat
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_AddressChangwat]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_AddressChangwat]
GO

CREATE TABLE [dbo].[MT_AddressChangwat] (
  [changwat_id] varchar(4) COLLATE Thai_100_BIN2  NOT NULL,
  [changwat_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [changwat_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [geo_id] varchar(4) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_AddressChangwat] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสจังหวัด',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressChangwat',
'COLUMN', N'changwat_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อจังหวัด (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressChangwat',
'COLUMN', N'changwat_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อจังหวัด (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressChangwat',
'COLUMN', N'changwat_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสภาค',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressChangwat',
'COLUMN', N'geo_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'จังหวัด',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressChangwat'
GO


-- ----------------------------
-- Records of MT_AddressChangwat
-- ----------------------------
INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'10', N'กรุงเทพมหานคร', N'Bangkok', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'11', N'สมุทรปราการ', N'Samut Prakarn', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'12', N'นนทบุรี', N'Nonthaburi', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'13', N'ปทุมธานี', N'Pathum Thani', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'14', N'พระนครศรีอยุธยา', N'Phra Nakhon Si Ayutthaya', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'15', N'อ่างทอง', N'Ang Thong', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'16', N'ลพบุรี', N'Lop Buri', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'17', N'สิงห์บุรี', N'Sing Buri', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'18', N'ชัยนาท', N'Chai Nat', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'19', N'สระบุรี', N'Saraburi', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'20', N'ชลบุรี', N'Chon Buri', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'21', N'ระยอง', N'Rayong', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'22', N'จันทบุรี', N'Chanthaburi', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'23', N'ตราด', N'Trat', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'24', N'ฉะเชิงเทรา', N'Chachoengsao', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'25', N'ปราจีนบุรี', N'Prachin Buri', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'26', N'นครนายก', N'Nakhon Nayok', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'27', N'สระแก้ว', N'Sa kaeo', N'5')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'30', N'นครราชสีมา', N'Nakhon Ratchasima', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'31', N'บุรีรัมย์', N'Buri Ram', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'32', N'สุรินทร์', N'Surin', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'33', N'ศรีสะเกษ', N'Si Sa Ket', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'34', N'อุบลราชธานี', N'Ubon Ratchathani', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'35', N'ยโสธร', N'Yasothon', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'36', N'ชัยภูมิ', N'Chaiyaphum', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'37', N'อำนาจเจริญ', N'Amnat Charoen', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'38', N'บึงกาฬ', N'Bueng Kan', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'39', N'หนองบัวลำภู', N'Nong Bua Lam Phu', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'40', N'ขอนแก่น', N'Khon Kaen', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'41', N'อุดรธานี', N'Udon Thani', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'42', N'เลย', N'Loei', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'43', N'หนองคาย', N'Nong Khai', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'44', N'มหาสารคาม', N'Maha Sarakham', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'45', N'ร้อยเอ็ด', N'Roi Et', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'46', N'กาฬสินธุ์', N'Kalasin', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'47', N'สกลนคร', N'Sakon Nakhon', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'48', N'นครพนม', N'Nakhon Phanom', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'49', N'มุกดาหาร', N'Mukdahan', N'3')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'50', N'เชียงใหม่', N'Chiang Mai', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'51', N'ลำพูน', N'Lamphun', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'52', N'ลำปาง', N'Lampang', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'53', N'อุตรดิตถ์', N'Uttaradit', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'54', N'แพร่', N'Phrae', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'55', N'น่าน', N'Nan', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'56', N'พะเยา', N'Phayao', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'57', N'เชียงราย', N'Chiang Rai', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'58', N'แม่ฮ่องสอน', N'Mae Hong Son', N'1')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'60', N'นครสวรรค์', N'Nakhon Sawan', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'61', N'อุทัยธานี', N'Uthai Thani', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'62', N'กำแพงเพชร', N'Kamphaeng Phet', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'63', N'ตาก', N'Tak', N'4')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'64', N'สุโขทัย', N'Sukhothai', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'65', N'พิษณุโลก', N'Phitsanulok', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'66', N'พิจิตร', N'Phichit', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'67', N'เพชรบูรณ์', N'Phetchabun', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'70', N'ราชบุรี', N'Ratchaburi', N'4')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'71', N'กาญจนบุรี', N'Kanchanaburi', N'4')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'72', N'สุพรรณบุรี', N'Suphan Buri', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'73', N'นครปฐม', N'Nakhon Pathom', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'74', N'สมุทรสาคร', N'Samut Sakhon', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'75', N'สมุทรสงคราม', N'Samut Songkhram', N'2')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'76', N'เพชรบุรี', N'Phetchaburi', N'4')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'77', N'ประจวบคีรีขันธ์', N'Prachuap Khiri Khan', N'4')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'80', N'นครศรีธรรมราช', N'Nakhon Si Thammarat', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'81', N'กระบี่', N'Krabi', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'82', N'พังงา', N'Phang-nga', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'83', N'ภูเก็ต', N'Phuket', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'84', N'สุราษฎร์ธานี', N'Surat Thani', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'85', N'ระนอง', N'Ranong', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'86', N'ชุมพร', N'Chumphon', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'90', N'สงขลา', N'Songkhla', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'91', N'สตูล', N'Satun', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'92', N'ตรัง', N'Trang', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'93', N'พัทลุง', N'Phatthalung', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'94', N'ปัตตานี', N'Pattani', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'95', N'ยะลา', N'Yala', N'6')
GO

INSERT INTO [dbo].[MT_AddressChangwat] VALUES (N'96', N'นราธิวาส', N'Narathiwat', N'6')
GO


-- ----------------------------
-- Table structure for MT_AddressGeographies
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_AddressGeographies]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_AddressGeographies]
GO

CREATE TABLE [dbo].[MT_AddressGeographies] (
  [geo_id] varchar(4) COLLATE Thai_100_BIN2  NOT NULL,
  [geo_name] varchar(255) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_AddressGeographies] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสภาค',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressGeographies',
'COLUMN', N'geo_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อภาค',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressGeographies',
'COLUMN', N'geo_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ภาค',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressGeographies'
GO


-- ----------------------------
-- Records of MT_AddressGeographies
-- ----------------------------
INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'1', N'ภาคเหนือ')
GO

INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'2', N'ภาคกลาง')
GO

INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'3', N'ภาคตะวันออกเฉียงเหนือ')
GO

INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'4', N'ภาคตะวันตก')
GO

INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'5', N'ภาคตะวันออก')
GO

INSERT INTO [dbo].[MT_AddressGeographies] VALUES (N'6', N'ภาคใต้')
GO


-- ----------------------------
-- Table structure for MT_AddressTambon
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_AddressTambon]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_AddressTambon]
GO

CREATE TABLE [dbo].[MT_AddressTambon] (
  [tambon_id] varchar(6) COLLATE Thai_100_BIN2  NOT NULL,
  [zip_code] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [tambon_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [tambon_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [amphoe_id] varchar(4) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_AddressTambon] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสตำบล',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon',
'COLUMN', N'tambon_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสไปรษณีย์',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon',
'COLUMN', N'zip_code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อตำบล (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon',
'COLUMN', N'tambon_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อตำบล (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon',
'COLUMN', N'tambon_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสไปรษณีย์',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon',
'COLUMN', N'amphoe_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ตำบล',
'SCHEMA', N'dbo',
'TABLE', N'MT_AddressTambon'
GO


-- ----------------------------
-- Records of MT_AddressTambon
-- ----------------------------
INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100101', N'10200', N'แขวงพระบรมมหาราชวัง', N'Khwaeng Phra Borom Maha Ratchawang', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100102', N'10200', N'แขวงวังบูรพาภิรมย์', N'Khwaeng Wang Burapha Phirom', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100103', N'10200', N'แขวงวัดราชบพิธ', N'Khwaeng Wat Ratchabophit', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100104', N'10200', N'แขวงสำราญราษฎร์', N'Khwaeng Samran Rat', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100105', N'10200', N'แขวงศาลเจ้าพ่อเสือ', N'Khwaeng San Chao Pho Suea', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100106', N'10200', N'แขวงเสาชิงช้า', N'Khwaeng Sao Chingcha', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100107', N'10200', N'แขวงบวรนิเวศ', N'Khwaeng Bowon Niwet', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100108', N'10200', N'แขวงตลาดยอด', N'Khwaeng Talat Yot', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100109', N'10200', N'แขวงชนะสงคราม', N'Khwaeng Chana Songkhram', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100110', N'10200', N'แขวงบ้านพานถม', N'Khwaeng Ban Phan Thom', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100111', N'10200', N'แขวงบางขุนพรหม', N'Khwaeng Bang Khun Phrom', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100112', N'10200', N'แขวงวัดสามพระยา', N'Khwaeng Wat Sam Phraya', N'1001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100201', N'10300', N'แขวงดุสิต', N'Khwaeng Dusit', N'1002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100202', N'10300', N'แขวงวชิรพยาบาล', N'Khwaeng Wachira Phayaban', N'1002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100203', N'10300', N'แขวงสวนจิตรลดา', N'Khwaeng Suan Chitlada', N'1002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100204', N'10300', N'แขวงสี่แยกมหานาค', N'Khwaeng Si Yaek Mahanak', N'1002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100206', N'10300', N'แขวงถนนนครไชยศรี', N'Khwaeng Thanon Nakhon Chai Si', N'1002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100301', N'10530', N'แขวงกระทุ่มราย', N'Khwaeng Krathum Rai', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100302', N'10530', N'แขวงหนองจอก', N'Khwaeng Nong Chok', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100303', N'10530', N'แขวงคลองสิบ', N'Khwaeng Khlong Sip', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100304', N'10530', N'แขวงคลองสิบสอง', N'Khwaeng Khlong Sip Song', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100305', N'10530', N'แขวงโคกแฝด', N'Khwaeng Khok Faet', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100306', N'10530', N'แขวงคู้ฝั่งเหนือ', N'Khwaeng Khu Fang Nuea', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100307', N'10530', N'แขวงลำผักชี', N'Khwaeng Lam Phak Chi', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100308', N'10530', N'แขวงลำต้อยติ่ง', N'Khwaeng Lam Toiting', N'1003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100401', N'10500', N'แขวงมหาพฤฒาราม', N'Khwaeng Maha Phruettharam', N'1004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100402', N'10500', N'แขวงสีลม', N'Khwaeng Si Lom', N'1004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100403', N'10500', N'แขวงสุริยวงศ์', N'Khwaeng Suriyawong', N'1004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100404', N'10500', N'แขวงบางรัก', N'Khwaeng Bang Rak', N'1004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100405', N'10500', N'แขวงสี่พระยา', N'Khwaeng Si Phraya', N'1004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100502', N'10220', N'แขวงอนุสาวรีย์', N'Khwaeng Anusawari', N'1005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100508', N'10220', N'แขวงท่าแร้ง', N'Khwaeng Tha Raeng', N'1005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100601', N'10240', N'แขวงคลองจั่น', N'Khwaeng Khlong Chan', N'1006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100608', N'10240', N'แขวงหัวหมาก', N'Khwaeng Hua Mak', N'1006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100701', N'10330', N'แขวงรองเมือง', N'Khwaeng Rong Mueang', N'1007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100702', N'10330', N'แขวงวังใหม่', N'Khwaeng Wang Mai', N'1007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100703', N'10330', N'แขวงปทุมวัน', N'Khwaeng Pathum Wan', N'1007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100704', N'10330', N'แขวงลุมพินี', N'Khwaeng Lumphini', N'1007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100801', N'10100', N'แขวงป้อมปราบ', N'Khwaeng Pom Prap', N'1008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100802', N'10100', N'แขวงวัดเทพศิรินทร์', N'Khwaeng Wat Thep Sirin', N'1008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100803', N'10100', N'แขวงคลองมหานาค', N'Khwaeng Khlong Maha Nak', N'1008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100804', N'10100', N'แขวงบ้านบาตร', N'Khwaeng Ban Bat', N'1008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100805', N'10100', N'แขวงวัดโสมนัส', N'Khwaeng Wat Sommanat', N'1008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100905', N'10260', N'แขวงบางจาก', N'Khwaeng Bang Chak', N'1009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'100910', N'10260', N'แขวงพระโขนงใต้', N'Khwaeng Phra Khanong Tai', N'1009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101001', N'10510', N'แขวงมีนบุรี', N'Khwaeng Min Buri', N'1010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101002', N'10510', N'แขวงแสนแสบ', N'Khwaeng Saen Saep', N'1010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101101', N'10520', N'แขวงลาดกระบัง', N'Khwaeng Lat Krabang', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101102', N'10520', N'แขวงคลองสองต้นนุ่น', N'Khwaeng Khlong Song Ton Nun', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101103', N'10520', N'แขวงคลองสามประเวศ', N'Khwaeng Khlong Sam Prawet', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101104', N'10520', N'แขวงลำปลาทิว', N'Khwaeng Lam Pla Thio', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101105', N'10520', N'แขวงทับยาว', N'Khwaeng Thap Yao', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101106', N'10520', N'แขวงขุมทอง', N'Khwaeng Khum Thong', N'1011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101203', N'10120', N'แขวงช่องนนทรี', N'Khwaeng Chong Nonsi', N'1012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101204', N'10120', N'แขวงบางโพงพาง', N'Khwaeng Bang Phongphang', N'1012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101301', N'10100', N'แขวงจักรวรรดิ', N'Khwaeng Chakkrawat', N'1013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101302', N'10100', N'แขวงสัมพันธวงศ์', N'Khwaeng Samphanthawong', N'1013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101303', N'10100', N'แขวงตลาดน้อย', N'Khwaeng Talat Noi', N'1013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101401', N'10400', N'แขวงสามเสนใน', N'Khwaeng Sam Sen Nai', N'1014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101406', N'10400', N'แขวงพญาไท', N'Khwaeng Phaya Thai', N'1014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101501', N'10600', N'แขวงวัดกัลยาณ์', N'Khwaeng Wat Kanlaya', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101502', N'10600', N'แขวงหิรัญรูจี', N'Khwaeng Hiran Ruchi', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101503', N'10600', N'แขวงบางยี่เรือ', N'Khwaeng Bang Yi Ruea', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101504', N'10600', N'แขวงบุคคโล', N'Khwaeng Bukkhalo', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101505', N'10600', N'แขวงตลาดพลู', N'Khwaeng Talat Phlu', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101506', N'10600', N'แขวงดาวคะนอง', N'Khwaeng Dao Khanong', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101507', N'10600', N'แขวงสำเหร่', N'Khwaeng Samre', N'1015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101601', N'10600', N'แขวงวัดอรุณ', N'Khwaeng Wat Arun', N'1016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101602', N'10600', N'แขวงวัดท่าพระ', N'Khwaeng Wat Tha Phra', N'1016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101701', N'10310', N'แขวงห้วยขวาง', N'Khwaeng Huai Khwang', N'1017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101702', N'10310', N'แขวงบางกะปิ', N'Khwaeng Bang Kapi', N'1017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101704', N'10310', N'แขวงสามเสนนอก', N'Khwaeng Sam Sen Nok', N'1017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101801', N'10600', N'แขวงสมเด็จเจ้าพระยา', N'Khwaeng Somdet Chao Phraya', N'1018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101802', N'10600', N'แขวงคลองสาน', N'Khwaeng Khlong San', N'1018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101803', N'10600', N'แขวงบางลำภูล่าง', N'Khwaeng Bang Lamphu Lang', N'1018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101804', N'10600', N'แขวงคลองต้นไทร', N'Khwaeng Khlong Ton Sai', N'1018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101901', N'10170', N'แขวงคลองชักพระ', N'Khwaeng Khlong Chak Phra', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101902', N'10170', N'แขวงตลิ่งชัน', N'Khwaeng Taling Chan', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101903', N'10170', N'แขวงฉิมพลี', N'Khwaeng Chimphli', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101904', N'10170', N'แขวงบางพรม', N'Khwaeng Bang Phrom', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101905', N'10170', N'แขวงบางระมาด', N'Khwaeng Bang Ramat', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'101907', N'10170', N'แขวงบางเชือกหนัง', N'Khwaeng Bang Chueak Nang', N'1019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102004', N'10700', N'แขวงศิริราช', N'Khwaeng Sirirat', N'1020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102005', N'10700', N'แขวงบ้านช่างหล่อ', N'Khwaeng Ban Chang Lo', N'1020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102006', N'10700', N'แขวงบางขุนนนท์', N'Khwaeng Bang Khun Non', N'1020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102007', N'10700', N'แขวงบางขุนศรี', N'Khwaeng Bang Khun Si', N'1020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102009', N'10700', N'แขวงอรุณอมรินทร์', N'Khwaeng Arun Ammarin', N'1020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102105', N'10150', N'แขวงท่าข้าม', N'Khwaeng Tha Kham', N'1021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102107', N'10150', N'แขวงแสมดำ', N'Khwaeng Samae Dam', N'1021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102201', N'10160', N'แขวงบางหว้า', N'Khwaeng Bang Wa', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102202', N'10160', N'แขวงบางด้วน', N'Khwaeng Bang Duan', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102206', N'10160', N'แขวงบางจาก', N'Khwaeng Bang Chak', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102207', N'10160', N'แขวงบางแวก', N'Khwaeng Bang Waek', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102208', N'10160', N'แขวงคลองขวาง', N'Khwaeng Khlong Khwang', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102209', N'10160', N'แขวงปากคลองภาษีเจริญ', N'Khwaeng Pak Khlong Phasi Charoen', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102210', N'10160', N'แขวงคูหาสวรรค์', N'Khwaeng Khuha Sawan', N'1022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102302', N'10160', N'แขวงหนองแขม', N'Khwaeng Nong Khaem', N'1023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102303', N'10160', N'แขวงหนองค้างพลู', N'Khwaeng Nong Khang Phlu', N'1023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102401', N'10140', N'แขวงราษฎร์บูรณะ', N'Khwaeng Rat Burana', N'1024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102402', N'10140', N'แขวงบางปะกอก', N'Khwaeng Bang Pa Kok', N'1024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102501', N'10700', N'แขวงบางพลัด', N'Khwaeng Bang Phlat', N'1025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102502', N'10700', N'แขวงบางอ้อ', N'Khwaeng Bang O', N'1025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102503', N'10700', N'แขวงบางบำหรุ', N'Khwaeng Bang Bamru', N'1025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102504', N'10700', N'แขวงบางยี่ขัน', N'Khwaeng Bang Yi Khan', N'1025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102601', N'10400', N'แขวงดินแดง', N'Khwaeng Din Daeng', N'1026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102602', N'10400', N'แขวงรัชดาภิเษก', N'Khwaeng Ratchadaphisek', N'1026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102701', N'10240', N'แขวงคลองกุ่ม', N'Khwaeng Khlong Kum', N'1027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102704', N'10240', N'แขวงนวมินทร์', N'Khwaeng Nawamin', N'1027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102705', N'10230', N'แขวงนวลจันทร์', N'Khwaeng Nuan Chan', N'1027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102801', N'10120', N'แขวงทุ่งวัดดอน', N'Khwaeng Thung Wat Don', N'1028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102802', N'10120', N'แขวงยานนาวา', N'Khwaeng Yan Nawa', N'1028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102803', N'10120', N'แขวงทุ่งมหาเมฆ', N'Khwaeng Thung Maha Mek', N'1028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102901', N'10800', N'แขวงบางซื่อ', N'Khwaeng Bang Sue', N'1029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'102902', N'10800', N'แขวงวงศ์สว่าง', N'Khwaeng Wong Sawang', N'1029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103001', N'10900', N'แขวงลาดยาว', N'Khwaeng Lat Yao', N'1030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103003', N'10900', N'แขวงจันทรเกษม', N'Khwaeng Chan Kasem', N'1030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103004', N'10900', N'แขวงจอมพล', N'Khwaeng Chom Phon', N'1030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103005', N'10900', N'แขวงจตุจักร', N'Khwaeng Chatuchak', N'1030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103101', N'10120', N'แขวงบางคอแหลม', N'Khwaeng Bang Kho Laem', N'1031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103102', N'10120', N'แขวงวัดพระยาไกร', N'Khwaeng Wat Phraya Krai', N'1031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103103', N'10120', N'แขวงบางโคล่', N'Khwaeng Bang Khlo', N'1031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103201', N'10250', N'แขวงประเวศ', N'Khwaeng Prawet', N'1032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103202', N'10250', N'แขวงหนองบอน', N'Khwaeng Nong Bon', N'1032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103203', N'10250', N'แขวงดอกไม้', N'Khwaeng Dok Mai', N'1032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103301', N'10110', N'แขวงคลองเตย', N'Khwaeng Khlong Toei', N'1033')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103302', N'10110', N'แขวงคลองตัน', N'Khwaeng Khlong Tan', N'1033')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103303', N'10110', N'แขวงพระโขนง', N'Khwaeng Phra Khanong', N'1033')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103401', N'10250', N'แขวงสวนหลวง', N'Khwaeng Suan Luang', N'1034')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103402', N'10250', N'แขวงอ่อนนุช', N'Khwaeng On Nut', N'1034')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103403', N'10250', N'แขวงพัฒนาการ', N'Khwaeng Phatthanakan', N'1034')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103501', N'10150', N'แขวงบางขุนเทียน', N'Khwaeng Bang Khun Thian', N'1035')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103502', N'10150', N'แขวงบางค้อ', N'Khwaeng Bang Kho', N'1035')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103503', N'10150', N'แขวงบางมด', N'Khwaeng Bang Mot', N'1035')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103504', N'10150', N'แขวงจอมทอง', N'Khwaeng Chom Thong', N'1035')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103602', N'10210', N'แขวงสีกัน', N'Khwaeng Si Kan', N'1036')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103604', N'10210', N'แขวงดอนเมือง', N'Khwaeng Don Mueang', N'1036')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103605', N'10210', N'แขวงสนามบิน', N'Khwaeng Sanam Bin', N'1036')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103701', N'10400', N'แขวงทุ่งพญาไท', N'Khwaeng Thung Phaya Thai', N'1037')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103702', N'10400', N'แขวงถนนพญาไท', N'Khwaeng Thanon Phaya Thai', N'1037')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103703', N'10400', N'แขวงถนนเพชรบุรี', N'Khwaeng Thanon Phetchaburi', N'1037')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103704', N'10400', N'แขวงมักกะสัน', N'Khwaeng Makkasan', N'1037')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103801', N'10230', N'แขวงลาดพร้าว', N'Khwaeng Lat Phrao', N'1038')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103802', N'10230', N'แขวงจรเข้บัว', N'Khwaeng Chorakhe Bua', N'1038')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103901', N'10110', N'แขวงคลองเตยเหนือ', N'Khwaeng Khlong Toei Nuea', N'1039')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103902', N'10110', N'แขวงคลองตันเหนือ', N'Khwaeng Khlong Tan Nuea', N'1039')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103903', N'10110', N'แขวงพระโขนงเหนือ', N'Khwaeng Phra Khanong Nuea', N'1039')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104001', N'10160', N'แขวงบางแค', N'Khwaeng Bang Khae', N'1040')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104002', N'10160', N'แขวงบางแคเหนือ', N'Khwaeng Bang Khae Nuea', N'1040')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104003', N'10160', N'แขวงบางไผ่', N'Khwaeng Bang Phai', N'1040')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104004', N'10160', N'แขวงหลักสอง', N'Khwaeng Lak Song', N'1040')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104101', N'10210', N'แขวงทุ่งสองห้อง', N'Khwaeng Thung Song Hong', N'1041')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104102', N'10210', N'แขวงตลาดบางเขน', N'Khwaeng Talat Bang Khen', N'1041')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104201', N'10220', N'แขวงสายไหม', N'Khwaeng Sai Mai', N'1042')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104202', N'10220', N'แขวงออเงิน', N'Khwaeng O Ngoen', N'1042')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104203', N'10220', N'แขวงคลองถนน', N'Khwaeng Khlong Thanon', N'1042')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104301', N'10230', N'แขวงคันนายาว', N'Khwaeng Khan Na Yao', N'1043')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104302', N'10230', N'แขวงรามอินทรา', N'Khwaeng Ram Inthra', N'1043')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104401', N'10240', N'แขวงสะพานสูง', N'Khwaeng Saphan Sung', N'1044')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104402', N'10240', N'แขวงราษฎร์พัฒนา', N'Khwaeng Rat Phatthana', N'1044')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104403', N'10250', N'แขวงทับช้าง', N'Khwaeng Thap Chang', N'1044')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104501', N'10310', N'แขวงวังทองหลาง', N'Khwaeng Wang Thonglang', N'1045')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104502', N'10310', N'แขวงสะพานสอง', N'Khwaeng Saphan Song', N'1045')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104503', N'10310', N'แขวงคลองเจ้าคุณสิงห์', N'Khwaeng Khlong Chao Khun Sing', N'1045')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104504', N'10310', N'แขวงพลับพลา', N'Khwaeng Phlapphla', N'1045')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104601', N'10510', N'แขวงสามวาตะวันตก', N'Khwaeng Sam Wa Tawan Tok', N'1046')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104602', N'10510', N'แขวงสามวาตะวันออก', N'Khwaeng Sam Wa Tawan Ok', N'1046')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104603', N'10510', N'แขวงบางชัน', N'Khwaeng Bang Chan', N'1046')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104604', N'10510', N'แขวงทรายกองดิน', N'Khwaeng Sai Kong Din', N'1046')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104605', N'10510', N'แขวงทรายกองดินใต้', N'Khwaeng Sai Kong Din Tai', N'1046')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104702', N'10260', N'แขวงบางนาเหนือ', N'Khwaeng Bang Na Nuea', N'1047')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104703', N'10260', N'แขวงบางนาใต้', N'Khwaeng Bang Na Tai', N'1047')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104801', N'10170', N'แขวงทวีวัฒนา', N'Khwaeng Thawi Watthana', N'1048')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104802', N'10170', N'แขวงศาลาธรรมสพน์', N'Khwaeng Sala Thammasop', N'1048')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104901', N'10140', N'แขวงบางมด', N'Khwaeng Bang Mot', N'1049')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'104902', N'10140', N'แขวงทุ่งครุ', N'Khwaeng Thung Khru', N'1049')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'105002', N'10150', N'แขวงบางบอนเหนือ', N'Khwaeng Bang Bon Nuea', N'1050')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'105003', N'10150', N'แขวงบางบอนใต้', N'Khwaeng Bang Bon Tai', N'1050')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'105004', N'10150', N'แขวงคลองบางพราน', N'Khwaeng Khlong Bang Phran', N'1050')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'105005', N'10150', N'แขวงคลองบางบอน', N'Khwaeng Khlong Bang Bon', N'1050')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110101', N'10270', N'ปากน้ำ', N'Pak Nam', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110102', N'10270', N'สำโรงเหนือ', N'Samrong Nuea', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110103', N'10270', N'บางเมือง', N'Bang Mueang', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110104', N'10280', N'ท้ายบ้าน', N'Thai Ban', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110108', N'10280', N'บางปูใหม่', N'Bang Pu Mai', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110110', N'10280', N'แพรกษา', N'Phraek Sa', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110111', N'10270', N'บางโปรง', N'Bang Prong', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110112', N'10280', N'บางปู', N'Bang Pu', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110113', N'10270', N'บางด้วน', N'Bang Duan', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110114', N'10270', N'บางเมืองใหม่', N'Bang Mueang Mai', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110115', N'10270', N'เทพารักษ์', N'Thepharak', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110116', N'10280', N'ท้ายบ้านใหม่', N'Thai Ban Mai', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110117', N'10280', N'แพรกษาใหม่', N'Phraek Sa Mai', N'1101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110201', N'10560', N'บางบ่อ', N'Bang Bo', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110202', N'10560', N'บ้านระกาศ', N'Ban Rakat', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110203', N'10560', N'บางพลีน้อย', N'Bang Phli Noi', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110204', N'10560', N'บางเพรียง', N'Bang Phriang', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110205', N'10550', N'คลองด่าน', N'Khlong Dan', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110206', N'10560', N'คลองสวน', N'Khlong Suan', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110207', N'10560', N'เปร็ง', N'Preng', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110208', N'10560', N'คลองนิยมยาตรา', N'Khlong Niyom Yattra', N'1102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110301', N'10540', N'บางพลีใหญ่', N'Blang Phli Yai', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110302', N'10540', N'บางแก้ว', N'Bang Kaeo', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110303', N'10540', N'บางปลา', N'Bang Pla', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110304', N'10540', N'บางโฉลง', N'Bang Chalong', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110308', N'10540', N'ราชาเทวะ', N'Racha Thewa', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110309', N'10540', N'หนองปรือ', N'Nong Prue', N'1103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110401', N'10130', N'ตลาด', N'Talat', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110402', N'10130', N'บางพึ่ง', N'Bang Phueng', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110403', N'10130', N'บางจาก', N'Bang Chak', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110404', N'10130', N'บางครุ', N'Bang Khru', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110405', N'10130', N'บางหญ้าแพรก', N'Bang Ya Phraek', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110406', N'10130', N'บางหัวเสือ', N'Bang Hua Suea', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110407', N'10130', N'สำโรงใต้', N'Samrong Tai', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110408', N'10130', N'บางยอ', N'Bang Yo', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110409', N'10130', N'บางกะเจ้า', N'Bang Kachao', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110410', N'10130', N'บางน้ำผึ้ง', N'Bang Nam Phueng', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110411', N'10130', N'บางกระสอบ', N'Bang Krasop', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110412', N'10130', N'บางกอบัว', N'Bang Ko Bua', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110413', N'10130', N'ทรงคนอง', N'Song Khanong', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110414', N'10130', N'สำโรง', N'Samrong', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110415', N'10130', N'สำโรงกลาง', N'Samrong Klang', N'1104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110501', N'10290', N'นาเกลือ', N'Na Kluea', N'1105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110502', N'10290', N'บ้านคลองสวน', N'Ban Khlong Suan', N'1105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110503', N'10290', N'แหลมฟ้าผ่า', N'Laem Fa Pha', N'1105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110504', N'10290', N'ปากคลองบางปลากด', N'Pak Khlong Bang Pla Kot', N'1105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110505', N'10290', N'ในคลองบางปลากด', N'Nai Khlong Bang Pla Kot', N'1105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110601', N'10570', N'บางเสาธง', N'Bang Sao Thong', N'1106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110602', N'10570', N'ศีรษะจรเข้น้อย', N'Sisa Chorakhe Noi', N'1106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'110603', N'10570', N'ศีรษะจรเข้ใหญ่', N'Sisa Chorakhe Yai', N'1106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120101', N'11000', N'สวนใหญ่', N'Suan Yai', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120102', N'11000', N'ตลาดขวัญ', N'Talat Khwan', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120103', N'11000', N'บางเขน', N'Bang Khen', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120104', N'11000', N'บางกระสอ', N'Bang Kraso', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120105', N'11000', N'ท่าทราย', N'Tha Sai', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120106', N'11000', N'บางไผ่', N'Bang Phai', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120107', N'11000', N'บางศรีเมือง', N'Bang Si Mueang', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120108', N'11000', N'บางกร่าง', N'Bang Krang', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'103002', N'10900', N'แขวงเสนานิคม', N'Khwaeng Sena Nikhom', N'1030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120109', N'11000', N'ไทรม้า', N'Sai Ma', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120110', N'11000', N'บางรักน้อย', N'Bang Rak Noi', N'1201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120201', N'11130', N'วัดชลอ', N'Wat Chalo', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120202', N'11130', N'บางกรวย', N'Bang Kruai', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120203', N'11130', N'บางสีทอง', N'Bang Si Thong', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120204', N'11130', N'บางขนุน', N'Bang Khanun', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120205', N'11130', N'บางขุนกอง', N'Bang Khun Kong', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120206', N'11130', N'บางคูเวียง', N'Bang Khu Wiang', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120207', N'11130', N'มหาสวัสดิ์', N'Maha Sawat', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120208', N'11130', N'ปลายบาง', N'Plai Bang', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120209', N'11130', N'ศาลากลาง', N'Sala Klang', N'1202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120301', N'11140', N'บางม่วง', N'Bang Muang', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120302', N'11140', N'บางแม่นาง', N'Bang Mae Nang', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120303', N'11140', N'บางเลน', N'Bang Len', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120304', N'11140', N'เสาธงหิน', N'Sao Thong Hin', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120305', N'11140', N'บางใหญ่', N'Bang Yai', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120306', N'11140', N'บ้านใหม่', N'Ban Mai', N'1203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120401', N'11110', N'โสนลอย', N'Sano Loi', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120402', N'11110', N'บางบัวทอง', N'Bang Bua Thong', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120403', N'11110', N'บางรักใหญ่', N'Bang Rak Yai', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120404', N'11110', N'บางคูรัด', N'Bang Khu Rat', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120405', N'11110', N'ละหาร', N'Lahan', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120406', N'11110', N'ลำโพ', N'Lam Pho', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120407', N'11110', N'พิมลราช', N'Phimon Rat', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120408', N'11110', N'บางรักพัฒนา', N'Bang Rak Phatthana', N'1204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120501', N'11150', N'ไทรน้อย', N'Sai Noi', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120502', N'11150', N'ราษฎร์นิยม', N'Rat Niyom', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120503', N'11150', N'หนองเพรางาย', N'Nong Phrao Ngai', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120504', N'11150', N'ไทรใหญ่', N'Sai Yai', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120505', N'11150', N'ขุนศรี', N'Khun Si', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120506', N'11150', N'คลองขวาง', N'Khlong Khwang', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120507', N'11150', N'ทวีวัฒนา', N'Thawi Watthana', N'1205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120601', N'11120', N'ปากเกร็ด', N'Pak Kret', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120602', N'11120', N'บางตลาด', N'Bang Talat', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120603', N'11120', N'บ้านใหม่', N'Ban Mai', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120604', N'11120', N'บางพูด', N'Bang Phut', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120605', N'11120', N'บางตะไนย์', N'Bang Tanai', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120606', N'11120', N'คลองพระอุดม', N'Khlong Phra Udom', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120607', N'11120', N'ท่าอิฐ', N'Tha It', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120608', N'11120', N'เกาะเกร็ด', N'Ko Kret', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120609', N'11120', N'อ้อมเกร็ด', N'Om Kret', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120610', N'11120', N'คลองข่อย', N'Khlong Khoi', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120611', N'11120', N'บางพลับ', N'Bang Phlap', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'120612', N'11120', N'คลองเกลือ', N'Khlong Kluea', N'1206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130101', N'12000', N'บางปรอก', N'Bang Prok', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130102', N'12000', N'บ้านใหม่', N'Ban Mai', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130103', N'12000', N'บ้านกลาง', N'Ban Klang', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130104', N'12000', N'บ้านฉาง', N'Ban Chang', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130105', N'12000', N'บ้านกระแชง', N'Ban Krachaeng', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130106', N'12000', N'บางขะแยง', N'Bang Khayaeng', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130107', N'12000', N'บางคูวัด', N'Bang Khu Wat', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130108', N'12000', N'บางหลวง', N'Bang Luang', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130109', N'12000', N'บางเดื่อ', N'Bang Duea', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130110', N'12000', N'บางพูด', N'Bang Phut', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130111', N'12000', N'บางพูน', N'Bang Phun', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130112', N'12000', N'บางกะดี', N'Bang Kadi', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130113', N'12000', N'สวนพริกไทย', N'Suan Phrik Thai', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130114', N'12000', N'หลักหก', N'Lak Hok', N'1301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130201', N'12120', N'คลองหนึ่ง', N'Khlong Nueng', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130202', N'12120', N'คลองสอง', N'Khlong Song', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130203', N'12120', N'คลองสาม', N'Khlong Sam', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130204', N'12120', N'คลองสี่', N'Khlong Si', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130205', N'12120', N'คลองห้า', N'Khlong Ha', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130206', N'12120', N'คลองหก', N'Khlong Hok', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130207', N'12120', N'คลองเจ็ด', N'Khlong Chet', N'1302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130301', N'12130', N'ประชาธิปัตย์', N'Prachathipat', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130302', N'12130', N'บึงยี่โถ', N'Bueng Yitho', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130303', N'12110', N'รังสิต', N'Rangsit', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130304', N'12110', N'ลำผักกูด', N'Lam Phak Kut', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130305', N'12110', N'บึงสนั่น', N'Bueng Sanan', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130306', N'12110', N'บึงน้ำรักษ์', N'Bueng Nam Rak', N'1303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130401', N'12170', N'บึงบา', N'Bueng Ba', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130402', N'12170', N'บึงบอน', N'Bueng Bon', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130403', N'12170', N'บึงกาสาม', N'Bueng Ka Sam', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130404', N'12170', N'บึงชำอ้อ', N'Bueng Cham O', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130405', N'12170', N'หนองสามวัง', N'Nong Sam Wang', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130406', N'12170', N'ศาลาครุ', N'Sala Khru', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130407', N'12170', N'นพรัตน์', N'Noppharat', N'1304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130501', N'12140', N'ระแหง', N'Rahaeng', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130502', N'12140', N'ลาดหลุมแก้ว', N'Lat Lum Kaeo', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130503', N'12140', N'คูบางหลวง', N'Khu Bang Luang', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130504', N'12140', N'คูขวาง', N'Khu Khwang', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130505', N'12140', N'คลองพระอุดม', N'Khlong Phra Udom', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130506', N'12140', N'บ่อเงิน', N'Bo Ngoen', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130507', N'12140', N'หน้าไม้', N'Na Mai', N'1305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130601', N'12130', N'คูคต', N'Khu Khot', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130602', N'12150', N'ลาดสวาย', N'Lat Sawai', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130603', N'12150', N'บึงคำพร้อย', N'Bueng Kham Phroi', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130604', N'12150', N'ลำลูกกา', N'Lum Luk Ka', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130605', N'12150', N'บึงทองหลาง', N'Bueng Thonglang', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130606', N'12150', N'ลำไทร', N'Lam Sai', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130607', N'12150', N'บึงคอไห', N'Bueng Kho Hai', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130608', N'12150', N'พืชอุดม', N'Phuet Udom', N'1306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130701', N'12160', N'บางเตย', N'Bang Toei', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130702', N'12160', N'คลองควาย', N'Khlong Khwai', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130703', N'12160', N'สามโคก', N'Sam Khok', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130704', N'12160', N'กระแชง', N'Krachaeng', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130705', N'12160', N'บางโพธิ์เหนือ', N'Bang Pho Nuea', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130706', N'12160', N'เชียงรากใหญ่', N'Chiang Rak Yai', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130707', N'12160', N'บ้านปทุม', N'Ban Pathum', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130708', N'12160', N'บ้านงิ้ว', N'Ban Ngio', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130709', N'12160', N'เชียงรากน้อย', N'Chiang Rak Noi', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130710', N'12160', N'บางกระบือ', N'Bang Krabue', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'130711', N'12160', N'ท้ายเกาะ', N'Thai Ko', N'1307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140101', N'13000', N'ประตูชัย', N'Pratu Chai', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140102', N'13000', N'กะมัง', N'Kamang', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140103', N'13000', N'หอรัตนไชย', N'Ho Rattanachai', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140104', N'13000', N'หัวรอ', N'Hua Ro', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140105', N'13000', N'ท่าวาสุกรี', N'Tha Wasukri', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140106', N'13000', N'ไผ่ลิง', N'Phai Ling', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140107', N'13000', N'ปากกราน', N'Pak Kran', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140108', N'13000', N'ภูเขาทอง', N'Phukhao Thong', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140109', N'13000', N'สำเภาล่ม', N'Samphao Lom', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140110', N'13000', N'สวนพริก', N'Suan Phrik', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140111', N'13000', N'คลองตะเคียน', N'Khlong Takhian', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140112', N'13000', N'วัดตูม', N'Wat Tum', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140113', N'13000', N'หันตรา', N'Hantra', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140114', N'13000', N'ลุมพลี', N'Lumphli', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140115', N'13000', N'บ้านใหม่', N'Ban Mai', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140116', N'13000', N'บ้านเกาะ', N'Ban Ko', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140117', N'13000', N'คลองสวนพลู', N'Khlong Suan Phlu', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140118', N'13000', N'คลองสระบัว', N'Khlong Sa Bua', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140119', N'13000', N'เกาะเรียน', N'Ko Rian', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140120', N'13000', N'บ้านป้อม', N'Ban Pom', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140121', N'13000', N'บ้านรุน', N'Ban Run', N'1401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140201', N'13130', N'ท่าเรือ', N'Tha Ruea', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140202', N'13130', N'จำปา', N'Champa', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140203', N'18270', N'ท่าหลวง', N'Tha Luang', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140204', N'13130', N'บ้านร่อม', N'Ban Rom', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140205', N'13130', N'ศาลาลอย', N'Sala Loi', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140206', N'13130', N'วังแดง', N'Wang Daeng', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140207', N'13130', N'โพธิ์เอน', N'Pho En', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140208', N'13130', N'ปากท่า', N'Pak Tha', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140209', N'13130', N'หนองขนาก', N'Nong Khanak', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140210', N'13130', N'ท่าเจ้าสนุก', N'Tha Chao Sanuk', N'1402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140301', N'13260', N'นครหลวง', N'Nakhon Luang', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140302', N'13260', N'ท่าช้าง', N'Tha Chang', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140303', N'13260', N'บ่อโพง', N'Bo Phong', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140304', N'13260', N'บ้านชุ้ง', N'Ban Chung', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140305', N'13260', N'ปากจั่น', N'Pak Chan', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140306', N'13260', N'บางระกำ', N'Bang Rakam', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140307', N'13260', N'บางพระครู', N'Bang Phra Khru', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140308', N'13260', N'แม่ลา', N'Mae La', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140309', N'13260', N'หนองปลิง', N'Nong Pling', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140310', N'13260', N'คลองสะแก', N'Khlong Sakae', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140311', N'13260', N'สามไถ', N'Sam Thai', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140312', N'13260', N'พระนอน', N'Phra Non', N'1403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140401', N'13190', N'บางไทร', N'Bang Sai', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140402', N'13190', N'บางพลี', N'Bang Phli', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140403', N'13190', N'สนามชัย', N'Sanam Chai', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140404', N'13190', N'บ้านแป้ง', N'Ban Paeng', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140405', N'13190', N'หน้าไม้', N'Na Mai', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140406', N'13190', N'บางยี่โท', N'Bang Yi Tho', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140407', N'13190', N'แคออก', N'Khae Ok', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140408', N'13190', N'แคตก', N'Khae Tok', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140409', N'13190', N'ช่างเหล็ก', N'Chang Lek', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140410', N'13190', N'กระแชง', N'Krachaeng', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140411', N'13190', N'บ้านกลึง', N'Ban Klueng', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140412', N'13190', N'ช้างน้อย', N'Chang Noi', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140413', N'13190', N'ห่อหมก', N'Homok', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140414', N'13190', N'ไผ่พระ', N'Phai Phra', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140415', N'13190', N'กกแก้วบูรพา', N'Kok Kaeo Burapha', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140416', N'13190', N'ไม้ตรา', N'Mai Tra', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140417', N'13190', N'บ้านม้า', N'Ban Ma', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140418', N'13190', N'บ้านเกาะ', N'Ban Ko', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140419', N'13290', N'ราชคราม', N'Ratchakhram', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140420', N'13290', N'ช้างใหญ่', N'Chang Yai', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140421', N'13290', N'โพแตง', N'Pho Taeng', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140422', N'13290', N'เชียงรากน้อย', N'Chiang Rak Noi', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140423', N'13190', N'โคกช้าง', N'Khok Chang', N'1404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140501', N'13250', N'บางบาล', N'Bang Ban', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140502', N'13250', N'วัดยม', N'Wat Yom', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140503', N'13250', N'ไทรน้อย', N'Sai Noi', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140504', N'13250', N'สะพานไทย', N'Saphan Thai', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140505', N'13250', N'มหาพราหมณ์', N'Maha Phram', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140506', N'13250', N'กบเจา', N'Kop Chao', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140507', N'13250', N'บ้านคลัง', N'Ban Khlang', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140508', N'13250', N'พระขาว', N'Phra Khao', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140509', N'13250', N'น้ำเต้า', N'Nam Tao', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140510', N'13250', N'ทางช้าง', N'Thang Chang', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140511', N'13250', N'วัดตะกู', N'Wat Taku', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140512', N'13250', N'บางหลวง', N'Bang Luang', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140513', N'13250', N'บางหลวงโดด', N'Bang Luang Dot', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140514', N'13250', N'บางหัก', N'Bang Hak', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140515', N'13250', N'บางชะนี', N'Bang Chani', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140516', N'13250', N'บ้านกุ่ม', N'Ban Kum', N'1405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140601', N'13160', N'บ้านเลน', N'Ban Len', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140602', N'13180', N'เชียงรากน้อย', N'Chiang Rak Noi', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140603', N'13160', N'บ้านโพ', N'Ban Pho', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140604', N'13160', N'บ้านกรด', N'Ban Krot', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140605', N'13160', N'บางกระสั้น', N'Bang Krasan', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140606', N'13160', N'คลองจิก', N'Khlong Chik', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140607', N'13160', N'บ้านหว้า', N'Ban Wa', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140608', N'13160', N'วัดยม', N'Wat Yom', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140609', N'13160', N'บางประแดง', N'Bang Pradaeng', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140610', N'13160', N'สามเรือน', N'Sam Ruean', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140611', N'13160', N'เกาะเกิด', N'Ko Koet', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140612', N'13160', N'บ้านพลับ', N'Ban Phlap', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140613', N'13160', N'บ้านแป้ง', N'Ban Paeng', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140614', N'13160', N'คุ้งลาน', N'Khung Lan', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140615', N'13160', N'ตลิ่งชัน', N'Taling Chan', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140616', N'13170', N'บ้านสร้าง', N'Ban Sang', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140617', N'13160', N'ตลาดเกรียบ', N'Talat Kriap', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140618', N'13160', N'ขนอนหลวง', N'Khanon Luang', N'1406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140701', N'13220', N'บางปะหัน', N'Bang Pahan', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140702', N'13220', N'ขยาย', N'Khayai', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140703', N'13220', N'บางเดื่อ', N'Bang Duea', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140704', N'13220', N'เสาธง', N'Sao Thong', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140705', N'13220', N'ทางกลาง', N'Thang Klang', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140706', N'13220', N'บางเพลิง', N'Bang Phloeng', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140707', N'13220', N'หันสัง', N'Han Sang', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140708', N'13220', N'บางนางร้า', N'Bang Nang Ra', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140709', N'13220', N'ตานิม', N'Ta Nim', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140710', N'13220', N'ทับน้ำ', N'Thap Nam', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140711', N'13220', N'บ้านม้า', N'Ban Ma', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140712', N'13220', N'ขวัญเมือง', N'Khwan Mueang', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140713', N'13220', N'บ้านลี่', N'Ban Li', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140714', N'13220', N'โพธิ์สามต้น', N'Pho Sam Ton', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140715', N'13220', N'พุทเลา', N'Phut Lao', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140716', N'13220', N'ตาลเอน', N'Tan En', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140717', N'13220', N'บ้านขล้อ', N'Ban Khlo', N'1407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140801', N'13120', N'ผักไห่', N'Phak Hai', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140802', N'13120', N'อมฤต', N'Ammarit', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140803', N'13120', N'บ้านแค', N'Ban Khae', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140804', N'13120', N'ลาดน้ำเค็ม', N'Lat Nam Khem', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140805', N'13120', N'ตาลาน', N'Ta Lan', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140806', N'13120', N'ท่าดินแดง', N'Tha Din Daeng', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140807', N'13280', N'ดอนลาน', N'Don Lan', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140808', N'13280', N'นาคู', N'Na Khu', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140809', N'13120', N'กุฎี', N'Kudi', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140810', N'13280', N'ลำตะเคียน', N'Lam Takhian', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140811', N'13120', N'โคกช้าง', N'Khok Chang', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140812', N'13280', N'จักราช', N'Chakkarat', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140813', N'13280', N'หนองน้ำใหญ่', N'Nong Nam Yai', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140814', N'13120', N'ลาดชิด', N'Lat Chit', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140815', N'13120', N'หน้าโคก', N'Na Khok', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140816', N'13120', N'บ้านใหญ่', N'Ban Yai', N'1408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140901', N'13140', N'ภาชี', N'Phachi', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140902', N'13140', N'โคกม่วง', N'Khok Muang', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140903', N'13140', N'ระโสม', N'Rasom', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140904', N'13140', N'หนองน้ำใส', N'Nong Nam Sai', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140905', N'13140', N'ดอนหญ้านาง', N'Don Ya Nang', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140906', N'13140', N'ไผ่ล้อม', N'Phai Lom', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140907', N'13140', N'กระจิว', N'Krachio', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'140908', N'13140', N'พระแก้ว', N'Phra Kaeo', N'1409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141001', N'13230', N'ลาดบัวหลวง', N'Lat Bua Luang', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141002', N'13230', N'หลักชัย', N'Lak Chai', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141003', N'13230', N'สามเมือง', N'Sam Mueang', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141004', N'13230', N'พระยาบันลือ', N'Phraya Banlue', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141005', N'13230', N'สิงหนาท', N'Singhanat', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141006', N'13230', N'คู้สลอด', N'Khu Salot', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141007', N'13230', N'คลองพระยาบันลือ', N'Khlong Phraya Banlue', N'1410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141101', N'13170', N'ลำตาเสา', N'Lam Ta Sao', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141102', N'13170', N'บ่อตาโล่', N'Bo ta Lo', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141103', N'13170', N'วังน้อย', N'Wang Noi', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141104', N'13170', N'ลำไทร', N'Lam Sai', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141105', N'13170', N'สนับทึบ', N'Sanap Thuep', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141106', N'13170', N'พยอม', N'Phayom', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141107', N'13170', N'หันตะเภา', N'Han Taphao', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141108', N'13170', N'วังจุฬา', N'Wang Chula', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141109', N'13170', N'ข้าวงาม', N'Khao Ngam', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141110', N'13170', N'ชะแมบ', N'Chamaep', N'1411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141201', N'13110', N'เสนา', N'Sena', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141202', N'13110', N'บ้านแพน', N'Ban Phaen', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141203', N'13110', N'เจ้าเจ็ด', N'Chao Chet', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141204', N'13110', N'สามกอ', N'Sam Ko', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141205', N'13110', N'บางนมโค', N'Bang Nom Kho', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141206', N'13110', N'หัวเวียง', N'Hua Wiang', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141207', N'13110', N'มารวิชัย', N'Manwichai', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141208', N'13110', N'บ้านโพธิ์', N'Ban Pho', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141209', N'13110', N'รางจรเข้', N'Rang Chorakhe', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141210', N'13110', N'บ้านกระทุ่ม', N'Ban Krathum', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141211', N'13110', N'บ้านแถว', N'Ban Thaeo', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141212', N'13110', N'ชายนา', N'Chai Na', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141213', N'13110', N'สามตุ่ม', N'Sam Tum', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141214', N'13110', N'ลาดงา', N'Lat Nga', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141215', N'13110', N'ดอนทอง', N'Don Thong', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141216', N'13110', N'บ้านหลวง', N'Ban Luang', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141217', N'13110', N'เจ้าเสด็จ', N'Chao Sadet', N'1412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141301', N'13270', N'บางซ้าย', N'Bang Sai', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141302', N'13270', N'แก้วฟ้า', N'Kaeo Fa', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141303', N'13270', N'เต่าเล่า', N'Tao Lao', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141304', N'13270', N'ปลายกลัด', N'Plai Klat', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141305', N'13270', N'เทพมงคล', N'Thep Mongkhon', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141306', N'13270', N'วังพัฒนา', N'Wang Phatthana', N'1413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141401', N'13210', N'คานหาม', N'Khan Ham', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141402', N'13210', N'บ้านช้าง', N'Ban Chang', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141403', N'13210', N'สามบัณฑิต', N'Sam Bandit', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141404', N'13210', N'บ้านหีบ', N'Ban Hip', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141405', N'13210', N'หนองไม้ซุง', N'Nong Mai Sung', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141406', N'13210', N'อุทัย', N'Uthai', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141407', N'13210', N'เสนา', N'Sena', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141408', N'13210', N'หนองน้ำส้ม', N'Nong Nam Som', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141409', N'13210', N'โพสาวหาญ', N'Pho Sao Han', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141410', N'13210', N'ธนู', N'Thanu', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141411', N'13210', N'ข้าวเม่า', N'Khao Mao', N'1414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141501', N'13150', N'หัวไผ่', N'Hua Phai', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141502', N'13150', N'กะทุ่ม', N'Kathum', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141503', N'13150', N'มหาราช', N'Maha Rat', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141504', N'13150', N'น้ำเต้า', N'Nam Tao', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141505', N'13150', N'บางนา', N'Bang Na', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141506', N'13150', N'โรงช้าง', N'Rong Chang', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141507', N'13150', N'เจ้าปลุก', N'Chao Pluk', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141508', N'13150', N'พิตเพียน', N'Phit Phian', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141509', N'13150', N'บ้านนา', N'Ban Na', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141510', N'13150', N'บ้านขวาง', N'Ban Khwang', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141511', N'13150', N'ท่าตอ', N'Tha To', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141512', N'13150', N'บ้านใหม่', N'Ban Mai', N'1415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141601', N'13240', N'บ้านแพรก', N'Ban Phraek', N'1416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141602', N'13240', N'บ้านใหม่', N'Ban Mai', N'1416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141603', N'13240', N'สำพะเนียง', N'Sam Phaniang', N'1416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141604', N'13240', N'คลองน้อย', N'Khlong Noi', N'1416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'141605', N'13240', N'สองห้อง', N'Song Hong', N'1416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150101', N'14000', N'ตลาดหลวง', N'Talat Luang', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150102', N'14000', N'บางแก้ว', N'Bang Kaeo', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150103', N'14000', N'ศาลาแดง', N'Sala Daeng', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150104', N'14000', N'ป่างิ้ว', N'Pa Ngio', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150105', N'14000', N'บ้านแห', N'Ban Hae', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150106', N'14000', N'ตลาดกรวด', N'Talat Kruat', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150107', N'14000', N'มหาดไทย', N'Mahat Thai', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150108', N'14000', N'บ้านอิฐ', N'Ban It', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150109', N'14000', N'หัวไผ่', N'Hua Phai', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150110', N'14000', N'จำปาหล่อ', N'Champa Lo', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150111', N'14000', N'โพสะ', N'Phosa', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150112', N'14000', N'บ้านรี', N'Ban Ri', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150113', N'14000', N'คลองวัว', N'Khlong Wua', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150114', N'14000', N'ย่านซื่อ', N'Yan Sue', N'1501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150201', N'14140', N'จรเข้ร้อง', N'Chorakhe Rong', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150202', N'14140', N'ไชยภูมิ', N'Chaiyaphum', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150203', N'14140', N'ชัยฤทธิ์', N'Chai Rit', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150204', N'14140', N'เทวราช', N'Thewarat', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150205', N'14140', N'ราชสถิตย์', N'Rat Sathit', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150206', N'14140', N'ไชโย', N'Chaiyo', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150207', N'14140', N'หลักฟ้า', N'Lak Fa', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150208', N'14140', N'ชะไว', N'Chawai', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150209', N'14140', N'ตรีณรงค์', N'Tri Narong', N'1502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150301', N'14130', N'บางปลากด', N'Bang Pla Kot', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150302', N'14130', N'ป่าโมก', N'Pa Mok', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150303', N'14130', N'สายทอง', N'Sai Thong', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150304', N'14130', N'โรงช้าง', N'Rong Chang', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150305', N'14130', N'บางเสด็จ', N'Bang Sadet', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150306', N'14130', N'นรสิงห์', N'Norasing', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150307', N'14130', N'เอกราช', N'Ekkarat', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150308', N'14130', N'โผงเผง', N'Phongpheng', N'1503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150401', N'14120', N'อ่างแก้ว', N'Ang Kaeo', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150402', N'14120', N'อินทประมูล', N'Inthapramun', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150403', N'14120', N'บางพลับ', N'Bang Phlap', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150404', N'14120', N'หนองแม่ไก่', N'Nong Mae Kai', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150405', N'14120', N'รำมะสัก', N'Ram Masak', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150406', N'14120', N'บางระกำ', N'Bang Rakam', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150407', N'14120', N'โพธิ์รังนก', N'Pho Rang Nok', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150408', N'14120', N'องครักษ์', N'Ongkharak', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150409', N'14120', N'โคกพุทรา', N'Khok Phutsa', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150410', N'14120', N'ยางช้าย', N'Yang Chai', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150411', N'14120', N'บ่อแร่', N'Bo Rae', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150412', N'14120', N'ทางพระ', N'Thang Phra', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150413', N'14120', N'สามง่าม', N'Sam Ngam', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150414', N'14120', N'บางเจ้าฉ่า', N'Bang Chao Cha', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150415', N'14120', N'คำหยาด', N'Kham Yat', N'1504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150501', N'14150', N'แสวงหา', N'Sawaeng Ha', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150502', N'14150', N'ศรีพราน', N'Si Phran', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150503', N'14150', N'บ้านพราน', N'Ban Phran', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150504', N'14150', N'วังน้ำเย็น', N'Wang Nam Yen', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150505', N'14150', N'สีบัวทอง', N'Si Bua Thong', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150506', N'14150', N'ห้วยไผ่', N'Huai Phai', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150507', N'14150', N'จำลอง', N'Chamlong', N'1505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150601', N'14110', N'ไผ่จำศีล', N'Phai Cham Sin', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150602', N'14110', N'ศาลเจ้าโรงทอง', N'San Chao Rong Thong', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150603', N'14110', N'ไผ่ดำพัฒนา', N'Phai Dam Phatthana', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150604', N'14110', N'สาวร้องไห้', N'Sao Rong Hai', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150605', N'14110', N'ท่าช้าง', N'Tha Chang', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150606', N'14110', N'ยี่ล้น', N'Yi Lon', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150607', N'14110', N'บางจัก', N'Bang Chak', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150608', N'14110', N'ห้วยคันแหลน', N'Huai Khan Laen', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150609', N'14110', N'คลองขนาก', N'Khlong Khanak', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150610', N'14110', N'ไผ่วง', N'Phai Wong', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150611', N'14110', N'สี่ร้อย', N'Si Roi', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150612', N'14110', N'ม่วงเตี้ย', N'Muang Tia', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150613', N'14110', N'หัวตะพาน', N'Hua Taphan', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150614', N'14110', N'หลักแก้ว', N'Lak Kaeo', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150615', N'14110', N'ตลาดใหม่', N'Talat Mai', N'1506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150701', N'14160', N'สามโก้', N'Samko', N'1507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150702', N'14160', N'ราษฎรพัฒนา', N'Ratsadon Phatthana', N'1507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150703', N'14160', N'อบทม', N'Op Thom', N'1507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150704', N'14160', N'โพธิ์ม่วงพันธ์', N'Pho Muang Phan', N'1507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'150705', N'14160', N'มงคลธรรมนิมิต', N'Mongkhon Tham Nimit', N'1507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160101', N'15000', N'ทะเลชุบศร', N'Thale Chup Son', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160102', N'15000', N'ท่าหิน', N'Tha Hin', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160103', N'15000', N'กกโก', N'Kok Ko', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160104', N'13240', N'โก่งธนู', N'Kong Thanu', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160105', N'15160', N'เขาพระงาม', N'Khao Phra Ngam', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160106', N'15000', N'เขาสามยอด', N'Khao Sam Yot', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160107', N'15160', N'โคกกะเทียม', N'Khok Kathiam', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160108', N'15000', N'โคกลำพาน', N'Khok Lam Phan', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160109', N'15210', N'โคกตูม', N'Khok Tum', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160110', N'15000', N'งิ้วราย', N'Ngio Rai', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160111', N'15000', N'ดอนโพธิ์', N'Don Pho', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160112', N'15000', N'ตะลุง', N'Talung', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160114', N'15000', N'ท่าแค', N'Tha Khae', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160115', N'15000', N'ท่าศาลา', N'Tha Sala', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160116', N'15000', N'นิคมสร้างตนเอง', N'Nikhom Sang Ton Eng', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160117', N'15000', N'บางขันหมาก', N'Bang Khan Mak', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160118', N'15000', N'บ้านข่อย', N'Ban Khoi', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160119', N'15000', N'ท้ายตลาด', N'Thai Talat', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160120', N'15000', N'ป่าตาล', N'Pa Tan', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160121', N'15000', N'พรหมมาสตร์', N'Phrommat', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160122', N'15000', N'โพธิ์เก้าต้น', N'Pho Kao Ton', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160123', N'15000', N'โพธิ์ตรุ', N'Pho Tru', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160124', N'15000', N'สี่คลอง', N'Si Khlong', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160125', N'15000', N'ถนนใหญ่', N'Thanon Yai', N'1601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160201', N'15140', N'พัฒนานิคม', N'Phatthana Nikhom', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160202', N'15220', N'ช่องสาริกา', N'Chong Sarika', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160203', N'15140', N'มะนาวหวาน', N'Manao Wan', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160204', N'15220', N'ดีลัง', N'Di Lang', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160205', N'15140', N'โคกสลุง', N'Khok Salung', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160206', N'15140', N'ชอนน้อย', N'Chon Noi', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160207', N'15140', N'หนองบัว', N'Nong Bua', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160208', N'18220', N'ห้วยขุนราม', N'Huai Khun Ram', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160209', N'15140', N'น้ำสุด', N'Nam Sut', N'1602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160301', N'15120', N'โคกสำโรง', N'Khok Samrong', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160302', N'15120', N'เกาะแก้ว', N'Ko Kaeo', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160303', N'15120', N'ถลุงเหล็ก', N'Thalung Lek', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160304', N'15120', N'หลุมข้าว', N'Lum Khao', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160305', N'15120', N'ห้วยโป่ง', N'Huai Pong', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160306', N'15120', N'คลองเกตุ', N'Khlong Ket', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160307', N'15120', N'สะแกราบ', N'Sakae Rap', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160308', N'15120', N'เพนียด', N'Phaniat', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160309', N'15120', N'วังเพลิง', N'Wang Phloeng', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160310', N'15120', N'ดงมะรุม', N'Dong Marum', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160318', N'15120', N'วังขอนขว้าง', N'Wang Khon Khwang', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160320', N'15120', N'วังจั่น', N'Wang Chan', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160322', N'15120', N'หนองแขม', N'Nong Khaem', N'1603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160401', N'15130', N'ลำนารายณ์', N'Lam Narai', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160402', N'15130', N'ชัยนารายณ์', N'Chai Narai', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160403', N'15130', N'ศิลาทิพย์', N'Sila Thip', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160404', N'15130', N'ห้วยหิน', N'Huai Hin', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160405', N'15230', N'ม่วงค่อม', N'Muang Khom', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160406', N'15130', N'บัวชุม', N'Bua Chum', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160407', N'15130', N'ท่าดินดำ', N'Tha Din Dam', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160408', N'15230', N'มะกอกหวาน', N'Makok Wan', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160409', N'15130', N'ซับตะเคียน', N'Sap Takhian', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160410', N'15190', N'นาโสม', N'Na Som', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160411', N'15130', N'หนองยายโต๊ะ', N'Nong Yai To', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160412', N'15130', N'เกาะรัง', N'Ko Rang', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160414', N'15130', N'ท่ามะนาว', N'Tha Manao', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160417', N'15130', N'นิคมลำนารายณ์', N'Nikhom Lam Narai', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160418', N'15230', N'ชัยบาดาล', N'Chai Badan', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160419', N'15130', N'บ้านใหม่สามัคคี', N'Ban Mai Samakkhi', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160422', N'15130', N'เขาแหลม', N'Khao Laem', N'1604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160501', N'15150', N'ท่าวุ้ง', N'Tha Wung', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160502', N'15150', N'บางคู้', N'Bang Khu', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160503', N'15150', N'โพตลาดแก้ว', N'Pho Talat Kaeo', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160504', N'15150', N'บางลี่', N'Bang Li', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160505', N'15150', N'บางงา', N'Bang Nga', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160506', N'15150', N'โคกสลุด', N'Khok Salut', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160507', N'15180', N'เขาสมอคอน', N'Khao Samo Khon', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160508', N'15150', N'หัวสำโรง', N'Hua Samrong', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160509', N'15150', N'ลาดสาลี่', N'Lat Sali', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160510', N'15150', N'บ้านเบิก', N'Ban Boek', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160511', N'15150', N'มุจลินท์', N'Mutchalin', N'1605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160601', N'15110', N'ไผ่ใหญ่', N'Phai Yai', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160602', N'15110', N'บ้านทราย', N'Ban Sai', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160603', N'15110', N'บ้านกล้วย', N'Ban Kluai', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160604', N'15110', N'ดงพลับ', N'Dong Phlap', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160605', N'15180', N'บ้านชี', N'Ban Chi', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160606', N'15110', N'พุคา', N'Phu Kha', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160607', N'15110', N'หินปัก', N'Hin Pak', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160608', N'15110', N'บางพึ่ง', N'Bang Phueng', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160609', N'15110', N'หนองทรายขาว', N'Nong Sai Khao', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160610', N'15110', N'บางกะพี้', N'Bang Kaphi', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160611', N'15110', N'หนองเต่า', N'Nong Tao', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160612', N'15110', N'โพนทอง', N'Phon Thong', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160613', N'15180', N'บางขาม', N'Bang Kham', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160614', N'15110', N'ดอนดึง', N'Don Dueng', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160615', N'15110', N'ชอนม่วง', N'Chon Muang', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160616', N'15110', N'หนองกระเบียน', N'Nong Krabian', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160617', N'15110', N'สายห้วยแก้ว', N'Sai Huai Kaeo', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160618', N'15110', N'มหาสอน', N'Maha Son', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160619', N'15110', N'บ้านหมี่', N'Ban Mi', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160620', N'15110', N'เชียงงา', N'Chiang Nga', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160621', N'15110', N'หนองเมือง', N'Nong Mueang', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160622', N'15110', N'สนามแจง', N'Sanam Chaeng', N'1606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160701', N'15230', N'ท่าหลวง', N'Tha Luang', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160702', N'15230', N'แก่งผักกูด', N'Kaeng Phak Kut', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160703', N'15230', N'ซับจำปา', N'Sap Champa', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160704', N'15230', N'หนองผักแว่น', N'Nong Phak Waen', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160705', N'15230', N'ทะเลวังวัด', N'Thale Wang Wat', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160706', N'15230', N'หัวลำ', N'Hua Lam', N'1607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160801', N'15240', N'สระโบสถ์', N'Sa Bot', N'1608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160802', N'15240', N'มหาโพธิ', N'Maha Phot', N'1608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160803', N'15240', N'ทุ่งท่าช้าง', N'Thung Tha Chang', N'1608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160804', N'15240', N'ห้วยใหญ่', N'Huai Yai', N'1608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160805', N'15240', N'นิยมชัย', N'Niyom Chai', N'1608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160901', N'15250', N'โคกเจริญ', N'Khok Charoen', N'1609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160902', N'15250', N'ยางราก', N'Yang Rak', N'1609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160903', N'15250', N'หนองมะค่า', N'Nong Makha', N'1609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160904', N'15250', N'วังทอง', N'Wang Thong', N'1609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'160905', N'15250', N'โคกแสมสาร', N'Khok Samae San', N'1609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161001', N'15190', N'ลำสนธิ', N'Lam Sonthi', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161002', N'15190', N'ซับสมบูรณ์', N'Sap Sombun', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161003', N'15190', N'หนองรี', N'Nong Ri', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161004', N'15190', N'กุดตาเพชร', N'Kut Ta Phet', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161005', N'15190', N'เขารวก', N'Khao Ruak', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161006', N'15130', N'เขาน้อย', N'Khao Noi', N'1610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161101', N'15170', N'หนองม่วง', N'Nong Muang', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161102', N'15170', N'บ่อทอง', N'Bo Thong', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161103', N'15170', N'ดงดินแดง', N'Dong Din Daeng', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161104', N'15170', N'ชอนสมบูรณ์', N'Chon Sombun', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161105', N'15170', N'ยางโทน', N'Yang Thon', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'161106', N'15170', N'ชอนสารเดช', N'Chon Saradet', N'1611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170101', N'16000', N'บางพุทรา', N'Bang Phutsa', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170102', N'16000', N'บางมัญ', N'Bang Man', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170103', N'16000', N'โพกรวม', N'Phok Ruam', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170104', N'16000', N'ม่วงหมู่', N'Muang Mu', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170105', N'16000', N'หัวไผ่', N'Hua Phai', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170106', N'16000', N'ต้นโพธิ์', N'Ton Pho', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170107', N'16000', N'จักรสีห์', N'Chaksi', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170108', N'16000', N'บางกระบือ', N'Bang Krabue', N'1701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170201', N'16130', N'สิงห์', N'Sing', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170202', N'16130', N'ไม้ดัด', N'Mai Dat', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170203', N'16130', N'เชิงกลัด', N'Choeng Klat', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170204', N'16130', N'โพชนไก่', N'Pho Chon Kai', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170205', N'16130', N'แม่ลา', N'Mae La', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170206', N'16130', N'บ้านจ่า', N'Ban Cha', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170207', N'16130', N'พักทัน', N'Phak Than', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170208', N'16130', N'สระแจง', N'Sa Chaeng', N'1702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170301', N'16150', N'โพทะเล', N'Pho Thale', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170302', N'16150', N'บางระจัน', N'Bang Rachan', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170303', N'16150', N'โพสังโฆ', N'Pho Sangkho', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170304', N'16150', N'ท่าข้าม', N'Tha Kham', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170305', N'16150', N'คอทราย', N'Kho Sai', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170306', N'16150', N'หนองกระทุ่ม', N'Nong Krathum', N'1703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170401', N'16120', N'พระงาม', N'Phra Ngam', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170402', N'16160', N'พรหมบุรี', N'Phrom Buri', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170403', N'16120', N'บางน้ำเชี่ยว', N'Bang Nam Chiao', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170404', N'16120', N'บ้านหม้อ', N'Ban Mo', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170405', N'16120', N'บ้านแป้ง', N'Ban Paeng', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170406', N'16120', N'หัวป่า', N'Hua Pa', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170407', N'16120', N'โรงช้าง', N'Rong Chang', N'1704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170501', N'16140', N'ถอนสมอ', N'Thon Samo', N'1705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170502', N'16140', N'โพประจักษ์', N'Pho Prachak', N'1705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170503', N'16140', N'วิหารขาว', N'Wihan Khao', N'1705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170504', N'16140', N'พิกุลทอง', N'Phikun Thong', N'1705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170601', N'16110', N'อินทร์บุรี', N'In Buri', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170602', N'16110', N'ประศุก', N'Prasuk', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170603', N'16110', N'ทับยา', N'Thap Ya', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170604', N'16110', N'งิ้วราย', N'Ngio Rai', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170605', N'16110', N'ชีน้ำร้าย', N'Chi Nam Rai', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170606', N'16110', N'ท่างาม', N'Tha Ngam', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170607', N'16110', N'น้ำตาล', N'Nam Tan', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170608', N'16110', N'ทองเอน', N'Thong En', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170609', N'16110', N'ห้วยชัน', N'Huai Chan', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'170610', N'16110', N'โพธิ์ชัย', N'Pho Chai', N'1706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180101', N'17000', N'ในเมือง', N'Nai Mueang', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180102', N'17000', N'บ้านกล้วย', N'Ban Kuai', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180103', N'17000', N'ท่าชัย', N'Tha Chai', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180104', N'17000', N'ชัยนาท', N'Chai Nat', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180105', N'17000', N'เขาท่าพระ', N'Khao Tha Phra', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180106', N'17000', N'หาดท่าเสา', N'Hat Tha Sao', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180107', N'17000', N'ธรรมามูล', N'Thammamun', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180108', N'17000', N'เสือโฮก', N'Suea Hok', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180109', N'17000', N'นางลือ', N'Nang Lue', N'1801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180201', N'17110', N'คุ้งสำเภา', N'Khung Samphao', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180202', N'17110', N'วัดโคก', N'Wat Khok', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180203', N'17110', N'ศิลาดาน', N'Sila Dan', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180204', N'17110', N'ท่าฉนวน', N'Tha Chanuan', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180205', N'17170', N'หางน้ำสาคร', N'Hang Nam Sakhon', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180206', N'17170', N'ไร่พัฒนา', N'Rai Phatthana', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180207', N'17170', N'อู่ตะเภา', N'U Taphao', N'1802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180301', N'17120', N'วัดสิงห์', N'Wat Sing', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180302', N'17120', N'มะขามเฒ่า', N'Makham Thao', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180303', N'17120', N'หนองน้อย', N'Nong Noi', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180304', N'17120', N'หนองบัว', N'Nong Bua', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180306', N'17120', N'หนองขุ่น', N'Nong Khun', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180307', N'17120', N'บ่อแร่', N'Bo Rae', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180311', N'17120', N'วังหมัน', N'Wang Man', N'1803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180401', N'17150', N'สรรพยา', N'Sapphaya', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180402', N'17150', N'ตลุก', N'Taluk', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180403', N'17150', N'เขาแก้ว', N'Khao Kaeo', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180404', N'17150', N'โพนางดำตก', N'Pho Nang Dam Tok', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180405', N'17150', N'โพนางดำออก', N'Pho Nang Dam Ok', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180406', N'17150', N'บางหลวง', N'Bang Luang', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180407', N'17150', N'หาดอาษา', N'Hat Asa', N'1804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180501', N'17140', N'แพรกศรีราชา', N'Phraek Si Racha', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180502', N'17140', N'เที่ยงแท้', N'Thiang Thae', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180503', N'17140', N'ห้วยกรด', N'Huai Krot', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180504', N'17140', N'โพงาม', N'Pho Ngam', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180505', N'17140', N'บางขุด', N'Bang Khut', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180506', N'17140', N'ดงคอน', N'Dong Khon', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180507', N'17140', N'ดอนกำ', N'Don Kam', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180508', N'17140', N'ห้วยกรดพัฒนา', N'Huai Krot Phatthana', N'1805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180601', N'17130', N'หันคา', N'Hankha', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180602', N'17130', N'บ้านเชี่ยน', N'Ban Chian', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180605', N'17130', N'ไพรนกยูง', N'Phrai Nok Yung', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180606', N'17160', N'หนองแซง', N'Nong Saeng', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180607', N'17160', N'ห้วยงู', N'Huai Ngu', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180608', N'17130', N'วังไก่เถื่อน', N'Wang Kai Thuean', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180609', N'17130', N'เด่นใหญ่', N'Den Yai', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180611', N'17160', N'สามง่ามท่าโบสถ์', N'Sam Ngam Tha Bot', N'1806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180701', N'17120', N'หนองมะโมง', N'Nong Mamong', N'1807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180702', N'17120', N'วังตะเคียน', N'Wang Takhian', N'1807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180703', N'17120', N'สะพานหิน', N'Saphan Hin', N'1807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180704', N'17120', N'กุดจอก', N'Kut Chok', N'1807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180801', N'17130', N'เนินขาม', N'Noen Kham', N'1808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180802', N'17130', N'กะบกเตี้ย', N'Kabok Tia', N'1808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'180803', N'17130', N'สุขเดือนห้า', N'Suk Duean Ha', N'1808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190101', N'18000', N'ปากเพรียว', N'Pak Phriao', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190105', N'18000', N'ดาวเรือง', N'Dao Rueang', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190106', N'18000', N'นาโฉง', N'Na Chong', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190107', N'18000', N'โคกสว่าง', N'Khok Sawang', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190108', N'18000', N'หนองโน', N'Nong No', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190109', N'18000', N'หนองยาว', N'Nong Yao', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190110', N'18000', N'ปากข้าวสาร', N'Pak Khao San', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190111', N'18000', N'หนองปลาไหล', N'Nong Pla Lai', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190112', N'18000', N'กุดนกเปล้า', N'Kut Nok Plao', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190113', N'18000', N'ตลิ่งชัน', N'Taling Chan', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190114', N'18000', N'ตะกุด', N'Takut', N'1901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190201', N'18110', N'แก่งคอย', N'Kaeng Khoi', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190202', N'18260', N'ทับกวาง', N'Thap Kwang', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190203', N'18110', N'ตาลเดี่ยว', N'Tan Diao', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190204', N'18110', N'ห้วยแห้ง', N'Huai Haeng', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190205', N'18110', N'ท่าคล้อ', N'Tha Khlo', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190206', N'18110', N'หินซ้อน', N'Hin Son', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190207', N'18110', N'บ้านธาตุ', N'Ban That', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190208', N'18110', N'บ้านป่า', N'Ban Pa', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190209', N'18110', N'ท่าตูม', N'Tha Tum', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190210', N'18110', N'ชะอม', N'Cha-om', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190211', N'18110', N'สองคอน', N'Song Khon', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190212', N'18110', N'เตาปูน', N'Tao Pun', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190213', N'18110', N'ชำผักแพว', N'Cham Phak Phaeo', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190215', N'18110', N'ท่ามะปราง', N'Tha Maprang', N'1902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190301', N'18140', N'หนองแค', N'Nong Khae', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190302', N'18140', N'กุ่มหัก', N'Kum Hak', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190303', N'18250', N'คชสิทธิ์', N'Khotchasit', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190304', N'18250', N'โคกตูม', N'Khok Tum', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190305', N'18230', N'โคกแย้', N'Khok Yae', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190306', N'18230', N'บัวลอย', N'Bua Loi', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190307', N'18140', N'ไผ่ต่ำ', N'Phai Tam', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190308', N'18250', N'โพนทอง', N'Phon Thong', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190309', N'18230', N'ห้วยขมิ้น', N'Huai Khamin', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190310', N'18230', N'ห้วยทราย', N'Huai Sai', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190311', N'18140', N'หนองไข่น้ำ', N'Nong Khai Nam', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190312', N'18140', N'หนองแขม', N'Nong Khaem', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190313', N'18230', N'หนองจิก', N'Nong Chik', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190314', N'18140', N'หนองจรเข้', N'Nong Chorakhe', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190315', N'18230', N'หนองนาก', N'Nong Nak', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190316', N'18140', N'หนองปลาหมอ', N'Nong Pla Mo', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190317', N'18140', N'หนองปลิง', N'Nong Pling', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190318', N'18140', N'หนองโรง', N'Nong Rong', N'1903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190401', N'18150', N'หนองหมู', N'Nong Mu', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190402', N'18150', N'บ้านลำ', N'Ban Lam', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190403', N'18150', N'คลองเรือ', N'Khlong Ruea', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190404', N'18150', N'วิหารแดง', N'Wihan Daeng', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190405', N'18150', N'หนองสรวง', N'Nong Suang', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190406', N'18150', N'เจริญธรรม', N'Charoen Tham', N'1904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190501', N'18170', N'หนองแซง', N'Nong Saeng', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190502', N'18170', N'หนองควายโซ', N'Nong Khwai So', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190503', N'18170', N'หนองหัวโพ', N'Nong Hua Pho', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190504', N'18170', N'หนองสีดา', N'Nong Sida', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190505', N'18170', N'หนองกบ', N'Nong Kop', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190506', N'18170', N'ไก่เส่า', N'Kai Sao', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190507', N'18170', N'โคกสะอาด', N'Khok Sa-at', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190508', N'18170', N'ม่วงหวาน', N'Muang Wan', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190509', N'18170', N'เขาดิน', N'Khao Din', N'1905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190601', N'18130', N'บ้านหมอ', N'Ban Mo', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190602', N'18130', N'บางโขมด', N'Bang Khamot', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190603', N'18130', N'สร่างโศก', N'Sang Sok', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190604', N'18130', N'ตลาดน้อย', N'Talat Noi', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190605', N'18130', N'หรเทพ', N'Horathep', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190606', N'18130', N'โคกใหญ่', N'Khok Yai', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190607', N'18130', N'ไผ่ขวาง', N'Phai Khwang', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190608', N'18270', N'บ้านครัว', N'Ban Khrua', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190609', N'18130', N'หนองบัว', N'Nong Bua', N'1906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190701', N'18210', N'ดอนพุด', N'Don Phut', N'1907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190702', N'18210', N'ไผ่หลิ่ว', N'Phai Lio', N'1907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190703', N'18210', N'บ้านหลวง', N'Ban Luang', N'1907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190704', N'18210', N'ดงตะงาว', N'Dong Ta-ngao', N'1907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190801', N'18190', N'หนองโดน', N'Nong Don', N'1908')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190802', N'18190', N'บ้านกลับ', N'Ban Klap', N'1908')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190803', N'18190', N'ดอนทอง', N'Don Thong', N'1908')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190804', N'18190', N'บ้านโปร่ง', N'Ban Prong', N'1908')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190901', N'18120', N'พระพุทธบาท', N'Phra Phutthabat', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190902', N'18120', N'ขุนโขลน', N'Khun Khlon', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190903', N'18120', N'ธารเกษม', N'Than Kasem', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190904', N'18120', N'นายาว', N'Na Yao', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190905', N'18120', N'พุคำจาน', N'Phu Kham Chan', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190906', N'18120', N'เขาวง', N'Khao Wong', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190907', N'18120', N'ห้วยป่าหวาย', N'Huai Pa Wai', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190908', N'18120', N'พุกร่าง', N'Phu Krang', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'190909', N'18120', N'หนองแก', N'Nong Kae', N'1909')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191001', N'18160', N'เสาไห้', N'Sao Hai', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191002', N'18160', N'บ้านยาง', N'Ban Yang', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191003', N'18160', N'หัวปลวก', N'Hua Pluak', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191004', N'18160', N'งิ้วงาม', N'Ngio Ngam', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191005', N'18160', N'ศาลารีไทย', N'Sala Ri Thai', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191006', N'18160', N'ต้นตาล', N'Ton Tan', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191007', N'18160', N'ท่าช้าง', N'Tha Chang', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191008', N'18160', N'พระยาทด', N'Phraya Thot', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191009', N'18160', N'ม่วงงาม', N'Muang Ngam', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191010', N'18160', N'เริงราง', N'Roeng Rang', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191011', N'18160', N'เมืองเก่า', N'Mueang Kao', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191012', N'18160', N'สวนดอกไม้', N'Suan Dok Mai', N'1910')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191101', N'18180', N'มวกเหล็ก', N'Muak Lek', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191102', N'18180', N'มิตรภาพ', N'Mittraphap', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191104', N'18180', N'หนองย่างเสือ', N'Nong Yang Suea', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191105', N'30130', N'ลำสมพุง', N'Lam Somphung', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191107', N'30130', N'ลำพญากลาง', N'Lam Phaya Klang', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191109', N'18220', N'ซับสนุ่น', N'Sap Sanun', N'1911')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191201', N'18220', N'แสลงพัน', N'Salaeng Phan', N'1912')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191202', N'18220', N'คำพราน', N'Kham Phran', N'1912')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191203', N'18220', N'วังม่วง', N'Wang Muang', N'1912')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191301', N'18000', N'เขาดินพัฒนา', N'Khao Din Phatthana', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191302', N'18000', N'บ้านแก้ง', N'Ban Kaeng', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191303', N'18000', N'ผึ้งรวง', N'Phueng Ruang', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191304', N'18240', N'พุแค', N'Phu Khae', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191305', N'18000', N'ห้วยบง', N'Huai Bong', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'191306', N'18240', N'หน้าพระลาน', N'Na Phra Lan', N'1913')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200101', N'20000', N'บางปลาสร้อย', N'Bang Pla Soi', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200102', N'20000', N'มะขามหย่ง', N'Makham Yong', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200103', N'20000', N'บ้านโขด', N'Ban Khot', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200104', N'20130', N'แสนสุข', N'Saen Suk', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200105', N'20000', N'บ้านสวน', N'Ban Suan', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200106', N'20000', N'หนองรี', N'Nong Ri', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200107', N'20000', N'นาป่า', N'Na Pa', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200108', N'20000', N'หนองข้างคอก', N'Nong Khang Khok', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200109', N'20000', N'ดอนหัวฬ่อ', N'Don Hua Lo', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200110', N'20000', N'หนองไม้แดง', N'Nong Mai Daeng', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200111', N'20000', N'บางทราย', N'Bang Sai', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200112', N'20000', N'คลองตำหรุ', N'Khlong Tamru', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200113', N'20130', N'เหมือง', N'Mueang', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200114', N'20130', N'บ้านปึก', N'Ban Puek', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200115', N'20000', N'ห้วยกะปิ', N'Huai Kapi', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200116', N'20000', N'เสม็ด', N'Samet', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200117', N'20000', N'อ่างศิลา', N'Ang Sila', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200118', N'20000', N'สำนักบก', N'Samnak Bok', N'2001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200201', N'20170', N'บ้านบึง', N'Ban Bueng', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200202', N'20220', N'คลองกิ่ว', N'Khlong Kio', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200203', N'20170', N'มาบไผ่', N'Map Phai', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200204', N'20170', N'หนองซ้ำซาก', N'Nong Samsak', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200205', N'20170', N'หนองบอนแดง', N'Nong Bon Daeng', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200206', N'20170', N'หนองชาก', N'Nong Chak', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200207', N'20220', N'หนองอิรุณ', N'Nong Irun', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200208', N'20220', N'หนองไผ่แก้ว', N'Nong Phai Kaeo', N'2002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200301', N'20190', N'หนองใหญ่', N'Nong Yai', N'2003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200302', N'20190', N'คลองพลู', N'Khlong Phlu', N'2003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200303', N'20190', N'หนองเสือช้าง', N'Nong Suea Chang', N'2003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200304', N'20190', N'ห้างสูง', N'Hang Sung', N'2003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200305', N'20190', N'เขาซก', N'Khao Sok', N'2003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200401', N'20150', N'บางละมุง', N'Bang Lamung', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200402', N'20150', N'หนองปรือ', N'Nong Prue', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200403', N'20150', N'หนองปลาไหล', N'Nong Pla Lai', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200404', N'20150', N'โป่ง', N'Pong', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200405', N'20150', N'เขาไม้แก้ว', N'Khao Mai Kaeo', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200406', N'20150', N'ห้วยใหญ่', N'Huai Yai', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200407', N'20150', N'ตะเคียนเตี้ย', N'Takhian Tia', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200408', N'20150', N'นาเกลือ', N'Na Kluea', N'2004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200501', N'20160', N'พานทอง', N'Phan Thong', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200502', N'20160', N'หนองตำลึง', N'Nong Tamlueng', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200503', N'20160', N'มาบโป่ง', N'Map Pong', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200504', N'20160', N'หนองกะขะ', N'Nong Kakha', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200505', N'20160', N'หนองหงษ์', N'Nong Hong', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200506', N'20160', N'โคกขี้หนอน', N'Khok Khi Non', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200507', N'20160', N'บ้านเก่า', N'Ban Kao', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200508', N'20160', N'หน้าประดู่', N'Na Pradu', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200509', N'20160', N'บางนาง', N'Bang Nang', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200510', N'20160', N'เกาะลอย', N'Ko Loi', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200511', N'20160', N'บางหัก', N'Bang Hak', N'2005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200601', N'20140', N'พนัสนิคม', N'Phanat Nikhom', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200602', N'20140', N'หน้าพระธาตุ', N'Na Phra That', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200603', N'20140', N'วัดหลวง', N'Wat Luang', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200604', N'20140', N'บ้านเซิด', N'Ban Soet', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200605', N'20140', N'นาเริก', N'Na Roek', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200606', N'20140', N'หมอนนาง', N'Mon Nang', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200607', N'20140', N'สระสี่เหลี่ยม', N'Sa Si Liam', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200608', N'20140', N'วัดโบสถ์', N'Wat Bot', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200609', N'20140', N'กุฎโง้ง', N'Kut Ngong', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200610', N'20140', N'หัวถนน', N'Hua Thanon', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200611', N'20140', N'ท่าข้าม', N'Tha Kham', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200613', N'20140', N'หนองปรือ', N'Nong Prue', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200614', N'20140', N'หนองขยาด', N'Nong Khayat', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200615', N'20140', N'ทุ่งขวาง', N'Thung Khwang', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200616', N'20140', N'หนองเหียง', N'Nong Hiang', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200617', N'20140', N'นาวังหิน', N'Na Wang Hin', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200618', N'20140', N'บ้านช้าง', N'Ban Chang', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200620', N'20140', N'โคกเพลาะ', N'Khok Phlo', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200621', N'20140', N'ไร่หลักทอง', N'Rai Lak Thong', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200622', N'20140', N'นามะตูม', N'Na Matum', N'2006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200701', N'20110', N'ศรีราชา', N'Si Racha', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200702', N'20110', N'สุรศักดิ์', N'Surasak', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200703', N'20230', N'ทุ่งสุขลา', N'Thung Sukhla', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200704', N'20230', N'บึง', N'Bueng', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200705', N'20110', N'หนองขาม', N'Nong Kham', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200706', N'20110', N'เขาคันทรง', N'Khao Khansong', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200707', N'20110', N'บางพระ', N'Bang Phra', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200708', N'20230', N'บ่อวิน', N'Bo Win', N'2007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200801', N'20120', N'ท่าเทววงษ์', N'Tha Thewawong', N'2008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200901', N'20180', N'สัตหีบ', N'Sattahip', N'2009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200902', N'20250', N'นาจอมเทียน', N'Na Chom Thian', N'2009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200903', N'20180', N'พลูตาหลวง', N'Phlu Ta Luang', N'2009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200904', N'20250', N'บางเสร่', N'Bang Sare', N'2009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'200905', N'20180', N'แสมสาร', N'Samaesan', N'2009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201001', N'20270', N'บ่อทอง', N'Bo Thong', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201002', N'20270', N'วัดสุวรรณ', N'Wat Suwan', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201003', N'20270', N'บ่อกวางทอง', N'Bo Kwang Thong', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201004', N'20270', N'ธาตุทอง', N'That Thong', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201005', N'20270', N'เกษตรสุวรรณ', N'Kaset Suwan', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201006', N'20270', N'พลวงทอง', N'Phluang Thong', N'2010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201101', N'20240', N'เกาะจันทร์', N'Ko Chan', N'2011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'201102', N'20240', N'ท่าบุญมี', N'Tha Bun Mi', N'2011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210101', N'21000', N'ท่าประดู่', N'Tha Pradu', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210102', N'21000', N'เชิงเนิน', N'Choeng Noen', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210103', N'21000', N'ตะพง', N'Taphong', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210104', N'21000', N'ปากน้ำ', N'Pak Nam', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210105', N'21160', N'เพ', N'Phe', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210106', N'21160', N'แกลง', N'Klaeng', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210107', N'21000', N'บ้านแลง', N'Ban Laeng', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210108', N'21000', N'นาตาขวัญ', N'Na Ta Khwan', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210109', N'21000', N'เนินพระ', N'Noen Phra', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210110', N'21100', N'กะเฉด', N'Kachet', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210111', N'21000', N'ทับมา', N'Thap Ma', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210112', N'21000', N'น้ำคอก', N'Nam Khok', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210113', N'21150', N'ห้วยโป่ง', N'Huai Pong', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210114', N'21150', N'มาบตาพุด', N'Map Ta Phut', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210115', N'21100', N'สำนักทอง', N'Samnak Thong', N'2101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210201', N'21130', N'สำนักท้อน', N'Samnak Thon', N'2102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210202', N'21130', N'พลา', N'Phala', N'2102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210203', N'21130', N'บ้านฉาง', N'Ban Chang', N'2102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210301', N'21110', N'ทางเกวียน', N'Thang Kwian', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210302', N'21110', N'วังหว้า', N'Wang Wa', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210303', N'21110', N'ชากโดน', N'Chak Don', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210304', N'21110', N'เนินฆ้อ', N'Noen Kho', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210305', N'21190', N'กร่ำ', N'Kram', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210306', N'21190', N'ชากพง', N'Chak Phong', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210307', N'21110', N'กระแสบน', N'Krasae Bon', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210308', N'21110', N'บ้านนา', N'Ban Na', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210309', N'21110', N'ทุ่งควายกิน', N'Thung Khwai Kin', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210310', N'22160', N'กองดิน', N'Kong Din', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210311', N'21170', N'คลองปูน', N'Khlong Pun', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210312', N'21170', N'พังราด', N'Phang Rat', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210313', N'21170', N'ปากน้ำกระแส', N'Pak Nam Krasae', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210317', N'21110', N'ห้วยยาง', N'Huai Yang', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210318', N'21110', N'สองสลึง', N'Song Salueng', N'2103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210401', N'21210', N'วังจันทร์', N'Wang Chan', N'2104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210402', N'21210', N'ชุมแสง', N'Chum Saeng', N'2104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210403', N'21210', N'ป่ายุบใน', N'Pa Yup Nai', N'2104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210404', N'21210', N'พลงตาเอี่ยม', N'Phlong Ta Iam', N'2104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210501', N'21120', N'บ้านค่าย', N'Ban Khai', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210502', N'21120', N'หนองละลอก', N'Nong Lalok', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210503', N'21120', N'หนองตะพาน', N'Nong Taphan', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210504', N'21120', N'ตาขัน', N'Ta Khan', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210505', N'21120', N'บางบุตร', N'Bang But', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210506', N'21120', N'หนองบัว', N'Nong Bua', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210507', N'21120', N'ชากบก', N'Chak Bok', N'2105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210601', N'21140', N'ปลวกแดง', N'Pluak Daeng', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210602', N'21140', N'ตาสิทธิ์', N'Ta Sit', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210603', N'21140', N'ละหาร', N'Lahan', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210604', N'21140', N'แม่น้ำคู้', N'Maenam Khu', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210605', N'21140', N'มาบยางพร', N'Map Yang Phon', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210606', N'21140', N'หนองไร่', N'Nong Rai', N'2106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210701', N'21110', N'น้ำเป็น', N'Nam Pen', N'2107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210702', N'21110', N'ห้วยทับมอญ', N'Huai Thap Mon', N'2107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210703', N'21110', N'ชำฆ้อ', N'Cham Kho', N'2107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210704', N'21110', N'เขาน้อย', N'Khao Noi', N'2107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210801', N'21180', N'นิคมพัฒนา', N'Nikhom Phatthana', N'2108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210802', N'21180', N'มาบข่า', N'Map Kha', N'2108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210803', N'21180', N'พนานิคม', N'Phana Nikhom', N'2108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'210804', N'21180', N'มะขามคู่', N'Makham Khu', N'2108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220101', N'22000', N'ตลาด', N'Talat', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220102', N'22000', N'วัดใหม่', N'Wat Mai', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220103', N'22000', N'คลองนารายณ์', N'Khlong Narai', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220104', N'22000', N'เกาะขวาง', N'Ko Khwang', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220105', N'22000', N'คมบาง', N'Khom Bang', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220106', N'22000', N'ท่าช้าง', N'Tha Chang', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220107', N'22000', N'จันทนิมิต', N'Chanthanimit', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220108', N'22000', N'บางกะจะ', N'Bang Kacha', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220109', N'22000', N'แสลง', N'Salaeng', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220110', N'22000', N'หนองบัว', N'Nong Bua', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220111', N'22000', N'พลับพลา', N'Phlapphla', N'2201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220201', N'22110', N'ขลุง', N'Khlung', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220202', N'22110', N'บ่อ', N'Bo', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220203', N'22110', N'เกวียนหัก', N'Kwian Hak', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220204', N'22110', N'ตะปอน', N'Tapon', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220205', N'22110', N'บางชัน', N'Bang Chan', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220206', N'22110', N'วันยาว', N'Wan Yao', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220207', N'22110', N'ซึ้ง', N'Sueng', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220208', N'22110', N'มาบไพ', N'Map Phai', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220209', N'22110', N'วังสรรพรส', N'Wang Sappharot', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220210', N'22110', N'ตรอกนอง', N'Trok Nong', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220211', N'22110', N'ตกพรม', N'Tok Phom', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220212', N'22150', N'บ่อเวฬุ', N'Bo Weru', N'2202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220301', N'22120', N'ท่าใหม่', N'Tha Mai', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220302', N'22120', N'ยายร้า', N'Yai Ra', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220303', N'22120', N'สีพยา', N'Si Phaya', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220304', N'22120', N'บ่อพุ', N'Bo Phu', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220305', N'22120', N'พลอยแหวน', N'Phloi Waen', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220306', N'22120', N'เขาวัว', N'Khao Wua', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220307', N'22120', N'เขาบายศรี', N'Khao Baisi', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220308', N'22120', N'สองพี่น้อง', N'Song Phi Nong', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220309', N'22170', N'ทุ่งเบญจา', N'Thung Bencha', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220311', N'22170', N'รำพัน', N'Ramphan', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220312', N'22170', N'โขมง', N'Khamong', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220313', N'22120', N'ตะกาดเง้า', N'Takat Ngao', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220314', N'22120', N'คลองขุด', N'Khlong Khut', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220324', N'22170', N'เขาแก้ว', N'Khao Kaeo', N'2203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220401', N'22140', N'ทับไทร', N'Thap Sai', N'2204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220402', N'22140', N'โป่งน้ำร้อน', N'Pong Nam Ron', N'2204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220404', N'22140', N'หนองตาคง', N'Nong Ta Khong', N'2204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220409', N'22140', N'เทพนิมิต', N'Thep Nimit', N'2204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220410', N'22140', N'คลองใหญ่', N'Khlong Yai', N'2204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220501', N'22150', N'มะขาม', N'Makham', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220502', N'22150', N'ท่าหลวง', N'Tha Luang', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220503', N'22150', N'ปัถวี', N'Patthawi', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220504', N'22150', N'วังแซ้ม', N'Wang Saem', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220506', N'22150', N'ฉมัน', N'Chaman', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220508', N'22150', N'อ่างคีรี', N'Ang Khiri', N'2205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220601', N'22130', N'ปากน้ำแหลมสิงห์', N'Pak Nam Laem Sing', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220602', N'22130', N'เกาะเปริด', N'Ko Proet', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220603', N'22130', N'หนองชิ่ม', N'Nong Chim', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220604', N'22190', N'พลิ้ว', N'Phlio', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220605', N'22190', N'คลองน้ำเค็ม', N'Khlong Nam Khem', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220606', N'22190', N'บางสระเก้า', N'Bang Sa Kao', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220607', N'22120', N'บางกะไชย', N'Bang Kachai', N'2206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220701', N'22180', N'ปะตง', N'Patong', N'2207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220702', N'22180', N'ทุ่งขนาน', N'Thung Khanan', N'2207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220703', N'22180', N'ทับช้าง', N'Thap Chang', N'2207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220704', N'22180', N'ทรายขาว', N'Sai Khao', N'2207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220705', N'22180', N'สะตอน', N'Saton', N'2207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220801', N'22160', N'แก่งหางแมว', N'Kaeng Hang Maeo', N'2208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220802', N'22160', N'ขุนซ่อง', N'Khun Song', N'2208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220803', N'22160', N'สามพี่น้อง', N'Sam Phi Nong', N'2208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220804', N'22160', N'พวา', N'Phawa', N'2208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220805', N'22160', N'เขาวงกต', N'Khao Wongkot', N'2208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220901', N'22160', N'นายายอาม', N'Na Yai Am', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220902', N'22170', N'วังโตนด', N'Wang Tanot', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220903', N'22170', N'กระแจะ', N'Krachae', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220904', N'22170', N'สนามไชย', N'Sanam Chai', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220905', N'22160', N'ช้างข้าม', N'Chang Kham', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'220906', N'22170', N'วังใหม่', N'Wang Mai', N'2209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'221001', N'22210', N'ชากไทย', N'Chak Thai', N'2210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'221002', N'22210', N'พลวง', N'Phluang', N'2210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'221003', N'22210', N'ตะเคียนทอง', N'Takhian Thong', N'2210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'221004', N'22210', N'คลองพลู', N'Khlong Phlu', N'2210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'221005', N'22210', N'จันทเขลม', N'Chanthakhlem', N'2210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230101', N'23000', N'บางพระ', N'Bang Phra', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230102', N'23000', N'หนองเสม็ด', N'Nong Samet', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230103', N'23000', N'หนองโสน', N'Nong Sano', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230104', N'23000', N'หนองคันทรง', N'Nong Khan Song', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230105', N'23000', N'ห้วงน้ำขาว', N'Huang Nam Khao', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230106', N'23000', N'อ่าวใหญ่', N'Ao Yai', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230107', N'23000', N'วังกระแจะ', N'Wang Krachae', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230108', N'23000', N'ห้วยแร้ง', N'Huai Raeng', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230109', N'23000', N'เนินทราย', N'Noen Sai', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230110', N'23000', N'ท่าพริก', N'Tha Phrik', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230111', N'23000', N'ท่ากุ่ม', N'Tha Kum', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230112', N'23000', N'ตะกาง', N'Takang', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230113', N'23000', N'ชำราก', N'Chamrak', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230114', N'23000', N'แหลมกลัด', N'Laem Klat', N'2301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230201', N'23110', N'คลองใหญ่', N'Khlong Yai', N'2302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230202', N'23110', N'ไม้รูด', N'Mai Rut', N'2302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230203', N'23110', N'หาดเล็ก', N'Hat Lek', N'2302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230301', N'23130', N'เขาสมิง', N'Khao Saming', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230302', N'23150', N'แสนตุ้ง', N'Saen Tung', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230303', N'23130', N'วังตะเคียน', N'Wang Takhian', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230304', N'23150', N'ท่าโสม', N'Tha Som', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230305', N'23150', N'สะตอ', N'Sato', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230306', N'23150', N'ประณีต', N'Pranit', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230307', N'23150', N'เทพนิมิต', N'Thep Nimit', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230308', N'23130', N'ทุ่งนนทรี', N'Thung Nonsi', N'2303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230401', N'23140', N'บ่อพลอย', N'Bo Phloi', N'2304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230402', N'23140', N'ช้างทูน', N'Chang Thun', N'2304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230403', N'23140', N'ด่านชุมพล', N'Dan Chumphon', N'2304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230404', N'23140', N'หนองบอน', N'Nong Bon', N'2304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230405', N'23140', N'นนทรีย์', N'Nonsi', N'2304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230501', N'23120', N'แหลมงอบ', N'Laem Ngop', N'2305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230502', N'23120', N'น้ำเชี่ยว', N'Nam Chiao', N'2305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230503', N'23120', N'บางปิด', N'Bang Pit', N'2305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230507', N'23120', N'คลองใหญ่', N'Khlong Yai', N'2305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230601', N'23120', N'เกาะหมาก', N'Ko Mak', N'2306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230602', N'23000', N'เกาะกูด', N'Ko Kut', N'2306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230701', N'23170', N'เกาะช้าง', N'Ko Chang', N'2307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'230702', N'23170', N'เกาะช้างใต้', N'Ko Chang Tai', N'2307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240101', N'24000', N'หน้าเมือง', N'Na Mueang', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240102', N'24000', N'ท่าไข่', N'Tha Khai', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240103', N'24000', N'บ้านใหม่', N'Ban Mai', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240104', N'24000', N'คลองนา', N'Khlong Na', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240105', N'24000', N'บางตีนเป็ด', N'Bang Tin Pet', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240106', N'24000', N'บางไผ่', N'Bang Phai', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240107', N'24000', N'คลองจุกกระเฌอ', N'Khlong Chuk Krachoe', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240108', N'24000', N'บางแก้ว', N'Bang Kaeo', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240109', N'24000', N'บางขวัญ', N'Bang Khwan', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240110', N'24000', N'คลองนครเนื่องเขต', N'Khlong Nakhon Nueang Khet', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240111', N'24000', N'วังตะเคียน', N'Wang Takhian', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240112', N'24000', N'โสธร', N'Sothon', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240113', N'24000', N'บางพระ', N'Bang Phra', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240114', N'24000', N'บางกะไห', N'Bang Kahai', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240115', N'24000', N'หนามแดง', N'Nam Daeng', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240116', N'24000', N'คลองเปรง', N'Khlong Preng', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240117', N'24000', N'คลองอุดมชลจร', N'Khlong Udom Chonlachon', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240118', N'24000', N'คลองหลวงแพ่ง', N'Khlong Luang Phaeng', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240119', N'24000', N'บางเตย', N'Bang Toei', N'2401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240201', N'24110', N'บางคล้า', N'Bang Khla', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240204', N'24110', N'บางสวน', N'Bang Suan', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240208', N'24110', N'บางกระเจ็ด', N'Bang Krachet', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240209', N'24110', N'ปากน้ำ', N'Pak Nam', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240210', N'24110', N'ท่าทองหลาง', N'Tha Thonglang', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240211', N'24110', N'สาวชะโงก', N'Sao Cha-ngok', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240212', N'24110', N'เสม็ดเหนือ', N'Samet Nuea', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240213', N'24110', N'เสม็ดใต้', N'Samet Tai', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240214', N'24110', N'หัวไทร', N'Hua Sai', N'2402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240301', N'24150', N'บางน้ำเปรี้ยว', N'Bang Nam Priao', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240302', N'24150', N'บางขนาก', N'Bang Khanak', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240303', N'24150', N'สิงโตทอง', N'Singto Thong', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240304', N'24150', N'หมอนทอง', N'Mon Thong', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240305', N'24170', N'บึงน้ำรักษ์', N'Bueng Nam Rak', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240306', N'24170', N'ดอนเกาะกา', N'Don Ko Ka', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240307', N'24150', N'โยธะกา', N'Yothaka', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240308', N'24170', N'ดอนฉิมพลี', N'Don Chimphli', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240309', N'24000', N'ศาลาแดง', N'Sala Daeng', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240310', N'24150', N'โพรงอากาศ', N'Phrong Akat', N'2403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240401', N'24130', N'บางปะกง', N'Bang Pakong', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240402', N'24130', N'ท่าสะอ้าน', N'Tha Sa-an', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240403', N'24180', N'บางวัว', N'Bang Wua', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240404', N'24180', N'บางสมัคร', N'Bang Samak', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240405', N'24130', N'บางผึ้ง', N'Bang Phueng', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240406', N'24180', N'บางเกลือ', N'Bang Kluea', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240407', N'24130', N'สองคลอง', N'Song Khlong', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240408', N'24130', N'หนองจอก', N'Nong Chok', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240409', N'24180', N'พิมพา', N'Phimpha', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240410', N'24130', N'ท่าข้าม', N'Tha Kham', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240411', N'24180', N'หอมศีล', N'Hom Sin', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240412', N'24130', N'เขาดิน', N'Khao Din', N'2404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240501', N'24140', N'บ้านโพธิ์', N'Ban Pho', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240502', N'24140', N'เกาะไร่', N'Ko Rai', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240503', N'24140', N'คลองขุด', N'Khlong Khut', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240504', N'24140', N'คลองบ้านโพธิ์', N'Khlong Ban Pho', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240505', N'24140', N'คลองประเวศ', N'Khlong Prawet', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240506', N'24140', N'ดอนทราย', N'Don Sai', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240507', N'24140', N'เทพราช', N'Theppharat', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240508', N'24140', N'ท่าพลับ', N'Tha Phlap', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240509', N'24140', N'หนองตีนนก', N'Nong Tin Nok', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240510', N'24140', N'หนองบัว', N'Nong Bua', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240511', N'24140', N'บางซ่อน', N'Bang Son', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240512', N'24140', N'บางกรูด', N'Bang Krut', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240513', N'24140', N'แหลมประดู่', N'Laem Pradu', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240514', N'24140', N'ลาดขวาง', N'Lat Khwang', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240515', N'24140', N'สนามจันทร์', N'Sanam Chan', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240516', N'24140', N'แสนภูดาษ', N'Saen Phu Dat', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240517', N'24140', N'สิบเอ็ดศอก', N'Sip Et Sok', N'2405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240601', N'24120', N'เกาะขนุน', N'Ko Khanun', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240602', N'24120', N'บ้านซ่อง', N'Ban Song', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240603', N'24120', N'พนมสารคาม', N'Phanom Sarakham', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240604', N'24120', N'เมืองเก่า', N'Mueang Kao', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240605', N'24120', N'หนองยาว', N'Nong Yao', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240606', N'24120', N'ท่าถ่าน', N'Tha Than', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240607', N'24120', N'หนองแหน', N'Nong Nae', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240608', N'24120', N'เขาหินซ้อน', N'Khao Hin Son', N'2406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240701', N'24120', N'บางคา', N'Bang Kha', N'2407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240702', N'24120', N'เมืองใหม่', N'Mueang Mai', N'2407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240703', N'24120', N'ดงน้อย', N'Dong Noi', N'2407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240801', N'24160', N'คู้ยายหมี', N'Ku Yai Mi', N'2408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240802', N'24160', N'ท่ากระดาน', N'Tha Kradan', N'2408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240803', N'24160', N'ทุ่งพระยา', N'Thung Phraya', N'2408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240805', N'24160', N'ลาดกระทิง', N'Lat Krathing', N'2408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240901', N'24190', N'แปลงยาว', N'Plaeng Yao', N'2409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240902', N'24190', N'วังเย็น', N'Wang Yen', N'2409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240903', N'24190', N'หัวสำโรง', N'Hua Samrong', N'2409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'240904', N'24190', N'หนองไม้แก่น', N'Nong Mai Kaen', N'2409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241001', N'24160', N'ท่าตะเกียบ', N'Tha Takiap', N'2410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241002', N'24160', N'คลองตะเกรา', N'Khlong Takrao', N'2410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241101', N'24000', N'ก้อนแก้ว', N'Kon Kaeo', N'2411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241102', N'24000', N'คลองเขื่อน', N'Khlong Khuean', N'2411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241103', N'24000', N'บางเล่า', N'Bang Lao', N'2411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241104', N'24000', N'บางโรง', N'Bang Rong', N'2411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'241105', N'24110', N'บางตลาด', N'Bang Talat', N'2411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250101', N'25000', N'หน้าเมือง', N'Na Mueang', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250102', N'25000', N'รอบเมือง', N'Rop Mueang', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250103', N'25000', N'วัดโบสถ์', N'Wat Bot', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250104', N'25000', N'บางเดชะ', N'Bang Decha', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250105', N'25000', N'ท่างาม', N'Tha Ngam', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250106', N'25000', N'บางบริบูรณ์', N'Bang Boribun', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250107', N'25000', N'ดงพระราม', N'Dong Phra Ram', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250108', N'25230', N'บ้านพระ', N'Ban Phra', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250109', N'25230', N'โคกไม้ลาย', N'Khok Mai Lai', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250110', N'25230', N'ไม้เค็ด', N'Mai Khet', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250111', N'25000', N'ดงขี้เหล็ก', N'Dong Khilek', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250112', N'25230', N'เนินหอม', N'Noen Hom', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250113', N'25000', N'โนนห้อม', N'Non Hom', N'2501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250201', N'25110', N'กบินทร์', N'Kabin', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250202', N'25240', N'เมืองเก่า', N'Mueang Kao', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250203', N'25110', N'วังดาล', N'Wang Dan', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250204', N'25110', N'นนทรี', N'Nonsi', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250205', N'25110', N'ย่านรี', N'Yan Ri', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250206', N'25110', N'วังตะเคียน', N'Wang Takhian', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250207', N'25110', N'หาดนางแก้ว', N'Hat Nang Kaeo', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250208', N'25110', N'ลาดตะเคียน', N'Lat Takhian', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250209', N'25110', N'บ้านนา', N'Ban Na', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250210', N'25110', N'บ่อทอง', N'Bo Thong', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250211', N'25110', N'หนองกี่', N'Nong Ki', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250212', N'25110', N'นาแขม', N'Na Khaem', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250213', N'25110', N'เขาไม้แก้ว', N'Khao Mai Kaeo', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250214', N'25110', N'วังท่าช้าง', N'Wang Tha Chang', N'2502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250301', N'25220', N'นาดี', N'Na Di', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250302', N'25220', N'สำพันตา', N'Sam Phan Ta', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250303', N'25220', N'สะพานหิน', N'Saphan Hin', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250304', N'25220', N'ทุ่งโพธิ์', N'Thung Pho', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250305', N'25220', N'แก่งดินสอ', N'Kaeng Din So', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250306', N'25220', N'บุพราหมณ์', N'Bu Phram', N'2503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250601', N'25150', N'บ้านสร้าง', N'Ban Sang', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250602', N'25150', N'บางกระเบา', N'Bang Krabao', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250603', N'25150', N'บางเตย', N'Bang Toei', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250604', N'25150', N'บางยาง', N'Bang Yang', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250605', N'25150', N'บางแตน', N'Bang Taen', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250606', N'25150', N'บางพลวง', N'Bang Phluang', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250607', N'25150', N'บางปลาร้า', N'Bang Pla Ra', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250608', N'25150', N'บางขาม', N'Bang Kham', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250609', N'25150', N'กระทุ่มแพ้ว', N'Krathum Phaeo', N'2506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250701', N'25130', N'ประจันตคาม', N'Prachantakham', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250702', N'25130', N'เกาะลอย', N'Ko Loi', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250703', N'25130', N'บ้านหอย', N'Ban Hoi', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250704', N'25130', N'หนองแสง', N'Nong Saeng', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250705', N'25130', N'ดงบัง', N'Dong Bang', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250706', N'25130', N'คำโตนด', N'Kham Tanot', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250707', N'25130', N'บุฝ้าย', N'Bu Fai', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250708', N'25130', N'หนองแก้ว', N'Nong Kaeo', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250709', N'25130', N'โพธิ์งาม', N'Pho Ngam', N'2507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250801', N'25140', N'ศรีมหาโพธิ', N'Si Maha Phot', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250802', N'25140', N'สัมพันธ์', N'Samphan', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250803', N'25140', N'บ้านทาม', N'Ban Tham', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250804', N'25140', N'ท่าตูม', N'Tha Tum', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250805', N'25140', N'บางกุ้ง', N'Bang Kung', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250806', N'25140', N'ดงกระทงยาม', N'Dong Krathong Yam', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250807', N'25140', N'หนองโพรง', N'Nong Phrong', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250808', N'25140', N'หัวหว้า', N'Hua Wa', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250809', N'25140', N'หาดยาง', N'Hat Yang', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250810', N'25140', N'กรอกสมบูรณ์', N'Krok Sombun', N'2508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250901', N'25190', N'โคกปีบ', N'Khok Pip', N'2509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250902', N'25190', N'โคกไทย', N'Khok Thai', N'2509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250903', N'25190', N'คู้ลำพัน', N'Khu Lam Phan', N'2509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'250904', N'25190', N'ไผ่ชะเลือด', N'Phai Cha Lueat', N'2509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260101', N'26000', N'นครนายก', N'Nakhon Nayok', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260102', N'26000', N'ท่าช้าง', N'Tha Chang', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260103', N'26000', N'บ้านใหญ่', N'Ban Yai', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260104', N'26000', N'วังกระโจม', N'Wang Krachom', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260105', N'26000', N'ท่าทราย', N'Tha Sai', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260106', N'26000', N'ดอนยอ', N'Don Yo', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260107', N'26000', N'ศรีจุฬา', N'Si Chula', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260108', N'26000', N'ดงละคร', N'Dong Lakhon', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260109', N'26000', N'ศรีนาวา', N'Si Nawa', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260110', N'26000', N'สาริกา', N'Sarika', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260111', N'26000', N'หินตั้ง', N'Hin Tang', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260112', N'26000', N'เขาพระ', N'Khao Phra', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260113', N'26000', N'พรหมณี', N'Phrommani', N'2601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260201', N'26130', N'เกาะหวาย', N'Ko Wai', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260202', N'26130', N'เกาะโพธิ์', N'Ko Pho', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260203', N'26130', N'ปากพลี', N'Pak Phli', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260204', N'26130', N'โคกกรวด', N'Khok Kruat', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260205', N'26130', N'ท่าเรือ', N'Tha Ruea', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260206', N'26130', N'หนองแสง', N'Nong Saeng', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260207', N'26130', N'นาหินลาด', N'Na Hin Lat', N'2602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260301', N'26110', N'บ้านนา', N'Ban Na', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260302', N'26110', N'บ้านพร้าว', N'Ban Phrao', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260303', N'26110', N'บ้านพริก', N'Ban Phrik', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260304', N'26110', N'อาษา', N'Asa', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260305', N'26110', N'ทองหลาง', N'Thonglang', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260306', N'26110', N'บางอ้อ', N'Bang O', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260307', N'26110', N'พิกุลออก', N'Phikun Ok', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260308', N'26110', N'ป่าขะ', N'Pa Kha', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260309', N'26110', N'เขาเพิ่ม', N'Khao Phoem', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260310', N'26110', N'ศรีกะอาง', N'Si Ka-ang', N'2603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260401', N'26120', N'พระอาจารย์', N'Phra Achan', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260402', N'26120', N'บึงศาล', N'Bueng San', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260403', N'26120', N'ศีรษะกระบือ', N'Sisa Krabue', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260404', N'26120', N'โพธิ์แทน', N'Pho Thaen', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260405', N'26120', N'บางสมบูรณ์', N'Bang Sombun', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260406', N'26120', N'ทรายมูล', N'Sai Mun', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260407', N'26120', N'บางปลากด', N'Bang Pla Kot', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260408', N'26120', N'บางลูกเสือ', N'Bang Luk Suea', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260409', N'26120', N'องครักษ์', N'Ongkharak', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260410', N'26120', N'ชุมพล', N'Chumphon', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'260411', N'26120', N'คลองใหญ่', N'Khlong Yai', N'2604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270101', N'27000', N'สระแก้ว', N'Sa Kaeo', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270102', N'27000', N'บ้านแก้ง', N'Ban Kaeng', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270103', N'27000', N'ศาลาลำดวน', N'Sala Lamduan', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270104', N'27000', N'โคกปี่ฆ้อง', N'Khok Pi Khong', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270105', N'27000', N'ท่าแยก', N'Tha Yaek', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270106', N'27000', N'ท่าเกษม', N'Tha Kasem', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270108', N'27000', N'สระขวัญ', N'Sa Khwan', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270111', N'27000', N'หนองบอน', N'Nong Bon', N'2701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270201', N'27260', N'คลองหาด', N'Khlong Hat', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270202', N'27260', N'ไทยอุดม', N'Thai Udom', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270203', N'27260', N'ซับมะกรูด', N'Sap Makrut', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270204', N'27260', N'ไทรเดี่ยว', N'Sai Diao', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270205', N'27260', N'คลองไก่เถื่อน', N'Khlogn Kai Thuean', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270206', N'27260', N'เบญจขร', N'Benchakhon', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270207', N'27260', N'ไทรทอง', N'Sai Thong', N'2702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270301', N'27180', N'ตาพระยา', N'Ta Phraya', N'2703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270302', N'27180', N'ทัพเสด็จ', N'Thap Sadet', N'2703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270306', N'27180', N'ทัพราช', N'Thap Rat', N'2703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270307', N'27180', N'ทัพไทย', N'Thap Thai', N'2703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270309', N'27180', N'โคคลาน', N'Kho Khlan', N'2703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270401', N'27210', N'วังน้ำเย็น', N'Wang Nam Yen', N'2704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270403', N'27210', N'ตาหลังใน', N'Ta Lang Nai', N'2704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270405', N'27210', N'คลองหินปูน', N'Khlong Hin Pun', N'2704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270406', N'27210', N'ทุ่งมหาเจริญ', N'Thung Maha Charoen', N'2704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270501', N'27160', N'วัฒนานคร', N'Watthana Nakhon', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270502', N'27160', N'ท่าเกวียน', N'Tha Kwian', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270503', N'27160', N'ผักขะ', N'Phak Kha', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270504', N'27160', N'โนนหมากเค็ง', N'Non Mak Kheng', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270505', N'27160', N'หนองน้ำใส', N'Nong Nam Sai', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270506', N'27160', N'ช่องกุ่ม', N'Chong Kum', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270507', N'27160', N'หนองแวง', N'Nong Waeng', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270508', N'27160', N'แซร์ออ', N'Sae-o', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270509', N'27160', N'หนองหมากฝ้าย', N'Nong Mak Fai', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270510', N'27160', N'หนองตะเคียนบอน', N'Nong Takian Bon', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270511', N'27160', N'ห้วยโจด', N'Huai Chot', N'2705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270601', N'27120', N'อรัญประเทศ', N'Aranyaprathet', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270602', N'27120', N'เมืองไผ่', N'Mueang Phai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270603', N'27120', N'หันทราย', N'Han Sai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270604', N'27120', N'คลองน้ำใส', N'Khlong Nam Sai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270605', N'27120', N'ท่าข้าม', N'Tha Kham', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270606', N'27120', N'ป่าไร่', N'Pa Rai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270607', N'27120', N'ทับพริก', N'Thap Phrik', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270608', N'27120', N'บ้านใหม่หนองไทร', N'Ban Mai Nong Sai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270609', N'27120', N'ผ่านศึก', N'Phan Suek', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270610', N'27120', N'หนองสังข์', N'Nong Sang', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270611', N'27120', N'คลองทับจันทร์', N'Khlong Thap Chan', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270612', N'27120', N'ฟากห้วย', N'Fak Huai', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270613', N'27120', N'บ้านด่าน', N'Ban Dan', N'2706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270701', N'27000', N'เขาฉกรรจ์', N'Khao Chakan', N'2707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270702', N'27000', N'หนองหว้า', N'Nong Wa', N'2707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270703', N'27000', N'พระเพลิง', N'Phra Phloeng', N'2707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270704', N'27000', N'เขาสามสิบ', N'Khao Sam Sip', N'2707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270801', N'27120', N'โคกสูง', N'Khok Sung', N'2708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270802', N'27120', N'หนองม่วง', N'Nong Muang', N'2708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270803', N'27120', N'หนองแวง', N'Nong Waeng', N'2708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270804', N'27120', N'โนนหมากมุ่น', N'Non Mak Mun', N'2708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270901', N'27250', N'วังสมบูรณ์', N'Wang Sombun', N'2709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270902', N'27250', N'วังใหม่', N'Wang Mai', N'2709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'270903', N'27250', N'วังทอง', N'Wang Thong', N'2709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300101', N'30000', N'ในเมือง', N'Nai Mueang', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300102', N'30000', N'โพธิ์กลาง', N'Pho Klang', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300103', N'30000', N'หนองจะบก', N'Nong Chabok', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300104', N'30310', N'โคกสูง', N'Khok Sung', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300105', N'30000', N'มะเริง', N'Maroeng', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300106', N'30000', N'หนองระเวียง', N'Nong Rawiang', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300107', N'30000', N'ปรุใหญ่', N'Pru Yai', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300108', N'30000', N'หมื่นไวย', N'Muen Wai', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300109', N'30000', N'พลกรัง', N'Phon Krang', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300110', N'30000', N'หนองไผ่ล้อม', N'Nong Phai Lom', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300111', N'30000', N'หัวทะเล', N'Hua Thale', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300112', N'30000', N'บ้านเกาะ', N'Ban Ko', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300113', N'30000', N'บ้านใหม่', N'Ban Mai', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300114', N'30000', N'พุดซา', N'Phutsa', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300115', N'30310', N'บ้านโพธิ์', N'Ban Pho', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300116', N'30310', N'จอหอ', N'Cho Ho', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300117', N'30280', N'โคกกรวด', N'Khok Kruat', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300118', N'30000', N'ไชยมงคล', N'Chai Mongkhon', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300119', N'30000', N'หนองบัวศาลา', N'Nong Bua Sala', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300120', N'30000', N'สุรนารี', N'Suranari', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300121', N'30000', N'สีมุม', N'Si Mum', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300122', N'30310', N'ตลาด', N'Talat', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300123', N'30000', N'พะเนา', N'Phanao', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300124', N'30000', N'หนองกระทุ่ม', N'Nong Krathum', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300125', N'30310', N'หนองไข่น้ำ', N'Nong Khai Nam', N'3001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300201', N'30250', N'แชะ', N'Chae', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300202', N'30250', N'เฉลียง', N'Chaliang', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300203', N'30250', N'ครบุรี', N'Khon Buri', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300204', N'30250', N'โคกกระชาย', N'Khok Krachai', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300205', N'30250', N'จระเข้หิน', N'Chorakhe Hin', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300206', N'30250', N'มาบตะโกเอน', N'Map Tako En', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300207', N'30250', N'อรพิมพ์', N'Oraphim', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300208', N'30250', N'บ้านใหม่', N'Ban Mai', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300209', N'30250', N'ลำเพียก', N'Lam Phiak', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300210', N'30250', N'ครบุรีใต้', N'Khon Buri Tai', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300211', N'30250', N'ตะแบกบาน', N'Tabaek Ban', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300212', N'30250', N'สระว่านพระยา', N'Sa Wan Phraya', N'3002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300301', N'30330', N'เสิงสาง', N'Soeng Sang', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300302', N'30330', N'สระตะเคียน', N'Sa Takhian', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300303', N'30330', N'โนนสมบูรณ์', N'Non Sombun', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300304', N'30330', N'กุดโบสถ์', N'Kut Bot', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300305', N'30330', N'สุขไพบูลย์', N'Suk Phaibun', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300306', N'30330', N'บ้านราษฎร์', N'Ban Rat', N'3003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300401', N'30260', N'เมืองคง', N'Mueang Khong', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300402', N'30260', N'คูขาด', N'Khu Khat', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300403', N'30260', N'เทพาลัย', N'Thephalai', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300404', N'30260', N'ตาจั่น', N'Ta Chan', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300405', N'30260', N'บ้านปรางค์', N'Ban Prang', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300406', N'30260', N'หนองมะนาว', N'Nong Manao', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300407', N'30260', N'หนองบัว', N'Nong Bua', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300408', N'30260', N'โนนเต็ง', N'Non Teng', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300409', N'30260', N'ดอนใหญ่', N'Don Yai', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300410', N'30260', N'ขามสมบูรณ์', N'Kham Sombun', N'3004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300501', N'30350', N'บ้านเหลื่อม', N'Ban Lueam', N'3005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300502', N'30350', N'วังโพธิ์', N'Wang Pho', N'3005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300503', N'30350', N'โคกกระเบื้อง', N'Khok Krabueang', N'3005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300504', N'30350', N'ช่อระกา', N'Cho Raka', N'3005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300601', N'30230', N'จักราช', N'Chakkarat', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300603', N'30230', N'ทองหลาง', N'Thonglang', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300604', N'30230', N'สีสุก', N'Si Suk', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300605', N'30230', N'หนองขาม', N'Nong Kham', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300607', N'30230', N'หนองพลวง', N'Nong Phluang', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300610', N'30230', N'ศรีละกอ', N'Si Lako', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300611', N'30230', N'คลองเมือง', N'Khlong Mueang', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300613', N'30230', N'หินโคน', N'Hin Khon', N'3006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300701', N'30190', N'กระโทก', N'Krathok', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300702', N'30190', N'พลับพลา', N'Phlapphla', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300703', N'30190', N'ท่าอ่าง', N'Tha Ang', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300704', N'30190', N'ทุ่งอรุณ', N'Thung Arun', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300705', N'30190', N'ท่าลาดขาว', N'Tha Lat Khao', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300706', N'30190', N'ท่าจะหลุง', N'Tha Chalung', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300707', N'30190', N'ท่าเยี่ยม', N'Tha Yiam', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300708', N'30190', N'โชคชัย', N'Chok Chai', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300709', N'30190', N'ละลมใหม่พัฒนา', N'Lalom Mai Phatthana', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300710', N'30190', N'ด่านเกวียน', N'Dan Kwian', N'3007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300801', N'30210', N'กุดพิมาน', N'Kut Phiman', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300802', N'30210', N'ด่านขุนทด', N'Dan Khun Thot', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300803', N'30210', N'ด่านนอก', N'Dan Nok', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300804', N'30210', N'ด่านใน', N'Dan Nai', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300805', N'30210', N'ตะเคียน', N'Takhian', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300806', N'30210', N'บ้านเก่า', N'Ban Kao', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300807', N'36220', N'บ้านแปรง', N'Ban Praeng', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300808', N'30210', N'พันชนะ', N'Phan Chana', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300809', N'30210', N'สระจรเข้', N'Sa Chorakhe', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300810', N'30210', N'หนองกราด', N'Nong Krat', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300811', N'30210', N'หนองบัวตะเกียด', N'Nong Bua Takiat', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300812', N'30210', N'หนองบัวละคร', N'Nong Bua Lakhon', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300813', N'30210', N'หินดาด', N'Hin Dat', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300815', N'30210', N'ห้วยบง', N'Huai Bong', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300817', N'30210', N'โนนเมืองพัฒนา', N'Non Mueang Phatthana', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300818', N'36220', N'หนองไทร', N'Nong Sai', N'3008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300901', N'30220', N'โนนไทย', N'Non Thai', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300902', N'30220', N'ด่านจาก', N'Dan Chak', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300903', N'30220', N'กำปัง', N'Kampang', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300904', N'30220', N'สำโรง', N'Samrong', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300905', N'30220', N'ค้างพลู', N'Khang Phu', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300906', N'30220', N'บ้านวัง', N'Ban Wang', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300907', N'30220', N'บัลลังก์', N'Banlang', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300908', N'30220', N'สายออ', N'Sai O', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300909', N'30220', N'ถนนโพธิ์', N'Thanon Pho', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'300914', N'30220', N'มะค่า', N'Makha', N'3009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301001', N'30160', N'โนนสูง', N'Non Sung', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301002', N'30160', N'ใหม่', N'Mai', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301003', N'30160', N'โตนด', N'Tanot', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301004', N'30160', N'บิง', N'Bing', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301005', N'30160', N'ดอนชมพู', N'Don Chomphu', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301006', N'30420', N'ธารปราสาท', N'Than Prasat', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301007', N'30160', N'หลุมข้าว', N'Lum Khao', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301008', N'30160', N'มะค่า', N'Makha', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301009', N'30160', N'พลสงคราม', N'Phon Songkhram', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301010', N'30160', N'จันอัด', N'Chan At', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301011', N'30160', N'ขามเฒ่า', N'Kham Thao', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301012', N'30160', N'ด่านคล้า', N'Dan Khla', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301013', N'30160', N'ลำคอหงษ์', N'Lam Kho Hong', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301014', N'30160', N'เมืองปราสาท', N'Mueang Prasat', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301015', N'30160', N'ดอนหวาย', N'Don Wai', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301016', N'30160', N'ลำมูล', N'Lam Mun', N'3010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301101', N'30290', N'ขามสะแกแสง', N'Kham Sakaesaeng', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301102', N'30290', N'โนนเมือง', N'Non Mueang', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301103', N'30290', N'เมืองนาท', N'Mueang Nat', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301104', N'30290', N'ชีวึก', N'Chiwuek', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301105', N'30290', N'พะงาด', N'Pha-ngat', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301106', N'30290', N'หนองหัวฟาน', N'Nong Hua Fan', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301107', N'30290', N'เมืองเกษตร', N'Mueang Kaset', N'3011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301201', N'30120', N'บัวใหญ่', N'Bua Yai', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301203', N'30120', N'ห้วยยาง', N'Huai Yang', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301204', N'30120', N'เสมาใหญ่', N'Sema Yai', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301206', N'30120', N'ดอนตะหนิน', N'Don Tanin', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301207', N'30120', N'หนองบัวสะอาด', N'Nong Bua Sa-at', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301208', N'30120', N'โนนทองหลาง', N'Non Thonglang', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301214', N'30120', N'กุดจอก', N'Kut Chok', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301215', N'30120', N'ด่านช้าง', N'Dan Chang', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301220', N'30120', N'ขุนทอง', N'Khun Thong', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301224', N'30120', N'หนองแจ้งใหญ่', N'Nong Chaeng Yai', N'3012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301301', N'30180', N'ประทาย', N'Prathai', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301303', N'30180', N'กระทุ่มราย', N'Krathum Rai', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301304', N'30180', N'วังไม้แดง', N'Wang Mai Daeng', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301306', N'30180', N'ตลาดไทร', N'Talat Sai', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301307', N'30180', N'หนองพลวง', N'Nong Phluang', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301308', N'30180', N'หนองค่าย', N'Nong Khai', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301309', N'30180', N'หันห้วยทราย', N'Han Huai Sai', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301310', N'30180', N'ดอนมัน', N'Don Man', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301313', N'30180', N'นางรำ', N'Nang Ram', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301314', N'30180', N'โนนเพ็ด', N'Non Phet', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301315', N'30180', N'ทุ่งสว่าง', N'Thung Sawang', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301317', N'30180', N'โคกกลาง', N'Khok Klang', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301318', N'30180', N'เมืองโดน', N'Mueang Don', N'3013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301401', N'30150', N'เมืองปัก', N'Mueang Pak', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301402', N'30150', N'ตะคุ', N'Takhu', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301403', N'30150', N'โคกไทย', N'Khok Thai', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301404', N'30150', N'สำโรง', N'Samrong', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301405', N'30150', N'ตะขบ', N'Takhop', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301406', N'30150', N'นกออก', N'Nok Ok', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301407', N'30150', N'ดอน', N'Don', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301409', N'30150', N'ตูม', N'Tum', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301410', N'30150', N'งิ้ว', N'Ngio', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301411', N'30150', N'สะแกราช', N'Sakae Rat', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301412', N'30150', N'ลำนางแก้ว', N'Lam Nang Kaeo', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301416', N'30150', N'ภูหลวง', N'Phu Luang', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301417', N'30150', N'ธงชัยเหนือ', N'Thong Chai Nuea', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301418', N'30150', N'สุขเกษม', N'Suk Kasem', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301419', N'30150', N'เกษมทรัพย์', N'Kasem Sap', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301420', N'30150', N'บ่อปลาทอง', N'Bo Pla Thong', N'3014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301501', N'30110', N'ในเมือง', N'Nai Mueang', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301502', N'30110', N'สัมฤทธิ์', N'Samrit', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301503', N'30110', N'โบสถ์', N'Bot', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301504', N'30110', N'กระเบื้องใหญ่', N'Krabueang Yai', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301505', N'30110', N'ท่าหลวง', N'Tha Luang', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301506', N'30110', N'รังกาใหญ่', N'Rang Ka Yai', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301507', N'30110', N'ชีวาน', N'Chiwan', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301508', N'30110', N'นิคมสร้างตนเอง', N'Nikhom Sang Ton-eng Phimai', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301509', N'30110', N'กระชอน', N'Krachon', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301510', N'30110', N'ดงใหญ่', N'Dong Yai', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301511', N'30110', N'ธารละหลอด', N'Than Lalot', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301512', N'30110', N'หนองระเวียง', N'Nong Rawiang', N'3015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301601', N'30240', N'ห้วยแถลง', N'Huai Thalaeng', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301602', N'30240', N'ทับสวาย', N'Thap Sawai', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301603', N'30240', N'เมืองพลับพลา', N'Mueang Phlapphla', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301604', N'30240', N'หลุ่งตะเคียน', N'Lung Takhian', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301605', N'30240', N'หินดาด', N'Hin Dat', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301606', N'30240', N'งิ้ว', N'Ngio', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301607', N'30240', N'กงรถ', N'Kong Rot', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301608', N'30240', N'หลุ่งประดู่', N'Lung Pradu', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301609', N'30240', N'ตะโก', N'Tako', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301610', N'30240', N'ห้วยแคน', N'Huai Khaen', N'3016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301701', N'30270', N'ชุมพวง', N'Chum Phuang', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301702', N'30270', N'ประสุข', N'Prasuk', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301703', N'30270', N'ท่าลาด', N'Tha Lat', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301704', N'30270', N'สาหร่าย', N'Sarai', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301705', N'30270', N'ตลาดไทร', N'Talat Sai', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301710', N'30270', N'โนนรัง', N'Non Rang', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301714', N'30270', N'หนองหลัก', N'Nong Lak', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301716', N'30270', N'โนนตูม', N'Non Tum', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301717', N'30270', N'โนนยอ', N'Non Yo', N'3017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301801', N'30170', N'สูงเนิน', N'Sung Noen', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301802', N'30170', N'เสมา', N'Sema', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301803', N'30170', N'โคราช', N'Khorat', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301804', N'30170', N'บุ่งขี้เหล็ก', N'Bung Khilek', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301805', N'30170', N'โนนค่า', N'Non Kha', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301806', N'30170', N'โค้งยาง', N'Khong Yang', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301807', N'30170', N'มะเกลือเก่า', N'Makluea Kao', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301808', N'30170', N'มะเกลือใหม่', N'Makluea Mai', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301809', N'30380', N'นากลาง', N'Na Klang', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301810', N'30380', N'หนองตะไก้', N'Nong Takai', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301811', N'30380', N'กุดจิก', N'Kut Chik', N'3018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301901', N'30280', N'ขามทะเลสอ', N'Kham Thale So', N'3019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301902', N'30280', N'โป่งแดง', N'Pong Daeng', N'3019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301903', N'30280', N'พันดุง', N'Phan Dung', N'3019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301904', N'30280', N'หนองสรวง', N'Nong Suang', N'3019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'301905', N'30280', N'บึงอ้อ', N'Bueng O', N'3019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302001', N'30140', N'สีคิ้ว', N'Sikhio', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302002', N'30140', N'บ้านหัน', N'Ban Han', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302003', N'30140', N'กฤษณา', N'Kritsana', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302004', N'30340', N'ลาดบัวขาว', N'Lat Bua Khao', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302005', N'30140', N'หนองหญ้าขาว', N'Nong Ya Khao', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302006', N'30140', N'กุดน้อย', N'Kut Noi', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302007', N'30140', N'หนองน้ำใส', N'Nong Nam Sai', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302008', N'30140', N'วังโรงใหญ่', N'Wang Rong Yai', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302009', N'30140', N'มิตรภาพ', N'Mittraphap', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302010', N'30340', N'คลองไผ่', N'Khlong Phai', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302011', N'30140', N'ดอนเมือง', N'Don Mueang', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302012', N'30140', N'หนองบัวน้อย', N'Nong Bua Noi', N'3020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302101', N'30130', N'ปากช่อง', N'Pak Chong', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302102', N'30320', N'กลางดง', N'Klang Dong', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302103', N'30130', N'จันทึก', N'Chanthuek', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302104', N'30130', N'วังกะทะ', N'Wang Katha', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302105', N'30130', N'หมูสี', N'Mu Si', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302106', N'30130', N'หนองสาหร่าย', N'Nong Sarai', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302107', N'30130', N'ขนงพระ', N'Khanong Phra', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302108', N'30130', N'โป่งตาลอง', N'Pong Talong', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302109', N'30130', N'คลองม่วง', N'Khlong Muang', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302110', N'30130', N'หนองน้ำแดง', N'Nong Nam Daeng', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302111', N'30130', N'วังไทร', N'Wang Sai', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302112', N'30320', N'พญาเย็น', N'Phaya Yen', N'3021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302201', N'30410', N'หนองบุนนาก', N'Nong Bunnak', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302202', N'30410', N'สารภี', N'Saraphi', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302203', N'30410', N'ไทยเจริญ', N'Thai Charoen', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302204', N'30410', N'หนองหัวแรต', N'Nong Hua Raet', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302205', N'30410', N'แหลมทอง', N'Laem Thong', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302206', N'30410', N'หนองตะไก้', N'Nong Takai', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302207', N'30410', N'ลุงเขว้า', N'Lung Khwao', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302208', N'30410', N'หนองไม้ไผ่', N'Nong Mai Phai', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302209', N'30410', N'บ้านใหม่', N'Ban Mai', N'3022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302301', N'30440', N'แก้งสนามนาง', N'Kaeng Sanam Nang', N'3023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302302', N'30440', N'โนนสำราญ', N'Non Samran', N'3023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302303', N'30440', N'บึงพะไล', N'Bueng Phalai', N'3023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302304', N'30440', N'สีสุก', N'Si Suk', N'3023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302305', N'30440', N'บึงสำโรง', N'Bueng Samrong', N'3023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302401', N'30360', N'โนนแดง', N'Non Daeng', N'3024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302402', N'30360', N'โนนตาเถร', N'Non Ta Then', N'3024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302403', N'30360', N'สำพะเนียง', N'Lam Phaniang', N'3024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302404', N'30360', N'วังหิน', N'Wang Hin', N'3024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302405', N'30360', N'ดอนยาวใหญ่', N'Don Yao Yai', N'3024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302501', N'30370', N'วังน้ำเขียว', N'Wang Nam Khiao', N'3025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302502', N'30370', N'วังหมี', N'Wang Mi', N'3025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302503', N'30150', N'ระเริง', N'Raroeng', N'3025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302504', N'30370', N'อุดมทรัพย์', N'Udom Sap', N'3025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302505', N'30370', N'ไทยสามัคคี', N'Thai Samakkhi', N'3025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302601', N'30210', N'สำนักตะคร้อ', N'Samnak Takhro', N'3026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302602', N'30210', N'หนองแวง', N'Nong Waeng', N'3026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302603', N'30210', N'บึงปรือ', N'Bueng Prue', N'3026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302604', N'30210', N'วังยายทอง', N'Wang Yai Thong', N'3026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302701', N'30270', N'เมืองยาง', N'Mueang Yang', N'3027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302702', N'30270', N'กระเบื้องนอก', N'Krabueang Nok', N'3027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302703', N'30270', N'ละหานปลาค้าว', N'Lahan Pla Khao', N'3027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302704', N'30270', N'โนนอุดม', N'Non Udom', N'3027')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302801', N'30220', N'สระพระ', N'Sa Phra', N'3028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302802', N'30220', N'มาบกราด', N'Map Krat', N'3028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302803', N'30220', N'พังเทียม', N'Phang Thiam', N'3028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302804', N'30220', N'ทัพรั้ง', N'Thap Rang', N'3028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302805', N'30220', N'หนองหอย', N'Nong Hoi', N'3028')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302901', N'30270', N'ขุย', N'Khui', N'3029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302902', N'30270', N'บ้านยาง', N'Ban Yang', N'3029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302903', N'30270', N'ช่องแมว', N'Chong Maeo', N'3029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'302904', N'30270', N'ไพล', N'Phlai', N'3029')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303001', N'30120', N'เมืองพะไล', N'Mueang Phalai', N'3030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303002', N'30120', N'โนนจาน', N'Non Chan', N'3030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303003', N'30120', N'บัวลาย', N'Bua Lai', N'3030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303004', N'30120', N'หนองหว้า', N'Nong Wa', N'3030')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303101', N'30430', N'สีดา', N'Sida', N'3031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303102', N'30430', N'โพนทอง', N'Phon Thong', N'3031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303103', N'30430', N'โนนประดู่', N'Non Pladu', N'3031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303104', N'30430', N'สามเมือง', N'Sam Mueang', N'3031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303105', N'30430', N'หนองตาดใหญ่', N'Nong Tat Yai', N'3031')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303201', N'30230', N'ช้างทอง', N'Chang Thong', N'3032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303202', N'30230', N'ท่าช้าง', N'Tha Chang', N'3032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303203', N'30230', N'พระพุทธ', N'Phra Phut', N'3032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303204', N'30000', N'หนองงูเหลือม', N'Nong Ngu Lueam', N'3032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'303205', N'30230', N'หนองยาง', N'Nong Yang', N'3032')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310101', N'31000', N'ในเมือง', N'Nai Mueang', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310102', N'31000', N'อิสาณ', N'Isan', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310103', N'31000', N'เสม็ด', N'Samet', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310104', N'31000', N'บ้านบัว', N'Ban Bua', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310105', N'31000', N'สะแกโพรง', N'Sakae Phrong', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310106', N'31000', N'สวายจีก', N'Sawai Chik', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310108', N'31000', N'บ้านยาง', N'Ban Yang', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310112', N'31000', N'พระครู', N'Phra Khru', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310113', N'31000', N'ถลุงเหล็ก', N'Thalung Lek', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310114', N'31000', N'หนองตาด', N'Nong Tat', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310117', N'31000', N'ลุมปุ๊ก', N'Lumpuk', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310118', N'31000', N'สองห้อง', N'Song Hong', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310119', N'31000', N'บัวทอง', N'Bua Thong', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310120', N'31000', N'ชุมเห็ด', N'Chum Het', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310122', N'31000', N'หลักเขต', N'Lak Khet', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310125', N'31000', N'สะแกซำ', N'Sakae Sam', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310126', N'31000', N'กลันทา', N'Kalantha', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310127', N'31000', N'กระสัง', N'Krasang', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310128', N'31000', N'เมืองฝาง', N'Mueang Fang', N'3101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310201', N'31190', N'คูเมือง', N'Khu Mueang', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310202', N'31190', N'ปะเคียบ', N'Pakhiap', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310203', N'31190', N'บ้านแพ', N'Ban Phae', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310204', N'31190', N'พรสำราญ', N'Phon Samran', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310205', N'31190', N'หินเหล็กไฟ', N'Hin Lek Fai', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310206', N'31190', N'ตูมใหญ่', N'Tum Yai', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310207', N'31190', N'หนองขมาร', N'Nong Khaman', N'3102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310301', N'31160', N'กระสัง', N'Krasang', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310302', N'31160', N'ลำดวน', N'Lamduan', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310303', N'31160', N'สองชั้น', N'Song Chan', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310304', N'31160', N'สูงเนิน', N'Sung Noen', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310305', N'31160', N'หนองเต็ง', N'Nong Teng', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310306', N'31160', N'เมืองไผ่', N'Mueang Phai', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310307', N'31160', N'ชุมแสง', N'Chum Saeng', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310308', N'31160', N'บ้านปรือ', N'Ban Prue', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310309', N'31160', N'ห้วยสำราญ', N'Huai Samran', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310310', N'31160', N'กันทรารมย์', N'Kanthararom', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310311', N'31160', N'ศรีภูมิ', N'Si Phum', N'3103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310401', N'31110', N'นางรอง', N'Nang Rong', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310403', N'31110', N'สะเดา', N'Sadao', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310405', N'31110', N'ชุมแสง', N'Chum Saeng', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310406', N'31110', N'หนองโบสถ์', N'Nong Bot', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310408', N'31110', N'หนองกง', N'Nong Kong', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310413', N'31110', N'ถนนหัก', N'Thanon Hak', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310414', N'31110', N'หนองไทร', N'Nong Sai', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310415', N'31110', N'ก้านเหลือง', N'Kan Lueang', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310416', N'31110', N'บ้านสิงห์', N'Ban Sing', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310417', N'31110', N'ลำไทรโยง', N'Lam Sai Yong', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310418', N'31110', N'ทรัพย์พระยา', N'Sap Phraya', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310424', N'31110', N'หนองยายพิมพ์', N'Nong Yai Phim', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310425', N'31110', N'หัวถนน', N'Hua Thanon', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310426', N'31110', N'ทุ่งแสงทอง', N'Thung Saeng Thong', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310427', N'31110', N'หนองโสน', N'Nong Sano', N'3104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310501', N'31210', N'หนองกี่', N'Nong Ki', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310502', N'31210', N'เย้ยปราสาท', N'Yoei Prasat', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310503', N'31210', N'เมืองไผ่', N'Mueang Phai', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310504', N'31210', N'ดอนอะราง', N'Don Arang', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310505', N'31210', N'โคกสว่าง', N'Khok Sawang', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310506', N'31210', N'ทุ่งกระตาดพัฒนา', N'Thung Kratat Phatthana', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310507', N'31210', N'ทุ่งกระเต็น', N'Thung Kraten', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310508', N'31210', N'ท่าโพธิ์ชัย', N'Tha Pho Chai', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310509', N'31210', N'โคกสูง', N'Khok Sung', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310510', N'31210', N'บุกระสัง', N'Bu Krasang', N'3105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310601', N'31170', N'ละหานทราย', N'Lahan Sai', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310603', N'31170', N'ตาจง', N'Ta Chong', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310604', N'31170', N'สำโรงใหม่', N'Samrong Mai', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310607', N'31170', N'หนองแวง', N'Nong Waeng', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310610', N'31170', N'หนองตะครอง', N'Nong Takhrong', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310611', N'31170', N'โคกว่าน', N'Khok Wan', N'3106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310701', N'31140', N'ประโคนชัย', N'Prakhon Chai', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310702', N'31140', N'แสลงโทน', N'Salaeng Thon', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310703', N'31140', N'บ้านไทร', N'Ban Sai', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310705', N'31140', N'ละเวี้ย', N'Lawia', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310706', N'31140', N'จรเข้มาก', N'Chorakhe Mak', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310707', N'31140', N'ปังกู', N'Pang Ku', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310708', N'31140', N'โคกย่าง', N'Khok Yang', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310710', N'31140', N'โคกม้า', N'Khok Ma', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310713', N'31140', N'ไพศาล', N'Phaisan', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310714', N'31140', N'ตะโกตาพิ', N'Tako Taphi', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310715', N'31140', N'เขาคอก', N'Khao Khok', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310716', N'31140', N'หนองบอน', N'Bong Bon', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310718', N'31140', N'โคกมะขาม', N'Khok Makham', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310719', N'31140', N'โคกตูม', N'Khok Tum', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310720', N'31140', N'ประทัดบุ', N'Prathat Bu', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310721', N'31140', N'สี่เหลี่ยม', N'Si Liam', N'3107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310801', N'31180', N'บ้านกรวด', N'Ban Kruat', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310802', N'31180', N'โนนเจริญ', N'Non Charoen', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310803', N'31180', N'หนองไม้งาม', N'Nong Mai Ngam', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310804', N'31180', N'ปราสาท', N'Prasat', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310805', N'31180', N'สายตะกู', N'Sai Taku', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310806', N'31180', N'หินลาด', N'Hin Lat', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310807', N'31180', N'บึงเจริญ', N'Bueng Charoen', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310808', N'31180', N'จันทบเพชร', N'Chanthop Phet', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310809', N'31180', N'เขาดินเหนือ', N'Khao Din Nuea', N'3108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310901', N'31120', N'พุทไธสง', N'Phutthaisong', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310902', N'31120', N'มะเฟือง', N'Mafueang', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310903', N'31120', N'บ้านจาน', N'Ban Chan', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310906', N'31120', N'บ้านเป้า', N'Ban Pao', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310907', N'31120', N'บ้านแวง', N'Ban Waeng', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310909', N'31120', N'บ้านยาง', N'Ban Yang', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'310910', N'31120', N'หายโศก', N'Hai Sok', N'3109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311001', N'31130', N'ลำปลายมาศ', N'Lam Plai Mat', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311002', N'31130', N'หนองคู', N'Nong Khu', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311003', N'31130', N'แสลงพัน', N'Salaeng Phan', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311004', N'31130', N'ทะเมนชัย', N'Thamen Chai', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311005', N'31130', N'ตลาดโพธิ์', N'Talat Pho', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311006', N'31130', N'หนองกะทิง', N'Nong Kathing', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311007', N'31130', N'โคกกลาง', N'Khok Klang', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311008', N'31130', N'โคกสะอาด', N'Khok Sa-at', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311009', N'31130', N'เมืองแฝก', N'Mueang Faek', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311010', N'31130', N'บ้านยาง', N'Ban Yang', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311011', N'31130', N'ผไทรินทร์', N'Phathairin', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311012', N'31130', N'โคกล่าม', N'Khok Lam', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311013', N'31130', N'หินโคน', N'Hin Khon', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311014', N'31130', N'หนองบัวโคก', N'Nong Bua Khok', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311015', N'31130', N'บุโพธิ์', N'Bu Pho', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311016', N'31130', N'หนองโดน', N'Nong Don', N'3110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311101', N'31150', N'สตึก', N'Satuek', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311102', N'31150', N'นิคม', N'Nikhom', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311103', N'31150', N'ทุ่งวัง', N'Thung Wang', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311104', N'31150', N'เมืองแก', N'Mueang Kae', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311105', N'31150', N'หนองใหญ่', N'Nong Yai', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311106', N'31150', N'ร่อนทอง', N'Ron Thong', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311109', N'31150', N'ดอนมนต์', N'Don Mon', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311110', N'31150', N'ชุมแสง', N'Chum Saeng', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311111', N'31150', N'ท่าม่วง', N'Tha Muang', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311112', N'31150', N'สะแก', N'Sakae', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311114', N'31150', N'สนามชัย', N'Sanam Chai', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311115', N'31150', N'กระสัง', N'Krasang', N'3111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311201', N'31220', N'ปะคำ', N'Pakham', N'3112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311202', N'31220', N'ไทยเจริญ', N'Thai Charoen', N'3112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311203', N'31220', N'หนองบัว', N'Nong Bua', N'3112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311204', N'31220', N'โคกมะม่วง', N'Khok Mamuang', N'3112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311205', N'31220', N'หูทำนบ', N'Hu Thamnop', N'3112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311301', N'31230', N'นาโพธิ์', N'Na Pho', N'3113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311302', N'31230', N'บ้านคู', N'Ban Khu', N'3113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311303', N'31230', N'บ้านดู่', N'Ban Du', N'3113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311304', N'31230', N'ดอนกอก', N'Don Kok', N'3113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311305', N'31230', N'ศรีสว่าง', N'Si Sawang', N'3113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311401', N'31240', N'สระแก้ว', N'Sa Kaeo', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311402', N'31240', N'ห้วยหิน', N'Huai Hin', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311403', N'31240', N'ไทยสามัคคี', N'Thai Samakkhi', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311404', N'31240', N'หนองชัยศรี', N'Nong Chai Si', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311405', N'31240', N'เสาเดียว', N'Sao Diao', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311406', N'31240', N'เมืองฝ้าย', N'Mueang Fai', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311407', N'31240', N'สระทอง', N'Sa Thong', N'3114')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311501', N'31250', N'จันดุม', N'Chan Dum', N'3115')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311502', N'31250', N'โคกขมิ้น', N'Khok Khamin', N'3115')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311503', N'31250', N'ป่าชัน', N'Pa Chan', N'3115')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311504', N'31250', N'สะเดา', N'Sadao', N'3115')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311505', N'31250', N'สำโรง', N'Samrong', N'3115')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311601', N'31000', N'ห้วยราช', N'Huai Rat', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311602', N'31000', N'สามแวง', N'Sam Waeng', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311603', N'31000', N'ตาเสา', N'Ta Sao', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311604', N'31000', N'บ้านตะโก', N'Ban Tako', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311605', N'31000', N'สนวน', N'Sanuan', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311606', N'31000', N'โคกเหล็ก', N'Khok Lek', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311607', N'31000', N'เมืองโพธิ์', N'Mueang Pho', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311608', N'31000', N'ห้วยราชา', N'Huai Racha', N'3116')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311701', N'31110', N'โนนสุวรรณ', N'Non Suwan', N'3117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311702', N'31110', N'ทุ่งจังหัน', N'Thung Changhan', N'3117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311703', N'31110', N'โกรกแก้ว', N'Krok Kaeo', N'3117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311704', N'31110', N'ดงอีจาน', N'Dong I Chan', N'3117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311801', N'31110', N'ชำนิ', N'Chamni', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311802', N'31110', N'หนองปล่อง', N'Nong Plong', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311803', N'31110', N'เมืองยาง', N'Mueang Yang', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311804', N'31110', N'ช่อผกา', N'Cho Phaka', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311805', N'31110', N'ละลวด', N'Laluat', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311806', N'31110', N'โคกสนวน', N'Khok Sanuan', N'3118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311901', N'31120', N'หนองแวง', N'Nong Waeng', N'3119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311902', N'31120', N'ทองหลาง', N'Thonglang', N'3119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311903', N'31120', N'แดงใหญ่', N'Daeng Yai', N'3119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311904', N'31120', N'กู่สวนแตง', N'Ku Suan Taeng', N'3119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'311905', N'31120', N'หนองเยือง', N'Nong Yueang', N'3119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312001', N'31260', N'โนนดินแดง', N'Non Din Daeng', N'3120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312002', N'31260', N'ส้มป่อย', N'Som Poi', N'3120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312003', N'31260', N'ลำนางรอง', N'Lam Nang Rong', N'3120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312101', N'31000', N'บ้านด่าน', N'Ban Dan', N'3121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312102', N'31000', N'ปราสาท', N'Prasat', N'3121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312103', N'31000', N'วังเหนือ', N'Wang Nuea', N'3121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312104', N'31000', N'โนนขวาง', N'Non Khwang', N'3121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312201', N'31150', N'แคนดง', N'Khaen Dong', N'3122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312202', N'31150', N'ดงพลอง', N'Dong Phlong', N'3122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312203', N'31150', N'สระบัว', N'Sa Bua', N'3122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312204', N'31150', N'หัวฝาย', N'Hua Fai', N'3122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312301', N'31110', N'เจริญสุข', N'Charoen Suk', N'3123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312302', N'31110', N'ตาเป๊ก', N'Ta Pek', N'3123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312303', N'31110', N'อีสานเขต', N'Isan Khet', N'3123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312304', N'31170', N'ถาวร', N'Thawon', N'3123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'312305', N'31170', N'ยายแย้มวัฒนา', N'Yai Yaem Watthana', N'3123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320101', N'32000', N'ในเมือง', N'Nai Mueang', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320102', N'32000', N'ตั้งใจ', N'Tang Chai', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320103', N'32000', N'เพี้ยราม', N'Phia Ram', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320104', N'32000', N'นาดี', N'Na Di', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320105', N'32000', N'ท่าสว่าง', N'Tha Sawang', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320106', N'32000', N'สลักได', N'Salakdai', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320107', N'32000', N'ตาอ็อง', N'Ta Ong', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320109', N'32000', N'สำโรง', N'Samrong', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320110', N'32000', N'แกใหญ่', N'Kae Yai', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320111', N'32000', N'นอกเมือง', N'Nok Mueang', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320112', N'32000', N'คอโค', N'Kho Kho', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320113', N'32000', N'สวาย', N'Sawai', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320114', N'32000', N'เฉนียง', N'Chaniang', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320116', N'32000', N'เทนมีย์', N'Thenmi', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320118', N'32000', N'นาบัว', N'Na Bua', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320119', N'32000', N'เมืองที', N'Mueang Thi', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320120', N'32000', N'ราม', N'Ram', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320121', N'32000', N'บุฤาษี', N'Bu Ruesi', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320122', N'32000', N'ตระแสง', N'Trasaeng', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320125', N'32000', N'แสลงพันธ์', N'Salaeng Phan', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320126', N'32000', N'กาเกาะ', N'Ka Ko', N'3201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320201', N'32190', N'ชุมพลบุรี', N'Chumphon Buri', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320202', N'32190', N'นาหนองไผ่', N'Na Nong Phai', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320203', N'32190', N'ไพรขลา', N'Phrai Khla', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320204', N'32190', N'ศรีณรงค์', N'Si Narong', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320205', N'32190', N'ยะวึก', N'Yawuek', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320206', N'32190', N'เมืองบัว', N'Mueang Bua', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320207', N'32190', N'สระขุด', N'Sa Khut', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320208', N'32190', N'กระเบื้อง', N'Krabueang', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320209', N'32190', N'หนองเรือ', N'Nong Ruea', N'3202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320301', N'32120', N'ท่าตูม', N'Tha Tum', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320302', N'32120', N'กระโพ', N'Krapho', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320303', N'32120', N'พรมเทพ', N'Phrom Thep', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320304', N'32120', N'โพนครก', N'Phon Khrok', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320305', N'32120', N'เมืองแก', N'Mueang Kae', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320306', N'32120', N'บะ', N'Ba', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320307', N'32120', N'หนองบัว', N'Nong Bua', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320308', N'32120', N'บัวโคก', N'Bua Khok', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320309', N'32120', N'หนองเมธี', N'Nong Methi', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320310', N'32120', N'ทุ่งกุลา', N'Thung Kula', N'3203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320401', N'32180', N'จอมพระ', N'Chom Phra', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320402', N'32180', N'เมืองลีง', N'Mueang Ling', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320403', N'32180', N'กระหาด', N'Krahat', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320404', N'32180', N'บุแกรง', N'Bu Kraeng', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320405', N'32180', N'หนองสนิท', N'Nong Sanit', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320406', N'32180', N'บ้านผือ', N'Ban Phue', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320407', N'32180', N'ลุ่มระวี', N'Lum Rawi', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320408', N'32180', N'ชุมแสง', N'Chum Saeng', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320409', N'32180', N'เป็นสุข', N'Pen Suk', N'3204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320501', N'32140', N'กังแอน', N'Kang Aen', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320502', N'32140', N'ทมอ', N'Thamo', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320503', N'32140', N'ไพล', N'Phlai', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320504', N'32140', N'ปรือ', N'Prue', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320505', N'32140', N'ทุ่งมน', N'Thung Mon', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320506', N'32140', N'ตาเบา', N'Ta Bao', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320507', N'32140', N'หนองใหญ่', N'Nong Yai', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320508', N'32140', N'โคกยาง', N'Khok Yang', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320509', N'32140', N'โคกสะอาด', N'Khok Sa-at', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320510', N'32140', N'บ้านไทร', N'Ban Sai', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320511', N'32140', N'โชคนาสาม', N'Chok Na Sam', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320512', N'32140', N'เชื้อเพลิง', N'Chuea Phloeng', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320513', N'32140', N'ปราสาททนง', N'Prasat Thanong', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320514', N'32140', N'ตานี', N'Tani', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320515', N'32140', N'บ้านพลวง', N'Ban Phluang', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320516', N'32140', N'กันตวจระมวล', N'Kantuat Ramuan', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320517', N'32140', N'สมุด', N'Samut', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320518', N'32140', N'ประทัดบุ', N'Prathat Bu', N'3205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320601', N'32210', N'กาบเชิง', N'Kap Choeng', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320604', N'32210', N'คูตัน', N'Khu Tan', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320605', N'32210', N'ด่าน', N'Dan', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320606', N'32210', N'แนงมุด', N'Naeng Mut', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320607', N'32210', N'โคกตะเคียน', N'Khok Takhian', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320610', N'32210', N'ตะเคียน', N'Takhian', N'3206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320701', N'32130', N'รัตนบุรี', N'Rattanaburi', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320702', N'32130', N'ธาตุ', N'That', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320703', N'32130', N'แก', N'Kae', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320704', N'32130', N'ดอนแรด', N'Don Raet', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320705', N'32130', N'หนองบัวทอง', N'Nong Bua Thong', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320706', N'32130', N'หนองบัวบาน', N'Nong Bua Ban', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320709', N'32130', N'ไผ่', N'Phai', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320711', N'32130', N'เบิด', N'Boet', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320713', N'32130', N'น้ำเขียว', N'Nam Khiao', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320714', N'32130', N'กุดขาคีม', N'Kut Kha Khim', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320715', N'32130', N'ยางสว่าง', N'Yang Sawang', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320716', N'32130', N'ทับใหญ่', N'Thap Yai', N'3207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320801', N'32160', N'สนม', N'Sanom', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320802', N'32160', N'โพนโก', N'Phon Ko', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320803', N'32160', N'หนองระฆัง', N'Nong Rakhang', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320804', N'32160', N'นานวน', N'Na Nuan', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320805', N'32160', N'แคน', N'Khaen', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320806', N'32160', N'หัวงัว', N'Hua Ngua', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320807', N'32160', N'หนองอียอ', N'Nong I Yo', N'3208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320901', N'32110', N'ระแงง', N'Ra-ngaeng', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320902', N'32110', N'ตรึม', N'Truem', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320903', N'32110', N'จารพัต', N'Charaphat', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320904', N'32110', N'ยาง', N'Yang', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320905', N'32110', N'แตล', N'Taen', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320906', N'32110', N'หนองบัว', N'Nong Bua', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320907', N'32110', N'คาละแมะ', N'Khalamae', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320908', N'32110', N'หนองเหล็ก', N'Nong Lek', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320909', N'32110', N'หนองขวาว', N'Nong Khwao', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320910', N'32110', N'ช่างปี่', N'Chang Pi', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320911', N'32110', N'กุดหวาย', N'Kut Wai', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320912', N'32110', N'ขวาวใหญ่', N'Khwao Yai', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320913', N'32110', N'นารุ่ง', N'Na Rung', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320914', N'32110', N'ตรมไพร', N'Trom Phrai', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'320915', N'32110', N'ผักไหม', N'Phak Mai', N'3209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321001', N'32150', N'สังขะ', N'Sangkha', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321002', N'32150', N'ขอนแตก', N'Khon Taek', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321006', N'32150', N'ดม', N'Dom', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321007', N'32150', N'พระแก้ว', N'Phra Kaeo', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321008', N'32150', N'บ้านจารย์', N'Ban Chan', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321009', N'32150', N'กระเทียม', N'Krathiam', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321010', N'32150', N'สะกาด', N'Sakat', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321011', N'32150', N'ตาตุม', N'Ta Tum', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321012', N'32150', N'ทับทัน', N'Thap Than', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321013', N'32150', N'ตาคง', N'Ta Khong', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321015', N'32150', N'บ้านชบ', N'Ban Chop', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321017', N'32150', N'เทพรักษา', N'Thep Raksa', N'3210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321101', N'32220', N'ลำดวน', N'Lamduan', N'3211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321102', N'32220', N'โชคเหนือ', N'Chok Nuea', N'3211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321103', N'32220', N'อู่โลก', N'U Lok', N'3211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321104', N'32220', N'ตรำดม', N'Tram Dom', N'3211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321105', N'32220', N'ตระเปียงเตีย', N'Tra Priang Tia', N'3211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321201', N'32170', N'สำโรงทาบ', N'Samrong Thap', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321202', N'32170', N'หนองไผ่ล้อม', N'Nong Phai Lom', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321203', N'32170', N'กระออม', N'Kra-om', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321204', N'32170', N'หนองฮะ', N'Nong Ha', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321205', N'32170', N'ศรีสุข', N'Si Suk', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321206', N'32170', N'เกาะแก้ว', N'Ko Kaeo', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321207', N'32170', N'หมื่นศรี', N'Muen Si', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321208', N'32170', N'เสม็จ', N'Samet', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321209', N'32170', N'สะโน', N'Sano', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321210', N'32170', N'ประดู่', N'Pradu', N'3212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321301', N'32230', N'บัวเชด', N'Buachet', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321302', N'32230', N'สะเดา', N'Sadao', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321303', N'32230', N'จรัส', N'Charat', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321304', N'32230', N'ตาวัง', N'Ta Wang', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321305', N'32230', N'อาโพน', N'A Phon', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321306', N'32230', N'สำเภาลูน', N'Samphao Lun', N'3213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321401', N'32140', N'บักได', N'Bak Dai', N'3214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321402', N'32140', N'โคกกลาง', N'Khok Klang', N'3214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321403', N'32140', N'จีกแดก', N'Chik Daek', N'3214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321404', N'32140', N'ตาเมียง', N'Ta Miang', N'3214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321501', N'32150', N'ณรงค์', N'Narong', N'3215')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321502', N'32150', N'แจนแวน', N'Chaenwaen', N'3215')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321503', N'32150', N'ตรวจ', N'Truat', N'3215')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321504', N'32150', N'หนองแวง', N'Nong Waeng', N'3215')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321505', N'32150', N'ศรีสุข', N'Si Suk', N'3215')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321601', N'32000', N'เขวาสินรินทร์', N'Khwao Sinrin', N'3216')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321602', N'32000', N'บึง', N'Bueng', N'3216')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321603', N'32000', N'ตากูก', N'Ta Kuk', N'3216')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321604', N'32000', N'ปราสาททอง', N'Prasat Thong', N'3216')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321605', N'32000', N'บ้านแร่', N'Ban Rae', N'3216')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321701', N'32130', N'หนองหลวง', N'Nong Luang', N'3217')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321702', N'32130', N'คำผง', N'Kham Phong', N'3217')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321703', N'32130', N'โนน', N'Non', N'3217')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321704', N'32130', N'ระเวียง', N'Rawiang', N'3217')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'321705', N'32130', N'หนองเทพ', N'Nong Thep', N'3217')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330101', N'33000', N'เมืองเหนือ', N'Mueang Nuea', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330102', N'33000', N'เมืองใต้', N'Mueang Tai', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330103', N'33000', N'คูซอด', N'Khu Sot', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330104', N'33000', N'ซำ', N'Sam', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330105', N'33000', N'จาน', N'Chan', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330106', N'33000', N'ตะดอบ', N'Tadop', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330107', N'33000', N'หนองครก', N'Nong Khrok', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330111', N'33000', N'โพนข่า', N'Phon Kha', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330112', N'33000', N'โพนค้อ', N'Phon Kho', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330115', N'33000', N'โพนเขวา', N'Phon Khwao', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330116', N'33000', N'หญ้าปล้อง', N'Ya Plong', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330118', N'33000', N'ทุ่ม', N'Thum', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330119', N'33000', N'หนองไฮ', N'Nong Hai', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330121', N'33000', N'หนองแก้ว', N'Nong Kaeo', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330122', N'33000', N'น้ำคำ', N'Nam Kham', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330123', N'33000', N'โพธิ์', N'Pho', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330124', N'33000', N'หมากเขียบ', N'Mak Khiap', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330127', N'33000', N'หนองไผ่', N'Nong Phai', N'3301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330201', N'33190', N'ยางชุมน้อย', N'Yang Chum Noi', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330202', N'33190', N'ลิ้นฟ้า', N'Lin Fa', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330203', N'33190', N'คอนกาม', N'Khon Kam', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330204', N'33190', N'โนนคูณ', N'Non Khun', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330205', N'33190', N'กุดเมืองฮาม', N'Kut Mueang Ham', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330206', N'33190', N'บึงบอน', N'Bueng Bon', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330207', N'33190', N'ยางชุมใหญ่', N'Yang Chum Yai', N'3302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330301', N'33130', N'ดูน', N'Dun', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330302', N'33130', N'โนนสัง', N'Non Sang', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330303', N'33130', N'หนองหัวช้าง', N'Nong Hua Chang', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330304', N'33130', N'ยาง', N'Yang', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330305', N'33130', N'หนองแวง', N'Nong Waeng', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330306', N'33130', N'หนองแก้ว', N'Nong Kaeo', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330307', N'33130', N'ทาม', N'Tham', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330308', N'33130', N'ละทาย', N'Lathai', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330309', N'33130', N'เมืองน้อย', N'Mueang Noi', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330310', N'33130', N'อีปาด', N'I Pat', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330311', N'33130', N'บัวน้อย', N'Bua Noi', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330312', N'33130', N'หนองบัว', N'Nong Bua', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330313', N'33130', N'ดู่', N'Du', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330314', N'33130', N'ผักแพว', N'Phak Phaeo', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330315', N'33130', N'จาน', N'Chan', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330320', N'33130', N'คำเนียม', N'Kham Niam', N'3303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330401', N'33110', N'บึงมะลู', N'Bueng Malu', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330402', N'33110', N'กุดเสลา', N'Kut Salao', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330403', N'33110', N'เมือง', N'Mueang', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330405', N'33110', N'สังเม็ก', N'Sang Mek', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330406', N'33110', N'น้ำอ้อม', N'Nam Om', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330407', N'33110', N'ละลาย', N'Lalai', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330408', N'33110', N'รุง', N'Rung', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330409', N'33110', N'ตระกาจ', N'Trakat', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330411', N'33110', N'จานใหญ่', N'Chan Yai', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330412', N'33110', N'ภูเงิน', N'Phu Ngoen', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330413', N'33110', N'ชำ', N'Cham', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330414', N'33110', N'กระแชง', N'Krachaeng', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330415', N'33110', N'โนนสำราญ', N'Non Samran', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330416', N'33110', N'หนองหญ้าลาด', N'Nong Ya Lat', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330419', N'33110', N'เสาธงชัย', N'Sao Thong Chai', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330420', N'33110', N'ขนุน', N'Khanun', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330421', N'33110', N'สวนกล้วย', N'Suan Kluai', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330423', N'33110', N'เวียงเหนือ', N'Wiang Nuea', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330424', N'33110', N'ทุ่งใหญ่', N'Thung Yai', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330425', N'33110', N'ภูผาหมอก', N'Phu Pha Mok', N'3304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330501', N'33140', N'กันทรารมย์', N'Kanthararom', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330502', N'33140', N'จะกง', N'Chakong', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330503', N'33140', N'ใจดี', N'Chai Di', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330504', N'33140', N'ดองกำเม็ด', N'Dong Kam Met', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330505', N'33140', N'โสน', N'Sano', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330506', N'33140', N'ปรือใหญ่', N'Prue Yai', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330507', N'33140', N'สะเดาใหญ่', N'Sadao Yai', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330508', N'33140', N'ตาอุด', N'Ta Ut', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330509', N'33140', N'ห้วยเหนือ', N'Huai Nuea', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330510', N'33140', N'ห้วยใต้', N'Huai Tai', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330511', N'33140', N'หัวเสือ', N'Hua Suea', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330513', N'33140', N'ตะเคียน', N'Takhian', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330515', N'33140', N'นิคมพัฒนา', N'Nikhom Phatthana', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330517', N'33140', N'โคกเพชร', N'Khok Phet', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330518', N'33140', N'ปราสาท', N'Prasat', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330521', N'33140', N'สำโรงตาเจ็น', N'Samrong Ta Chen', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330522', N'33140', N'ห้วยสำราญ', N'Huai Samran', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330524', N'33140', N'กฤษณา', N'Kritsana', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330525', N'33140', N'ลมศักดิ์', N'Lom Sak', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330526', N'33140', N'หนองฉลอง', N'Nong Chalong', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330527', N'33140', N'ศรีตระกูล', N'Si Trakun', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330528', N'33140', N'ศรีสะอาด', N'Si Sa-at', N'3305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330601', N'33180', N'ไพรบึง', N'Phrai Bueng', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330602', N'33180', N'ดินแดง', N'Din Daeng', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330603', N'33180', N'ปราสาทเยอ', N'Prasat Yoe', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330604', N'33180', N'สำโรงพลัน', N'Samrong Phlan', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330605', N'33180', N'สุขสวัสดิ์', N'Suk Sawat', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330606', N'33180', N'โนนปูน', N'Non Pun', N'3306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330701', N'33170', N'พิมาย', N'Phimai', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330702', N'33170', N'กู่', N'Ku', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330703', N'33170', N'หนองเชียงทูน', N'Nong Chiang Thun', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330704', N'33170', N'ตูม', N'Tum', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330705', N'33170', N'สมอ', N'Samo', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330706', N'33170', N'โพธิ์ศรี', N'Pho Si', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330707', N'33170', N'สำโรงปราสาท', N'Samrong Prasat', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330708', N'33170', N'ดู่', N'Du', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330709', N'33170', N'สวาย', N'Sawai', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330710', N'33170', N'พิมายเหนือ', N'Phimai Nuea', N'3307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330801', N'33150', N'สิ', N'Si', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330802', N'33150', N'บักดอง', N'Bak Dong', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330803', N'33150', N'พราน', N'Phran', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330804', N'33150', N'โพธิ์วงศ์', N'Pho Wong', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330805', N'33150', N'ไพร', N'Phrai', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330806', N'33150', N'กระหวัน', N'Krawan', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330807', N'33150', N'ขุนหาญ', N'Khun Han', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330808', N'33150', N'โนนสูง', N'Non Sung', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330809', N'33150', N'กันทรอม', N'Kanthrom', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330810', N'33150', N'ภูฝ้าย', N'Phu Fai', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330811', N'33150', N'โพธิ์กระสังข์', N'Pho Krasang', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330812', N'33150', N'ห้วยจันทร์', N'Huai Chan', N'3308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330901', N'33160', N'เมืองคง', N'Mueang Khong', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330902', N'33160', N'เมืองแคน', N'Mueang Khaen', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330903', N'33160', N'หนองแค', N'Nong Khae', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330906', N'33160', N'จิกสังข์ทอง', N'Chik Sang Thong', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330907', N'33160', N'ด่าน', N'Dan', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330908', N'33160', N'ดู่', N'Du', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330909', N'33160', N'หนองอึ่ง', N'Nong Ueng', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330910', N'33160', N'บัวหุ่ง', N'Bua Hung', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330911', N'33160', N'ไผ่', N'Phai', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330912', N'33160', N'ส้มป่อย', N'Som Poi', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330913', N'33160', N'หนองหมี', N'Nong Mi', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330914', N'33160', N'หว้านคำ', N'Wan Kham', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'330915', N'33160', N'สร้างปี่', N'Sang Pi', N'3309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331001', N'33120', N'กำแพง', N'Kamphaeng', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331002', N'33120', N'อี่หล่ำ', N'I Lam', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331003', N'33120', N'ก้านเหลือง', N'Kan Lueang', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331004', N'33120', N'ทุ่งไชย', N'Thung Chai', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331005', N'33120', N'สำโรง', N'Samrong', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331006', N'33120', N'แขม', N'Khaem', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331007', N'33120', N'หนองไฮ', N'Nong Hai', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331008', N'33120', N'ขะยูง', N'Khayung', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331010', N'33120', N'ตาเกษ', N'Ta Ket', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331011', N'33120', N'หัวช้าง', N'Hua Chang', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331012', N'33120', N'รังแร้ง', N'Rang Raeng', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331014', N'33120', N'แต้', N'Tae', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331015', N'33120', N'แข้', N'Khae', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331016', N'33120', N'โพธิ์ชัย', N'Pho Chai', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331017', N'33120', N'ปะอาว', N'Pa Ao', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331018', N'33120', N'หนองห้าง', N'Nong Hang', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331022', N'33120', N'สระกำแพงใหญ่', N'Sa Kamphaeng Yai', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331024', N'33120', N'โคกหล่าม', N'Khok Lam', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331025', N'33120', N'โคกจาน', N'Khok Chan', N'3310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331101', N'33220', N'เป๊าะ', N'Po', N'3311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331102', N'33220', N'บึงบูรพ์', N'Bueng Bun', N'3311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331201', N'33210', N'ห้วยทับทัน', N'Huai Thap Than', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331202', N'33210', N'เมืองหลวง', N'Mueang Luang', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331203', N'33210', N'กล้วยกว้าง', N'Kluai Kwang', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331204', N'33210', N'ผักไหม', N'Phak Mai', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331205', N'33210', N'จานแสนไชย', N'Chan Saen Chai', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331206', N'33210', N'ปราสาท', N'Prasat', N'3312')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331301', N'33250', N'โนนค้อ', N'Non Kho', N'3313')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331302', N'33250', N'บก', N'Bok', N'3313')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331303', N'33250', N'โพธิ์', N'Pho', N'3313')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331304', N'33250', N'หนองกุง', N'Nong Kung', N'3313')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331305', N'33250', N'เหล่ากวาง', N'Lao Kwang', N'3313')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331401', N'33240', N'ศรีแก้ว', N'Si Kaeo', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331402', N'33240', N'พิงพวย', N'Phing Phuai', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331403', N'33240', N'สระเยาว์', N'Sa Yao', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331404', N'33240', N'ตูม', N'Tum', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331405', N'33240', N'เสื่องข้าว', N'Sueang Khao', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331406', N'33240', N'ศรีโนนงาม', N'Si Non Ngam', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331407', N'33240', N'สะพุง', N'Saphung', N'3314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331501', N'33130', N'น้ำเกลี้ยง', N'Nam Kliang', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331502', N'33130', N'ละเอาะ', N'La-o', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331503', N'33130', N'ตองปิด', N'Tong Pit', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331504', N'33130', N'เขิน', N'Khoen', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331505', N'33130', N'รุ่งระวี', N'Rung Rawi', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331506', N'33130', N'คูบ', N'Khup', N'3315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331601', N'33270', N'บุสูง', N'Bu Sung', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331602', N'33270', N'ธาตุ', N'That', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331603', N'33270', N'ดวนใหญ่', N'Duan Yai', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331604', N'33270', N'บ่อแก้ว', N'Bo Kaeo', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331605', N'33270', N'ศรีสำราญ', N'Si Samran', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331606', N'33270', N'ทุ่งสว่าง', N'Thung Sawang', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331607', N'33270', N'วังหิน', N'Wang Hin', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331608', N'33270', N'โพนยาง', N'Phon Yang', N'3316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331701', N'33140', N'โคกตาล', N'Khok Tan', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331702', N'33140', N'ห้วยตามอญ', N'Huai Ta Mon', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331703', N'33140', N'ห้วยตึ๊กชู', N'Huai Tuekchu', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331704', N'33140', N'ละลม', N'Lalom', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331705', N'33140', N'ตะเคียนราม', N'Takhian Ram', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331706', N'33140', N'ดงรัก', N'Dong Rak', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331707', N'33140', N'ไพรพัฒนา', N'Phrai Phatthana', N'3317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331801', N'33120', N'เมืองจันทร์', N'Mueang Chan', N'3318')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331802', N'33120', N'ตาโกน', N'Ta Kon', N'3318')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331803', N'33120', N'หนองใหญ่', N'Nong Yai', N'3318')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331901', N'33110', N'เสียว', N'Siao', N'3319')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331902', N'33110', N'หนองหว้า', N'Nong Wa', N'3319')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331903', N'33110', N'หนองงูเหลือม', N'Nong Ngu Lueam', N'3319')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331904', N'33110', N'หนองฮาง', N'Nong Hang', N'3319')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'331905', N'33110', N'ท่าคล้อ', N'Tha Khlo', N'3319')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332001', N'33230', N'พยุห์', N'Phayu', N'3320')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332002', N'33230', N'พรหมสวัสดิ์', N'Phrom Sawat', N'3320')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332003', N'33230', N'ตำแย', N'Tamyae', N'3320')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332004', N'33230', N'โนนเพ็ก', N'Nong Phek', N'3320')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332005', N'33230', N'หนองค้า', N'Nong Kha', N'3320')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332101', N'33120', N'โดด', N'Dot', N'3321')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332102', N'33120', N'เสียว', N'Siao', N'3321')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332103', N'33120', N'หนองม้า', N'Nong Ma', N'3321')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332104', N'33120', N'ผือใหญ่', N'Phue Yai', N'3321')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332105', N'33120', N'อีเซ', N'I Se', N'3321')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332201', N'33160', N'กุง', N'Kung', N'3322')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332202', N'33160', N'คลีกลิ้ง', N'Khli Kling', N'3322')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332203', N'33160', N'หนองบัวดง', N'Nong Bua Dong', N'3322')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'332204', N'33160', N'โจดม่วง', N'Chot Muang', N'3322')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340101', N'34000', N'ในเมือง', N'Nai Mueang', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340104', N'34000', N'หัวเรือ', N'Hua Ruea', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340105', N'34000', N'หนองขอน', N'Nong Khon', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340107', N'34000', N'ปทุม', N'Pathum', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340108', N'34000', N'ขามใหญ่', N'Kham Yai', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340109', N'34000', N'แจระแม', N'Chaeramae', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340111', N'34000', N'หนองบ่อ', N'Nong Bo', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340112', N'34000', N'ไร่น้อย', N'Rai Noi', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340113', N'34000', N'กระโสบ', N'Krasop', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340116', N'34000', N'กุดลาด', N'Kut Lat', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340119', N'34000', N'ขี้เหล็ก', N'Khilek', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340120', N'34000', N'ปะอาว', N'Pa-ao', N'3401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340201', N'34250', N'นาคำ', N'Na Kham', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340202', N'34250', N'แก้งกอก', N'Kaeng Kok', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340203', N'34250', N'เอือดใหญ่', N'Ueat Yai', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340204', N'34250', N'วาริน', N'Warin', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340205', N'34250', N'ลาดควาย', N'Lat Khwai', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340206', N'34250', N'สงยาง', N'Song Yang', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340207', N'34250', N'ตะบ่าย', N'Tabai', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340208', N'34250', N'คำไหล', N'Kham Lai', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340209', N'34250', N'หนามแท่ง', N'Nam Thaeng', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340210', N'34250', N'นาเลิน', N'Na Loen', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340211', N'34250', N'ดอนใหญ่', N'Don Yai', N'3402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340301', N'34220', N'โขงเจียม', N'Khong Chiam', N'3403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340302', N'34220', N'ห้วยยาง', N'Huai Yang', N'3403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340303', N'34220', N'นาโพธิ์กลาง', N'Na Pho Klang', N'3403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340304', N'34220', N'หนองแสงใหญ่', N'Nong Saeng Yai', N'3403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340305', N'34220', N'ห้วยไผ่', N'Huai Phai', N'3403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340401', N'34150', N'เขื่องใน', N'Khueang Nai', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340402', N'34150', N'สร้างถ่อ', N'Sang Tho', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340403', N'34150', N'ค้อทอง', N'Kho Thong', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340404', N'34150', N'ก่อเอ้', N'Ko E', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340405', N'34150', N'หัวดอน', N'Hua Don', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340406', N'34150', N'ชีทวน', N'Chi Thuan', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340407', N'34150', N'ท่าไห', N'Tha Hai', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340408', N'34150', N'นาคำใหญ่', N'Na Kham Yai', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340409', N'34150', N'แดงหม้อ', N'Daeng Mo', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340410', N'34150', N'ธาตุน้อย', N'That Noi', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340411', N'34320', N'บ้านไทย', N'Ban Thai', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340412', N'34320', N'บ้านกอก', N'Ban Kok', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340413', N'34320', N'กลางใหญ่', N'Klang Yai', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340414', N'34320', N'โนนรัง', N'Non Rang', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340415', N'34150', N'ยางขี้นก', N'Yang Khi Nok', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340416', N'34150', N'ศรีสุข', N'Si Suk', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340417', N'34150', N'สหธาตุ', N'Sahathat', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340418', N'34150', N'หนองเหล่า', N'Nong Lao', N'3404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340501', N'34170', N'เขมราฐ', N'Khemarat', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340503', N'34170', N'ขามป้อม', N'Kham Pom', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340504', N'34170', N'เจียด', N'Chiat', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340507', N'34170', N'หนองผือ', N'Nong Phue', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340508', N'34170', N'นาแวง', N'Na Waeng', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340510', N'34170', N'แก้งเหนือ', N'Kaeng Nuea', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340511', N'34170', N'หนองนกทา', N'Nong Nok Tha', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340512', N'34170', N'หนองสิม', N'Nong Sim', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340513', N'34170', N'หัวนา', N'Hua Na', N'3405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340701', N'34160', N'เมืองเดช', N'Mueang Det', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340702', N'34160', N'นาส่วง', N'Na Suang', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340704', N'34160', N'นาเจริญ', N'Na Charoen', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340706', N'34160', N'ทุ่งเทิง', N'Thung Thoeng', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340708', N'34160', N'สมสะอาด', N'Som Sa-at', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340709', N'34160', N'กุดประทาย', N'Kut Prathai', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340710', N'34160', N'ตบหู', N'Top Hu', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340711', N'34160', N'กลาง', N'Klang', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340712', N'34160', N'แก้ง', N'Kaeng', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340713', N'34160', N'ท่าโพธิ์ศรี', N'Tha Pho Si', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340715', N'34160', N'บัวงาม', N'Bua Ngam', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340716', N'34160', N'คำครั่ง', N'Kham Khrang', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340717', N'34160', N'นากระแซง', N'Na Krasaeng', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340720', N'34160', N'โพนงาม', N'Phon Ngam', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340721', N'34160', N'ป่าโมง', N'Pa Mong', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340723', N'34160', N'โนนสมบูรณ์', N'Non Sombun', N'3407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340801', N'34280', N'นาจะหลวย', N'Na Chaluai', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340802', N'34280', N'โนนสมบูรณ์', N'Non Sombun', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340803', N'34280', N'พรสวรรค์', N'Phon Sawan', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340804', N'34280', N'บ้านตูม', N'Ban Tum', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340805', N'34280', N'โสกแสง', N'Sok Saeng', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340806', N'34280', N'โนนสวรรค์', N'Non Sawan', N'3408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340901', N'34260', N'โซง', N'Song', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340903', N'34260', N'ยาง', N'Yang', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340904', N'34260', N'โดมประดิษฐ์', N'Dom Pradit', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340906', N'34260', N'บุเปือย', N'Bu Pueai', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340907', N'34260', N'สีวิเชียร', N'Si Wichian', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340909', N'34260', N'ยางใหญ่', N'Yang Yai', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'340911', N'34260', N'เก่าขาม', N'Kao Kham', N'3409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341001', N'34230', N'โพนงาม', N'Phon Ngam', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341002', N'34230', N'ห้วยข่า', N'Huai Kha', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341003', N'34230', N'คอแลน', N'Kho Laen', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341004', N'34230', N'นาโพธิ์', N'Na Pho', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341005', N'34230', N'หนองสะโน', N'Nong Sano', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341006', N'34230', N'โนนค้อ', N'Non Kho', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341007', N'34230', N'บัวงาม', N'Bua Ngam', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341008', N'34230', N'บ้านแมด', N'Ban Maet', N'3410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341101', N'34130', N'ขุหลุ', N'Khulu', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341102', N'34130', N'กระเดียน', N'Kradian', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341103', N'34130', N'เกษม', N'Kasem', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341104', N'34130', N'กุศกร', N'Kutsakon', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341105', N'34130', N'ขามเปี้ย', N'Kham Pia', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341106', N'34130', N'คอนสาย', N'Khon Sai', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341107', N'34130', N'โคกจาน', N'Khok Chan', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341108', N'34130', N'นาพิน', N'Na Phin', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341109', N'34130', N'นาสะไม', N'Na Samai', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341110', N'34130', N'โนนกุง', N'Non Kung', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341111', N'34130', N'ตระการ', N'Trakan', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341112', N'34130', N'ตากแดด', N'Tak Daet', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341113', N'34130', N'ไหล่ทุ่ง', N'Lai Thung', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341114', N'34130', N'เป้า', N'Pao', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341115', N'34130', N'เซเป็ด', N'Se Pet', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341116', N'34130', N'สะพือ', N'Saphue', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341117', N'34130', N'หนองเต่า', N'Nong Tao', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341118', N'34130', N'ถ้ำแข้', N'Tham Khae', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341119', N'34130', N'ท่าหลวง', N'Tha Luang', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341120', N'34130', N'ห้วยฝ้ายพัฒนา', N'Huai Fai Phatthana', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341121', N'34130', N'กุดยาลวน', N'Kut Ya Luan', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341122', N'34130', N'บ้านแดง', N'Ban Daeng', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341123', N'34130', N'คำเจริญ', N'Kham Charoen', N'3411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341201', N'34270', N'ข้าวปุ้น', N'Khao Pun', N'3412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341202', N'34270', N'โนนสวาง', N'Non Sawang', N'3412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341203', N'34270', N'แก่งเค็ง', N'Kaeng Kheng', N'3412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341204', N'34270', N'กาบิน', N'Ka Bin', N'3412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341205', N'34270', N'หนองทันน้ำ', N'Nong Than Nam', N'3412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341401', N'34140', N'ม่วงสามสิบ', N'Muang Sam Sip', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341402', N'34140', N'เหล่าบก', N'Lao Bok', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341403', N'34140', N'ดุมใหญ่', N'Dum Yai', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341404', N'34140', N'หนองช้างใหญ่', N'Nong Chang Yai', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341405', N'34140', N'หนองเมือง', N'Nong Mueang', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341406', N'34140', N'เตย', N'Toei', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341407', N'34140', N'ยางสักกระโพหลุ่ม', N'Yang Sak Krapho Lum', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341408', N'34140', N'หนองไข่นก', N'Nong Khai Nok', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341409', N'34140', N'หนองเหล่า', N'Nong Lao', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341410', N'34140', N'หนองฮาง', N'Nong Hang', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341411', N'34140', N'ยางโยภาพ', N'Yang Yo Phap', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341412', N'34140', N'ไผ่ใหญ่', N'Phai Yai', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341413', N'34140', N'นาเลิง', N'Na Loeng', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341414', N'34140', N'โพนแพง', N'Phon Phaeng', N'3414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341501', N'34190', N'วารินชำราบ', N'Warin Chamrap', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341502', N'34190', N'ธาตุ', N'That', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341504', N'34310', N'ท่าลาด', N'Tha Lat', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341505', N'34190', N'โนนโหนน', N'Non Non', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341507', N'34190', N'คูเมือง', N'Khu Mueang', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341508', N'34190', N'สระสมิง', N'Sa Saming', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341510', N'34190', N'คำน้ำแซบ', N'Kham Nam Saep', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341511', N'34310', N'บุ่งหวาย', N'Bung Wai', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341515', N'34190', N'คำขวาง', N'Kham Khwang', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341516', N'34190', N'โพธิ์ใหญ่', N'Pho Yai', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341518', N'34190', N'แสนสุข', N'Saen Suk', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341520', N'34190', N'หนองกินเพล', N'Nong Kin Phen', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341521', N'34190', N'โนนผึ้ง', N'Non Phueng', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341522', N'34190', N'เมืองศรีไค', N'Mueang Si Khai', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341524', N'34310', N'ห้วยขะยุง', N'Huai Khayung', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341526', N'34190', N'บุ่งไหม', N'Bung Mai', N'3415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341901', N'34110', N'พิบูล', N'Phibun', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341902', N'34110', N'กุดชมภู', N'Kut Chomphu', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341904', N'34110', N'ดอนจิก', N'Don Chik', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341905', N'34110', N'ทรายมูล', N'Sai Mun', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341906', N'34110', N'นาโพธิ์', N'Na Pho', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341907', N'34110', N'โนนกลาง', N'Non Klang', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341909', N'34110', N'โพธิ์ไทร', N'Pho Sai', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341910', N'34110', N'โพธิ์ศรี', N'Pho Si', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341911', N'34110', N'ระเว', N'Rawe', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341912', N'34110', N'ไร่ใต้', N'Rai Tai', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341913', N'34110', N'หนองบัวฮี', N'Nong Bua Hi', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341914', N'34110', N'อ่างศิลา', N'Ang Sila', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341918', N'34110', N'โนนกาหลง', N'Non Kalong', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'341919', N'34110', N'บ้านแขม', N'Ban Khaem', N'3419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342001', N'34330', N'ตาลสุม', N'Tan Sum', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342002', N'34330', N'สำโรง', N'Samrong', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342003', N'34330', N'จิกเทิง', N'Chik Thoeng', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342004', N'34330', N'หนองกุง', N'Nong Kung', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342005', N'34330', N'นาคาย', N'Na Khai', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342006', N'34330', N'คำหว้า', N'Kham Wa', N'3420')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342101', N'34340', N'โพธิ์ไทร', N'Pho Sai', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342102', N'34340', N'ม่วงใหญ่', N'Muang Yai', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342103', N'34340', N'สำโรง', N'Samrong', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342104', N'34340', N'สองคอน', N'Song Khon', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342105', N'34340', N'สารภี', N'Saraphi', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342106', N'34340', N'เหล่างาม', N'Lao Ngam', N'3421')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342201', N'34360', N'สำโรง', N'Samrong', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342202', N'34360', N'โคกก่อง', N'Khok Kong', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342203', N'34360', N'หนองไฮ', N'Nong Hai', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342204', N'34360', N'ค้อน้อย', N'Kho Noi', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342205', N'34360', N'โนนกาเล็น', N'Non Ka Len', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342206', N'34360', N'โคกสว่าง', N'Khok Sawang', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342207', N'34360', N'โนนกลาง', N'Non Klang', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342208', N'34360', N'บอน', N'Bon', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342209', N'34360', N'ขามป้อม', N'Kham Pom', N'3422')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342401', N'34000', N'ดอนมดแดง', N'Don Mot Daeng', N'3424')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342402', N'34000', N'เหล่าแดง', N'Lao Daeng', N'3424')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342403', N'34000', N'ท่าเมือง', N'Tha Muaeng', N'3424')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342404', N'34000', N'คำไฮใหญ่', N'Kham Hai Yai', N'3424')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342501', N'34350', N'คันไร่', N'Khan Rai', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342502', N'34350', N'ช่องเม็ก', N'Chong Mek', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342503', N'34350', N'โนนก่อ', N'Lam Dom Noi', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342504', N'34350', N'นิคมสร้างตนเองลำโดมน้อย', N'Nikhom Sang Ton-eng', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342505', N'34350', N'ฝางคำ', N'Non Ko', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342506', N'34350', N'คำเขื่อนแก้ว', N'Kham Khuean Kaeo', N'3425')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342602', N'34160', N'หนองอ้ม', N'Nong Om', N'3426')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342603', N'34160', N'นาเกษม', N'Na Kasem', N'3426')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342604', N'34160', N'กุดเรือ', N'Kut Ruea', N'3426')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342605', N'34160', N'โคกชำแระ', N'Khok Chamrae', N'3426')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342606', N'34160', N'นาห่อม', N'Na Hom', N'3426')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342901', N'34160', N'นาเยีย', N'Na Yia', N'3429')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342902', N'34160', N'นาดี', N'Na Di', N'3429')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'342903', N'34160', N'นาเรือง', N'Na Rueang', N'3429')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343001', N'34170', N'นาตาล', N'Na Tan', N'3430')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343002', N'34170', N'พะลาน', N'Phalan', N'3430')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343003', N'34170', N'กองโพน', N'Kong Phon', N'3430')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343004', N'34170', N'พังเคน', N'Phang Khen', N'3430')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343101', N'34000', N'เหล่าเสือโก้ก', N'Nong Bok', N'3431')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343102', N'34000', N'โพนเมือง', N'Phaeng Yai', N'3431')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343103', N'34000', N'แพงใหญ่', N'Amphoe Lao Suea Kok', N'3431')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343104', N'34000', N'หนองบก', N'Phon Mueang', N'3431')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343201', N'34190', N'แก่งโดม', N'Kaeng Dom', N'3432')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343202', N'34190', N'ท่าช้าง', N'Tha Chang', N'3432')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343203', N'34190', N'บุ่งมะแลง', N'Bung Malaeng', N'3432')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343204', N'34190', N'สว่าง', N'Sawang', N'3432')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343301', N'34260', N'ตาเกา', N'Ta Kao', N'3433')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343302', N'34260', N'ไพบูลย์', N'Phaibun', N'3433')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343303', N'34260', N'ขี้เหล็ก', N'Khilek', N'3433')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'343304', N'34260', N'โคกสะอาด', N'Khok Sa-at', N'3433')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350101', N'35000', N'ในเมือง', N'Nai Mueang', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350102', N'35000', N'น้ำคำใหญ่', N'Nam Kham Yai', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350103', N'35000', N'ตาดทอง', N'Tat Thong', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350104', N'35000', N'สำราญ', N'Samran', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350105', N'35000', N'ค้อเหนือ', N'Kho Nuea', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350106', N'35000', N'ดู่ทุ่ง', N'Du Thung', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350107', N'35000', N'เดิด', N'Doet', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350108', N'35000', N'ขั้นไดใหญ่', N'Khan Dai Yai', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350109', N'35000', N'ทุ่งแต้', N'Thung Tae', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350110', N'35000', N'สิงห์', N'Sing', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350111', N'35000', N'นาสะไมย์', N'Na Samai', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350112', N'35000', N'เขื่องคำ', N'Khueang Kham', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350113', N'35000', N'หนองหิน', N'Nong Hin', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350114', N'35000', N'หนองคู', N'Nong Khu', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350115', N'35000', N'ขุมเงิน', N'Khum Ngoen', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350116', N'35000', N'ทุ่งนางโอก', N'Thung Nang Ok', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350117', N'35000', N'หนองเรือ', N'Nong Ruea', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350118', N'35000', N'หนองเป็ด', N'Nong Pet', N'3501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350201', N'35170', N'ทรายมูล', N'Sai Mun', N'3502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350202', N'35170', N'ดู่ลาด', N'Du Lat', N'3502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350203', N'35170', N'ดงมะไฟ', N'Dong Mafai', N'3502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350204', N'35170', N'นาเวียง', N'Na Wiang', N'3502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350205', N'35170', N'ไผ่', N'Phai', N'3502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350301', N'35140', N'กุดชุม', N'Kut Chum', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350302', N'35140', N'โนนเปือย', N'Non Pueai', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350303', N'35140', N'กำแมด', N'Kammaet', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350304', N'35140', N'นาโส่', N'Na So', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350305', N'35140', N'ห้วยแก้ง', N'Huai Kaeng', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350306', N'35140', N'หนองหมี', N'Nong Mi', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350307', N'35140', N'โพนงาม', N'Phon Ngam', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350308', N'35140', N'คำน้ำสร้าง', N'Kham Nam Sang', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350309', N'35140', N'หนองแหน', N'Nong Nae', N'3503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350401', N'35110', N'ลุมพุก', N'Lumphuk', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350402', N'35110', N'ย่อ', N'Yo', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350403', N'35110', N'สงเปือย', N'Song Pueai', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350404', N'35110', N'โพนทัน', N'Phon Than', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350405', N'35110', N'ทุ่งมน', N'Thung Mon', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350406', N'35180', N'นาคำ', N'Na Kham', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350407', N'35180', N'ดงแคนใหญ่', N'Dong Khaen Yai', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350408', N'35110', N'กู่จาน', N'Ku Chan', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350409', N'35180', N'นาแก', N'Na Kae', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350410', N'35110', N'กุดกุง', N'Kut Kung', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350411', N'35110', N'เหล่าไฮ', N'Lao Hai', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350412', N'35180', N'แคนน้อย', N'Khaen Noi', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350413', N'35110', N'ดงเจริญ', N'Dong Charoen', N'3504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350501', N'35150', N'โพธิ์ไทร', N'Pho Sai', N'3505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350502', N'35150', N'กระจาย', N'Krachai', N'3505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350503', N'35150', N'โคกนาโก', N'Khok Na Ko', N'3505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350504', N'35150', N'เชียงเพ็ง', N'Chiang Pheng', N'3505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350505', N'35150', N'ศรีฐาน', N'Si Than', N'3505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350601', N'35130', N'ฟ้าหยาด', N'Fa Yat', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350602', N'35130', N'หัวเมือง', N'Hua Mueang', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350603', N'35130', N'คูเมือง', N'Khu Mueang', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350604', N'35130', N'ผือฮี', N'Phue Hi', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350605', N'35130', N'บากเรือ', N'Bak Ruea', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350606', N'35130', N'ม่วง', N'Muang', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350607', N'35130', N'โนนทราย', N'Non Sai', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350608', N'35130', N'บึงแก', N'Bueng Kae', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350609', N'35130', N'พระเสาร์', N'Phra Sao', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350610', N'35130', N'สงยาง', N'Song Yang', N'3506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350701', N'35160', N'ฟ้าห่วน', N'Fa Huan', N'3507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350702', N'35160', N'กุดน้ำใส', N'Kut Nam Sai', N'3507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350703', N'35160', N'น้ำอ้อม', N'Nam Om', N'3507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350704', N'35160', N'ค้อวัง', N'Kho Wang', N'3507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350802', N'35120', N'บุ่งค้า', N'Bung Kha', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350803', N'35120', N'สวาท', N'Sawat', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350805', N'35120', N'ห้องแซง', N'Hong Saeng', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350806', N'35120', N'สามัคคี', N'Samakkhi', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350807', N'35120', N'กุดเชียงหมี', N'Kut Chiang Mi', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350810', N'35120', N'สามแยก', N'Sam Yaek', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350811', N'35120', N'กุดแห่', N'Kut Hae', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350812', N'35120', N'โคกสำราญ', N'Khok Samran', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350813', N'35120', N'สร้างมิ่ง', N'Sang Ming', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350814', N'35120', N'ศรีแก้ว', N'Si Kaeo', N'3508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350901', N'35120', N'ไทยเจริญ', N'Thai Charoen', N'3509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350902', N'35120', N'น้ำคำ', N'Nam Kham', N'3509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350903', N'35120', N'ส้มผ่อ', N'Som Pho', N'3509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350904', N'35120', N'คำเตย', N'Kham Toei', N'3509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'350905', N'35120', N'คำไผ่', N'Kham Phai', N'3509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360101', N'36000', N'ในเมือง', N'Nai Mueang', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360102', N'36000', N'รอบเมือง', N'Rop Mueang', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360103', N'36000', N'โพนทอง', N'Phon Thong', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360104', N'36000', N'นาฝาย', N'Na Fai', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360105', N'36240', N'บ้านค่าย', N'Ban Khai', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360106', N'36000', N'กุดตุ้ม', N'Kut Tum', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360107', N'36000', N'ชีลอง', N'Chi Long', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360108', N'36000', N'บ้านเล่า', N'Ban Lao', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360109', N'36000', N'นาเสียว', N'Na Siao', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360110', N'36000', N'หนองนาแซง', N'Nong Na Saeng', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360111', N'36000', N'ลาดใหญ่', N'Lat Yai', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360112', N'36240', N'หนองไผ่', N'Nong Phai', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360113', N'36000', N'ท่าหินโงม', N'Tha Hin Ngom', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360114', N'36000', N'ห้วยต้อน', N'Huai Ton', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360115', N'36000', N'ห้วยบง', N'Huai Bong', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360116', N'36240', N'โนนสำราญ', N'Non Samran', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360117', N'36000', N'โคกสูง', N'Khok Sung', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360118', N'36000', N'บุ่งคล้า', N'Bung Khla', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360119', N'36000', N'ซับสีทอง', N'Sap Si Thong', N'3601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360201', N'36170', N'บ้านเขว้า', N'Ban Khwao', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360202', N'36170', N'ตลาดแร้ง', N'Talat Raeng', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360203', N'36170', N'ลุ่มลำชี', N'Lum Lam Chi', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360204', N'36170', N'ชีบน', N'Chi Bon', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360205', N'36170', N'ภูแลนคา', N'Phu Laen Kha', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360206', N'36170', N'โนนแดง', N'Non Daeng', N'3602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360301', N'36140', N'คอนสวรรค์', N'Khon Sawan', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360302', N'36140', N'ยางหวาย', N'Yang Wai', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360303', N'36140', N'ช่องสามหมอ', N'Chong Sam Mo', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360304', N'36140', N'โนนสะอาด', N'Non Sa-at', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360305', N'36140', N'ห้วยไร่', N'Huai Rai', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360306', N'36140', N'บ้านโสก', N'Ban Sok', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360307', N'36140', N'โคกมั่งงอย', N'Khok Mang Ngoi', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360308', N'36140', N'หนองขาม', N'Nong Kham', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360309', N'36140', N'ศรีสำราญ', N'Si Samran', N'3603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360401', N'36120', N'บ้านยาง', N'Ban Yang', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360402', N'36120', N'บ้านหัน', N'Ban Han', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360403', N'36120', N'บ้านเดื่อ', N'Ban Duea', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360404', N'36120', N'บ้านเป้า', N'Ban Pao', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360405', N'36120', N'กุดเลาะ', N'Kut Lo', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360406', N'36120', N'โนนกอก', N'Non Kok', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360407', N'36120', N'สระโพนทอง', N'Sa Phon Thong', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360408', N'36120', N'หนองข่า', N'Nong Kha', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360409', N'36120', N'หนองโพนงาม', N'Nong Phon Ngam', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360410', N'36120', N'บ้านบัว', N'Ban Bua', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360412', N'36120', N'โนนทอง', N'Non Thong', N'3604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360501', N'36210', N'หนองบัวแดง', N'Nong Bua Daeng', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360502', N'36210', N'กุดชุมแสง', N'Kut Chum Saeng', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360503', N'36210', N'ถ้ำวัวแดง', N'Tham Wua Daeng', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360504', N'36210', N'นางแดด', N'Nang Daet', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360507', N'36210', N'หนองแวง', N'Nong Waeng', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360508', N'36210', N'คูเมือง', N'Khu Mueang', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360509', N'36210', N'ท่าใหญ่', N'Tha Yai', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360511', N'36210', N'วังชมภู', N'Wang Chomphu', N'3605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360601', N'36130', N'บ้านกอก', N'Ban Kok', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360602', N'36130', N'หนองบัวบาน', N'Nong Bua Ban', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360603', N'36130', N'บ้านขาม', N'Ban Kham', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360605', N'36130', N'กุดน้ำใส', N'Kut Nam Sai', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360606', N'36130', N'หนองโดน', N'Nong Don', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360607', N'36130', N'ละหาน', N'Lahan', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360610', N'36130', N'หนองบัวใหญ่', N'Nong Bua Yai', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360611', N'36220', N'หนองบัวโคก', N'Nong Bua Khok', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360613', N'36130', N'ส้มป่อย', N'Som Poi', N'3606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360701', N'36160', N'บ้านชวน', N'Ban Chuan', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360702', N'36160', N'บ้านเพชร', N'Ban Phet', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360703', N'36220', N'บ้านตาล', N'Ban Tan', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360704', N'36220', N'หัวทะเล', N'Hua Thale', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360705', N'36160', N'โคกเริงรมย์', N'Khok Roeng Rom', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360706', N'36160', N'เกาะมะนาว', N'Ko Manao', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360707', N'36160', N'โคกเพชรพัฒนา', N'Khok Phet Phatthana', N'3607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360801', N'36250', N'หนองบัวระเหว', N'Nong Bua Rawe', N'3608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360802', N'36250', N'วังตะเฆ่', N'Wang Takhe', N'3608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360803', N'36250', N'ห้วยแย้', N'Huai Yae', N'3608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360804', N'36250', N'โคกสะอาด', N'Khok Sa-at', N'3608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360805', N'36250', N'โสกปลาดุก', N'Sok Pla Duk', N'3608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360901', N'36230', N'วะตะแบก', N'Wa Tabaek', N'3609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360902', N'36230', N'ห้วยยายจิ๋ว', N'Huai Yai Chio', N'3609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360903', N'36230', N'นายางกลัก', N'Na yang Klak', N'3609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360904', N'36230', N'บ้านไร่', N'Ban Rai', N'3609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'360905', N'36230', N'โป่งนก', N'Pong Nok', N'3609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361001', N'36110', N'ผักปัง', N'Phak Pang', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361002', N'36110', N'กวางโจน', N'Kwang Chon', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361003', N'36110', N'หนองคอนไทย', N'Nong Khon Thai', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361004', N'36110', N'บ้านแก้ง', N'Ban Kaeng', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361005', N'36110', N'กุดยม', N'Kut Yom', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361006', N'36110', N'บ้านเพชร', N'Ban Phet', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361007', N'36110', N'โคกสะอาด', N'Khok Sa-at', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361008', N'36110', N'หนองตูม', N'Nong Tum', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361009', N'36110', N'โอโล', N'Olo', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361010', N'36110', N'ธาตุทอง', N'That Thong', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361011', N'36110', N'บ้านดอน', N'Ban Don', N'3610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361101', N'36190', N'บ้านแท่น', N'Ban Thaen', N'3611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361102', N'36190', N'สามสวน', N'Sam Suan', N'3611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361103', N'36190', N'สระพัง', N'Sa Phang', N'3611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361104', N'36190', N'บ้านเต่า', N'Ban Tao', N'3611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361105', N'36190', N'หนองคู', N'Nong Khu', N'3611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361201', N'36150', N'ช่องสามหมอ', N'Chong Sam Mo', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361202', N'36150', N'หนองขาม', N'Nong Kham', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361203', N'36150', N'นาหนองทุ่ม', N'Na Nong Thum', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361204', N'36150', N'บ้านแก้ง', N'Ban Kaeng', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361205', N'36150', N'หนองสังข์', N'Nong Sang', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361206', N'36150', N'หลุบคา', N'Lup Kha', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361207', N'36150', N'โคกกุง', N'Khok Kung', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361208', N'36150', N'เก่าย่าดี', N'Kao Ya Di', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361209', N'36150', N'ท่ามะไฟหวาน', N'Tha Mafai Wan', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361210', N'36150', N'หนองไผ่', N'Nong Phai', N'3612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361301', N'36180', N'คอนสาร', N'Khon San', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361302', N'36180', N'ทุ่งพระ', N'Thung Phra', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361303', N'36180', N'โนนคูณ', N'Non Khun', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361304', N'36180', N'ห้วยยาง', N'Huai Yang', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361305', N'36180', N'ทุ่งลุยลาย', N'Thung Luilai', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361306', N'36180', N'ดงบัง', N'Dong Bang', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361307', N'36180', N'ทุ่งนาเลา', N'Thung Na Lao', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361308', N'36180', N'ดงกลาง', N'Dong Klang', N'3613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361401', N'36260', N'บ้านเจียง', N'Ban Chiang', N'3614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361402', N'36260', N'เจาทอง', N'Chao Thong', N'3614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361403', N'36260', N'วังทอง', N'Wang Thong', N'3614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361404', N'36260', N'แหลมทอง', N'Laem Thong', N'3614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361501', N'36130', N'หนองฉิม', N'Nong Chim', N'3615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361502', N'36130', N'ตาเนิน', N'Ta Noen', N'3615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361503', N'36130', N'กะฮาด', N'Kahat', N'3615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361504', N'36130', N'รังงาม', N'Rang Ngam', N'3615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361601', N'36130', N'ซับใหญ่', N'Sap Yai', N'3616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361602', N'36130', N'ท่ากูบ', N'Tha Kup', N'3616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'361603', N'36130', N'ตะโกทอง', N'Tako Thong', N'3616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370101', N'37000', N'บุ่ง', N'Bung', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370102', N'37000', N'ไก่คำ', N'Kai Kham', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370103', N'37000', N'นาจิก', N'Na Chik', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370104', N'37000', N'ปลาค้าว', N'Pla Khao', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370105', N'37000', N'เหล่าพรวน', N'Lao Phruan', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370106', N'37000', N'สร้างนกทา', N'Sang Nok Tha', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370107', N'37000', N'คึมใหญ่', N'Khuem Yai', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370108', N'37000', N'นาผือ', N'Na Phue', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370109', N'37000', N'น้ำปลีก', N'Nam Plik', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370110', N'37000', N'นาวัง', N'Na Wang', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370111', N'37000', N'นาหมอม้า', N'Na Mo Ma', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370112', N'37000', N'โนนโพธิ์', N'Non Pho', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370113', N'37000', N'โนนหนามแท่ง', N'Non Nam Thaeng', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370114', N'37000', N'ห้วยไร่', N'Huai Rai', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370115', N'37000', N'หนองมะแซว', N'Nong Masaeo', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370116', N'37000', N'กุดปลาดุก', N'Kut Pla Duk', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370117', N'37000', N'ดอนเมย', N'Don Moei', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370118', N'37000', N'นายม', N'Na Yom', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370119', N'37000', N'นาแต้', N'Na Tae', N'3701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370201', N'37210', N'ชานุมาน', N'Chanuman', N'3702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370202', N'37210', N'โคกสาร', N'Khok San', N'3702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370203', N'37210', N'คำเขื่อนแก้ว', N'Kham Khuean Kaeo', N'3702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370204', N'37210', N'โคกก่ง', N'Khok Kong', N'3702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370205', N'37210', N'ป่าก่อ', N'Pa Ko', N'3702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370301', N'37110', N'หนองข่า', N'Nong Kha', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370302', N'37110', N'คำโพน', N'Kham Phon', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370303', N'37110', N'นาหว้า', N'Na Wa', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370304', N'37110', N'ลือ', N'Lue', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370305', N'37110', N'ห้วย', N'Huai', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370306', N'37110', N'โนนงาม', N'Non Ngam', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370307', N'37110', N'นาป่าแซง', N'Na Pa Saeng', N'3703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370401', N'37180', N'พนา', N'Phana', N'3704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370402', N'37180', N'จานลาน', N'Chan Lan', N'3704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370403', N'37180', N'ไม้กลอน', N'Mai Klon', N'3704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370404', N'37180', N'พระเหลา', N'Phra Lao', N'3704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370501', N'37290', N'เสนางคนิคม', N'Senangkhanikhom', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370502', N'37290', N'โพนทอง', N'Phon Thong', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370503', N'37290', N'ไร่สีสุก', N'Rai Si Suk', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370504', N'37290', N'นาเวียง', N'Na Wiang', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370505', N'37290', N'หนองไฮ', N'Nong Hai', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370506', N'37290', N'หนองสามสี', N'Nong Sam Si', N'3705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370601', N'37240', N'หัวตะพาน', N'Hua Taphan', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370602', N'37240', N'คำพระ', N'Kham Phra', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370603', N'37240', N'เค็งใหญ่', N'Kheng Yai', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370604', N'37240', N'หนองแก้ว', N'Nong Kaeo', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370605', N'37240', N'โพนเมืองน้อย', N'Phon Mueang Noi', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370606', N'37240', N'สร้างถ่อน้อย', N'Sang Tho Noi', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370607', N'37240', N'จิกดู่', N'Chik Du', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370608', N'37240', N'รัตนวารี', N'Rattanawari', N'3706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370701', N'37120', N'อำนาจ', N'amnat', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370702', N'37120', N'ดงมะยาง', N'Dong Mayang', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370703', N'37120', N'เปือย', N'Pueai', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370704', N'37120', N'ดงบัง', N'Dong Bang', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370705', N'37120', N'ไร่ขี', N'Rai Khi', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370706', N'37120', N'แมด', N'Maet', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'370707', N'37120', N'โคกกลาง', N'Khok Klang', N'3707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380101', N'38000', N'บึงกาฬ', N'Bueng Kan', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380102', N'38000', N'โนนสมบูรณ์', N'Non Sombun', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380103', N'38000', N'โนนสว่าง', N'Non Sawang', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380104', N'38000', N'หอคำ', N'Ho Kham', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380105', N'38000', N'หนองเลิง', N'Nong Loeng', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380106', N'38000', N'โคกก่อง', N'Khok Kong', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380107', N'38000', N'นาสวรรค์', N'Na Sawan', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380108', N'38000', N'ไคสี', N'Khai Si', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380109', N'38000', N'ชัยพร', N'Chaiyaphon', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380110', N'38000', N'วิศิษฐ์', N'Wisit', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380111', N'38000', N'คำนาดี', N'Kham Na Di', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380112', N'38000', N'โป่งเปือย', N'Pong Pueai', N'3801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380201', N'38180', N'ศรีชมภู', N'Si Chomphu', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380202', N'38180', N'ดอนหญ้านาง', N'Don Ya Nang', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380203', N'38180', N'พรเจริญ', N'Phon Charoen', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380204', N'38180', N'หนองหัวช้าง', N'Nong Hua Chang', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380205', N'38180', N'วังชมภู', N'Wang Chomphu', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380206', N'38180', N'ป่าแฝก', N'Pa Faek', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380207', N'38180', N'ศรีสำราญ', N'Si Samran', N'3802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380301', N'38170', N'โซ่', N'So', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380302', N'38170', N'หนองพันทา', N'Nong Phan Tha', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380303', N'38170', N'ศรีชมภู', N'Si Chomphu', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380304', N'38170', N'คำแก้ว', N'Kham Kaeo', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380305', N'38170', N'บัวตูม', N'Bua Tum', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380306', N'38170', N'ถ้ำเจริญ', N'Tham Charoen', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380307', N'38170', N'เหล่าทอง', N'Lao Thong', N'3803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380401', N'38150', N'เซกา', N'Seka', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380402', N'38150', N'ซาง', N'Sang', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380403', N'38150', N'ท่ากกแดง', N'Tha Kok Daeng', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380404', N'38150', N'บ้านต้อง', N'Ban Tong', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380405', N'38150', N'ป่งไฮ', N'Pong Hai', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380406', N'38150', N'น้ำจั้น', N'Nam Chan', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380407', N'38150', N'ท่าสะอาด', N'Tha Sa-at', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380408', N'38150', N'หนองทุ่ม', N'Nong Thum', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380409', N'38150', N'โสกก่าม', N'Sok Kam', N'3804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380501', N'38190', N'ปากคาด', N'Pak Khat', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380502', N'38190', N'หนองยอง', N'Nong Yong', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380503', N'38190', N'นากั้ง', N'Na Kang', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380504', N'38190', N'โนนศิลา', N'Non Sila', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380505', N'38190', N'สมสนุก', N'Som Sanuk', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380506', N'38190', N'นาดง', N'Na Dong', N'3805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380601', N'38220', N'บึงโขงหลง', N'Bueng Khong Long', N'3806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380602', N'38220', N'โพธิ์หมากแข้ง', N'Pho Mak Khaeng', N'3806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380603', N'38220', N'ดงบัง', N'Dong Bang', N'3806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380604', N'38220', N'ท่าดอกคำ', N'Tha Dok Kham', N'3806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380701', N'38210', N'ศรีวิไล', N'Si Wilai', N'3807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380702', N'38210', N'ชุมภูพร', N'Chumphu Phon', N'3807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380703', N'38210', N'นาแสง', N'Na Saeng', N'3807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380704', N'38210', N'นาสะแบง', N'Na Sabaeng', N'3807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380705', N'38210', N'นาสิงห์', N'Na Sing', N'3807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380801', N'38000', N'บุ่งคล้า', N'Bung Khla', N'3808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380802', N'38000', N'หนองเดิ่น', N'Nong Doen', N'3808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'380803', N'38000', N'โคกกว้าง', N'Khok Kwang', N'3808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390101', N'39000', N'หนองบัว', N'Nong Bua', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390102', N'39000', N'หนองภัยศูนย์', N'Nong Phai Sun', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390103', N'39000', N'โพธิ์ชัย', N'Pho Chai', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390104', N'39000', N'หนองสวรรค์', N'Nong Sawan', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390105', N'39000', N'หัวนา', N'Hua Na', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390106', N'39000', N'บ้านขาม', N'Ban Kham', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390107', N'39000', N'นามะเฟือง', N'Na Mafueang', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390108', N'39000', N'บ้านพร้าว', N'Ban Phrao', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390109', N'39000', N'โนนขมิ้น', N'Non Khamin', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390110', N'39000', N'ลำภู', N'Lumphu', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390111', N'39000', N'กุดจิก', N'Kut Chik', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390112', N'39000', N'โนนทัน', N'Non Than', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390113', N'39000', N'นาคำไฮ', N'Na Kham Hai', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390114', N'39000', N'ป่าไม้งาม', N'Pa Mai Ngam', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390115', N'39000', N'หนองหว้า', N'Nong Wa', N'3901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390201', N'39170', N'นากลาง', N'Na Klang', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390202', N'39170', N'ด่านช้าง', N'Dan Chang', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390205', N'39350', N'กุดดินจี่', N'Kut Din Chi', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390206', N'39170', N'ฝั่งแดง', N'Fang Daeng', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390207', N'39350', N'เก่ากลอย', N'Kao Kloi', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390209', N'39170', N'โนนเมือง', N'Non Mueang', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390210', N'39170', N'อุทัยสวรรค์', N'Uthai Sawan', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390211', N'39350', N'ดงสวรรค์', N'Dong Sawan', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390213', N'39170', N'กุดแห่', N'Kut Hae', N'3902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390301', N'39140', N'โนนสัง', N'Non Sang', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390302', N'39140', N'บ้านถิ่น', N'Ban Thin', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390303', N'39140', N'หนองเรือ', N'Nong Ruea', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390304', N'39140', N'กุดดู่', N'Kut Du', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390305', N'39140', N'บ้านค้อ', N'Ban Kho', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390306', N'39140', N'โนนเมือง', N'Non Mueang', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390307', N'39140', N'โคกใหญ่', N'Khok Yai', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390308', N'39140', N'โคกม่วง', N'Khok Muang', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390309', N'39140', N'นิคมพัฒนา', N'Nikhom Phatthana', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390310', N'39140', N'ปางกู่', N'Pang Ku', N'3903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390401', N'39180', N'เมืองใหม่', N'Mueang Mai', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390402', N'39180', N'ศรีบุญเรือง', N'Si Bun Rueang', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390403', N'39180', N'หนองบัวใต้', N'Nong Bua Tai', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390404', N'39180', N'กุดสะเทียน', N'Kut Sathian', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390405', N'39180', N'นากอก', N'Na Kok', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390406', N'39180', N'โนนสะอาด', N'Non Sa-at', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390407', N'39180', N'ยางหล่อ', N'Yang Lo', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390408', N'39180', N'โนนม่วง', N'Non Muang', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390409', N'39180', N'หนองกุงแก้ว', N'Nong Kung Kaeo', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390410', N'39180', N'หนองแก', N'Nong Kae', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390411', N'39180', N'ทรายทอง', N'Sai Thong', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390412', N'39180', N'หันนางาม', N'Han Na Ngam', N'3904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390501', N'39270', N'นาสี', N'Na Si', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390502', N'39270', N'บ้านโคก', N'Ban Khok', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390503', N'39270', N'นาดี', N'Na Di', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390504', N'39270', N'นาด่าน', N'Na Dan', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390505', N'39270', N'ดงมะไฟ', N'Dong Mafai', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390506', N'39270', N'สุวรรณคูหา', N'Suwannakhuha', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390507', N'39270', N'บุญทัน', N'Bun Than', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390508', N'39270', N'กุดผึ้ง', N'Kut Phueng', N'3905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390601', N'39170', N'นาเหล่า', N'Na Lao', N'3906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390602', N'39170', N'นาแก', N'Na Kae', N'3906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390603', N'39170', N'วังทอง', N'Wang Thong', N'3906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390604', N'39170', N'วังปลาป้อม', N'Wang Pla Pom', N'3906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'390605', N'39170', N'เทพคีรี', N'Thep Khiri', N'3906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400101', N'40000', N'ในเมือง', N'Nai Mueang', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400102', N'40000', N'สำราญ', N'Samran', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400103', N'40000', N'โคกสี', N'Khok Si', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400104', N'40260', N'ท่าพระ', N'Tha Phra', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400105', N'40000', N'บ้านทุ่ม', N'Ban Thum', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400106', N'40000', N'เมืองเก่า', N'Mueang Kao', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400107', N'40000', N'พระลับ', N'Phra Lap', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400108', N'40000', N'สาวะถี', N'Sawathi', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400109', N'40000', N'บ้านหว้า', N'Ban Wa', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400110', N'40000', N'บ้านค้อ', N'Ban Kho', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400111', N'40000', N'แดงใหญ่', N'Daeng Yai', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400112', N'40000', N'ดอนช้าง', N'Don Chang', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400113', N'40260', N'ดอนหัน', N'Don Han', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400114', N'40000', N'ศิลา', N'Sila', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400115', N'40000', N'บ้านเป็ด', N'Ban Pet', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400116', N'40000', N'หนองตูม', N'Nong Tum', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400117', N'40000', N'บึงเนียม', N'Bueng Niam', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400118', N'40000', N'โนนท่อน', N'Non Thon', N'4001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400201', N'40270', N'หนองบัว', N'Nong Bua', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400202', N'40270', N'ป่าหวายนั่ง', N'Pa Wai Nang', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400203', N'40270', N'โนนฆ้อง', N'Non Khong', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400204', N'40270', N'บ้านเหล่า', N'Ban Lao', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400205', N'40270', N'ป่ามะนาว', N'Pa Manao', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400206', N'40270', N'บ้านฝาง', N'Ban Fang', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400207', N'40270', N'โคกงาม', N'Khok Ngam', N'4002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400301', N'40320', N'พระยืน', N'Phra Yuen', N'4003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400302', N'40320', N'พระบุ', N'Phra Bu', N'4003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400303', N'40320', N'บ้านโต้น', N'Ban Ton', N'4003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400304', N'40320', N'หนองแวง', N'Nong Waeng', N'4003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400305', N'40320', N'ขามป้อม', N'Kham Pom', N'4003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400401', N'40210', N'หนองเรือ', N'Nong Ruea', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400402', N'40210', N'บ้านเม็ง', N'Ban Meng', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400403', N'40240', N'บ้านกง', N'Ban Kong', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400404', N'40240', N'ยางคำ', N'Yang Kham', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400405', N'40240', N'จระเข้', N'Chorakhe', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400406', N'40210', N'โนนทอง', N'Non Thong', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400407', N'40210', N'กุดกว้าง', N'Kut Kwang', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400408', N'40210', N'โนนทัน', N'Non Than', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400409', N'40210', N'โนนสะอาด', N'Non Sa-at', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400410', N'40240', N'บ้านผือ', N'Ban Phue', N'4004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400501', N'40130', N'ชุมแพ', N'Chum Phae', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400502', N'40290', N'โนนหัน', N'Non Han', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400503', N'40290', N'นาหนองทุ่ม', N'Na Nong Thum', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400504', N'40130', N'โนนอุดม', N'Non Udom', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400505', N'40130', N'ขัวเรียง', N'Khua Riang', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400506', N'40130', N'หนองไผ่', N'Nong Phai', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400507', N'40130', N'ไชยสอ', N'Chai So', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400508', N'40130', N'วังหินลาด', N'Wang Hin Lat', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400509', N'40130', N'นาเพียง', N'Na Phiang', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400510', N'40290', N'หนองเขียด', N'Nong Khiat', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400511', N'40130', N'หนองเสาเล้า', N'Nong Sao Lao', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400512', N'40290', N'โนนสะอาด', N'Non Sa-at', N'4005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400601', N'40220', N'สีชมพู', N'Si Chomphu', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400602', N'40220', N'ศรีสุข', N'Si Suk', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400603', N'40220', N'นาจาน', N'Na Chan', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400604', N'40220', N'วังเพิ่ม', N'Wang Phoem', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400605', N'40220', N'ซำยาง', N'Sam Yang', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400606', N'40220', N'หนองแดง', N'Nong Daeng', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400607', N'40220', N'ดงลาน', N'Dong Lan', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400608', N'40220', N'บริบูรณ์', N'Boribun', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400609', N'40220', N'บ้านใหม่', N'Ban Mai', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400610', N'40220', N'ภูห่าน', N'Phu Han', N'4006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400701', N'40140', N'น้ำพอง', N'Nam Phong', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400702', N'40140', N'วังชัย', N'Wang Chai', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400703', N'40140', N'หนองกุง', N'Nong Kung', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400704', N'40140', N'บัวใหญ่', N'Bua Yai', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400705', N'40310', N'สะอาด', N'Sa-at', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400706', N'40310', N'ม่วงหวาน', N'Muang Wan', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400707', N'40140', N'บ้านขาม', N'Ban Kham', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400708', N'40140', N'บัวเงิน', N'Bua Ngoen', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400709', N'40140', N'ทรายมูล', N'Sai Mun', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400710', N'40140', N'ท่ากระเสริม', N'Tha Krasoem', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400711', N'40140', N'พังทุย', N'Phang Thui', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400712', N'40310', N'กุดน้ำใส', N'Kut Nam Sai', N'4007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400801', N'40250', N'โคกสูง', N'Khok Sung', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400802', N'40250', N'บ้านดง', N'Ban Dong', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400803', N'40250', N'เขื่อนอุบลรัตน์', N'Khuean Ubolratana', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400804', N'40250', N'นาคำ', N'Na Kham', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400805', N'40250', N'ศรีสุขสำราญ', N'Si Suk Samran', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400806', N'40250', N'ทุ่งโป่ง', N'Thung Pong', N'4008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400901', N'40170', N'หนองโก', N'Nong Ko', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400902', N'40170', N'หนองกุงใหญ่', N'Nong Kung Yai', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400905', N'40170', N'ห้วยโจด', N'Huai Chot', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400906', N'40170', N'ห้วยยาง', N'Huai Yang', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400907', N'40170', N'บ้านฝาง', N'Ban Fang', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400909', N'40170', N'ดูนสาด', N'Dun Sat', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400910', N'40170', N'หนองโน', N'Nong No', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400911', N'40170', N'น้ำอ้อม', N'Nam Om', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'400912', N'40170', N'หัวนาคำ', N'Hua Na Kham', N'4009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401001', N'40110', N'บ้านไผ่', N'Ban Phai', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401002', N'40110', N'ในเมือง', N'Nai Mueang', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401005', N'40110', N'เมืองเพีย', N'Mueang Phia', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401009', N'40110', N'บ้านลาน', N'Ban Lan', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401010', N'40110', N'แคนเหนือ', N'Khaen Nuea', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401011', N'40110', N'ภูเหล็ก', N'Phu Lek', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401013', N'40110', N'ป่าปอ', N'Pa Po', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401014', N'40110', N'หินตั้ง', N'Hin Tang', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401016', N'40110', N'หนองน้ำใส', N'Nong Nam Sai', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401017', N'40110', N'หัวหนอง', N'Hua Nong', N'4010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401101', N'40340', N'เปือยน้อย', N'Pueai Noi', N'4011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401102', N'40340', N'วังม่วง', N'Wang Muang', N'4011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401103', N'40340', N'ขามป้อม', N'Kham Pom', N'4011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401104', N'40340', N'สระแก้ว', N'Sa Kaeo', N'4011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401201', N'40120', N'เมืองพล', N'Mueang Phon', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401203', N'40120', N'โจดหนองแก', N'Chot Nong Kae', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401204', N'40120', N'เก่างิ้ว', N'Kao Ngio', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401205', N'40120', N'หนองมะเขือ', N'Nong Makhuea', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401206', N'40120', N'หนองแวงโสกพระ', N'Nong Waeng Sok Phra', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401207', N'40120', N'เพ็กใหญ่', N'Phek Yai', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401208', N'40120', N'โคกสง่า', N'Khok Sa-nga', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401209', N'40120', N'หนองแวงนางเบ้า', N'Nong Waeng Nang Bao', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401210', N'40120', N'ลอมคอม', N'Lom Khom', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401211', N'40120', N'โนนข่า', N'Non Kha', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401212', N'40120', N'โสกนกเต็น', N'Sok Nok Ten', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401213', N'40120', N'หัวทุ่ง', N'Hua Thung', N'4012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401301', N'40330', N'คอนฉิม', N'Khon Chim', N'4013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401302', N'40330', N'ใหม่นาเพียง', N'Mai Na Phiang', N'4013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401303', N'40330', N'โนนทอง', N'Non Thong', N'4013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401304', N'40330', N'แวงใหญ่', N'Waeng Yai', N'4013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401305', N'40330', N'โนนสะอาด', N'Non Sa-at', N'4013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401401', N'40230', N'แวงน้อย', N'Waeng Noi', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401402', N'40230', N'ก้านเหลือง', N'Kan Lueang', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401403', N'40230', N'ท่านางแนว', N'Tha Nang Naeo', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401404', N'40230', N'ละหานนา', N'Lahan Na', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401405', N'40230', N'ท่าวัด', N'Tha Wat', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401406', N'40230', N'ทางขวาง', N'Thang Khwang', N'4014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401501', N'40190', N'หนองสองห้อง', N'Nong Song Hong', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401502', N'40190', N'คึมชาด', N'Khuemchat', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401503', N'40190', N'โนนธาตุ', N'Non That', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401504', N'40190', N'ตะกั่วป่า', N'Takua Pa', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401505', N'40190', N'สำโรง', N'Samrong', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401506', N'40190', N'หนองเม็ก', N'Nong Mek', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401507', N'40190', N'ดอนดู่', N'Don Du', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401508', N'40190', N'ดงเค็ง', N'Dong Kheng', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401509', N'40190', N'หันโจด', N'Han Chot', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401510', N'40190', N'ดอนดั่ง', N'Don Dang', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401511', N'40190', N'วังหิน', N'Wang Hin', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401512', N'40190', N'หนองไผ่ล้อม', N'Nong Phai Lom', N'4015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401601', N'40150', N'บ้านเรือ', N'Ban Ruea', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401604', N'40150', N'หว้าทอง', N'Wa Thong', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401605', N'40150', N'กุดขอนแก่น', N'Kut Khon Kaen', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401606', N'40150', N'นาชุมแสง', N'Na Chum Saeng', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401607', N'40150', N'นาหว้า', N'Na Wa', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401610', N'40150', N'หนองกุงธนสาร', N'Nong Kung Thanasan', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401612', N'40150', N'หนองกุงเซิน', N'Nong Kung Soen', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401613', N'40150', N'สงเปือย', N'Song Pueai', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401614', N'40150', N'ทุ่งชมพู', N'Thung Chomphu', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401616', N'40150', N'ดินดำ', N'Din Dam', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401617', N'40150', N'ภูเวียง', N'Phu Wiang', N'4016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401701', N'40160', N'กุดเค้า', N'Kut Khao', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401702', N'40160', N'สวนหม่อน', N'Suan Mon', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401703', N'40160', N'หนองแปน', N'Nong Paen', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401704', N'40160', N'โพนเพ็ก', N'Phon Phek', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401705', N'40160', N'คำแคน', N'Kham Khaen', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401706', N'40160', N'นาข่า', N'Na Kha', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401707', N'40160', N'นางาม', N'Na Ngam', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401710', N'40160', N'ท่าศาลา', N'Tha Sala', N'4017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401801', N'40180', N'ชนบท', N'Chonnabot', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401802', N'40180', N'กุดเพียขอม', N'Kut Phia Khom', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401803', N'40180', N'วังแสง', N'Wang Saeng', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401804', N'40180', N'ห้วยแก', N'Huai Kae', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401805', N'40180', N'บ้านแท่น', N'Ban Thaen', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401806', N'40180', N'ศรีบุญเรือง', N'Si Bun Rueang', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401807', N'40180', N'โนนพะยอม', N'Non Phayom', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401808', N'40180', N'ปอแดง', N'Po Daeng', N'4018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401901', N'40280', N'เขาสวนกวาง', N'Khao Suan Kwang', N'4019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401902', N'40280', N'ดงเมืองแอม', N'Dong Mueang Aem', N'4019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401903', N'40280', N'นางิ้ว', N'Na Ngio', N'4019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401904', N'40280', N'โนนสมบูรณ์', N'Non Sombun', N'4019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'401905', N'40280', N'คำม่วง', N'Kham Muang', N'4019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402001', N'40350', N'โนนคอม', N'Non Khom', N'4020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402002', N'40350', N'นาฝาย', N'Na Fai', N'4020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402003', N'40350', N'ภูผาม่าน', N'Phu Pha Man', N'4020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402004', N'40350', N'วังสวาบ', N'Wang Sawap', N'4020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402005', N'40350', N'ห้วยม่วง', N'huai Muang', N'4020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402101', N'40170', N'กระนวน', N'Kranuan', N'4021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402102', N'40170', N'คำแมด', N'Kham Maet', N'4021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402103', N'40170', N'บ้านโนน', N'Ban Non', N'4021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402104', N'40170', N'คูคำ', N'Khu Kham', N'4021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402105', N'40170', N'ห้วยเตย', N'Huai Toei', N'4021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402201', N'40160', N'บ้านโคก', N'Ban Khok', N'4022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402202', N'40160', N'โพธิ์ไชย', N'Pho Chai', N'4022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402203', N'40160', N'ซับสมบูรณ์', N'Sap Sombun', N'4022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402204', N'40160', N'นาแพง', N'Na Phaeng', N'4022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402301', N'40150', N'กุดธาตุ', N'Kut That', N'4023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402302', N'40150', N'บ้านโคก', N'Ban Khok', N'4023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402303', N'40150', N'ขนวน', N'Khanuan', N'4023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402401', N'40110', N'บ้านแฮด', N'Ban Haet', N'4024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402402', N'40110', N'โคกสำราญ', N'Khok Samran', N'4024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402403', N'40110', N'โนนสมบูรณ์', N'Non Sombun', N'4024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402404', N'40110', N'หนองแซง', N'Nong Saeng', N'4024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402501', N'40110', N'โนนศิลา', N'Non Sila', N'4025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402502', N'40110', N'หนองปลาหมอ', N'Nong Pla Mo', N'4025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402503', N'40110', N'บ้านหัน', N'Ban Han', N'4025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402504', N'40110', N'เปือยใหญ่', N'Pueai Yai', N'4025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402505', N'40110', N'โนนแดง', N'Non Daeng', N'4025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402901', N'40150', N'ในเมือง', N'Nai Mueang', N'4026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402902', N'40150', N'เมืองเก่าพัฒนา', N'Mueang Kao Phatthana', N'4026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'402903', N'40150', N'เขาน้อย', N'Khao Noi', N'4026')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410101', N'41000', N'หมากแข้ง', N'Mak Khaeng', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410102', N'41000', N'นิคมสงเคราะห์', N'Nikhom Songkhro', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410103', N'41000', N'บ้านขาว', N'Ban Khao', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410104', N'41000', N'หนองบัว', N'Nong Bua', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410105', N'41000', N'บ้านตาด', N'Ban Tat', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410106', N'41330', N'โนนสูง', N'Non Sung', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410107', N'41000', N'หมูม่น', N'Mu Mon', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410108', N'41000', N'เชียงยืน', N'Chiang Yuen', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410109', N'41000', N'หนองนาคำ', N'Nong Na Kham', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410110', N'41000', N'กุดสระ', N'Kut Sa', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410111', N'41000', N'นาดี', N'Na Di', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410112', N'41000', N'บ้านเลื่อม', N'Ban Lueam', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410113', N'41000', N'เชียงพิณ', N'Chiang Phin', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410114', N'41000', N'สามพร้าว', N'Sam Phrao', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410115', N'41000', N'หนองไฮ', N'Nong Hai', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410116', N'41000', N'นาข่า', N'Na Kha', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410117', N'41000', N'บ้านจั่น', N'Ban Chan', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410118', N'41000', N'หนองขอนกว้าง', N'Nong Khon Kwang', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410119', N'41000', N'โคกสะอาด', N'Khok Sa-at', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410120', N'41000', N'นากว้าง', N'Na Kwang', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410121', N'41330', N'หนองไผ่', N'Nong Phai', N'4101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410201', N'41250', N'กุดจับ', N'Kut Chap', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410202', N'41250', N'ปะโค', N'Pa Kho', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410203', N'41250', N'ขอนยูง', N'Khon Yung', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410204', N'41250', N'เชียงเพ็ง', N'Chiang Pheng', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410205', N'41250', N'สร้างก่อ', N'Sang Ko', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410206', N'41250', N'เมืองเพีย', N'Mueang Phia', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410207', N'41250', N'ตาลเลียน', N'Tan Lian', N'4102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410301', N'41360', N'หมากหญ้า', N'Mak Ya', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410302', N'41220', N'หนองอ้อ', N'Nong O', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410303', N'41220', N'อูบมุง', N'Up Mung', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410304', N'41220', N'กุดหมากไฟ', N'Kut Mak Fai', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410305', N'41360', N'น้ำพ่น', N'Nam Phon', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410306', N'41360', N'หนองบัวบาน', N'Nong Bua Ban', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410307', N'41220', N'โนนหวาย', N'Non Wai', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410308', N'41360', N'หนองวัวซอ', N'Nong Wua So', N'4103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410401', N'41110', N'ตูมใต้', N'Tum Tai', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410402', N'41370', N'พันดอน', N'Phan Don', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410403', N'41110', N'เวียงคำ', N'Wiang Kham', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410404', N'41110', N'แชแล', N'Chaelae', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410406', N'41110', N'เชียงแหว', N'Chiang Wae', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410407', N'41110', N'ห้วยเกิ้ง', N'Huai Koeng', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410409', N'41370', N'เสอเพลอ', N'Soephloe', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410410', N'41110', N'สีออ', N'Si O', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410411', N'41370', N'ปะโค', N'Pakho', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410413', N'41370', N'ผาสุก', N'Pha Suk', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410414', N'41110', N'ท่าลี่', N'Tha Li', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410415', N'41110', N'กุมภวาปี', N'Kumphawapi', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410416', N'41110', N'หนองหว้า', N'Nong Wa', N'4104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410501', N'41240', N'โนนสะอาด', N'Non Sa-at', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410502', N'41240', N'บุ่งแก้ว', N'Bung Kaeo', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410503', N'41240', N'โพธิ์ศรีสำราญ', N'Pho Si Samran', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410504', N'41240', N'ทมนางาม', N'Thom Na Ngam', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410505', N'41240', N'หนองกุงศรี', N'Nong Kung Si', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410506', N'41240', N'โคกกลาง', N'Khok Klang', N'4105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410601', N'41130', N'หนองหาน', N'Nong Han', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410602', N'41130', N'หนองเม็ก', N'Nong Mek', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410605', N'41130', N'พังงู', N'Phang Ngu', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410606', N'41130', N'สะแบง', N'Sabaeng', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410607', N'41130', N'สร้อยพร้าว', N'Soi Phrao', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410609', N'41320', N'บ้านเชียง', N'Ban Chiang', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410610', N'41320', N'บ้านยา', N'Ban Ya', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410611', N'41130', N'โพนงาม', N'Phon Ngam', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410612', N'41130', N'ผักตบ', N'Phak Top', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410614', N'41130', N'หนองไผ่', N'Nong Phai', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410617', N'41130', N'ดอนหายโศก', N'Don Hai Sok', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410618', N'41320', N'หนองสระปลา', N'Nong Sa Pla', N'4106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410701', N'41310', N'ทุ่งฝน', N'Thung Fon', N'4107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410702', N'41310', N'ทุ่งใหญ่', N'Thung Yai', N'4107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410703', N'41310', N'นาชุมแสง', N'Na Chum Saeng', N'4107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410704', N'41310', N'นาทม', N'Na Thom', N'4107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410801', N'41290', N'ไชยวาน', N'Chai Wan', N'4108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410802', N'41290', N'หนองหลัก', N'Nong Lak', N'4108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410803', N'41290', N'คำเลาะ', N'Kham Lo', N'4108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410804', N'41290', N'โพนสูง', N'Phon Sung', N'4108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410901', N'41230', N'ศรีธาตุ', N'Si That', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410902', N'41230', N'จำปี', N'Champi', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410903', N'41230', N'บ้านโปร่ง', N'Ban Prong', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410904', N'41230', N'หัวนาคำ', N'Hua Na Kham', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410905', N'41230', N'หนองนกเขียน', N'Nong Nok Khian', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410906', N'41230', N'นายูง', N'Na Yung', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'410907', N'41230', N'ตาดทอง', N'Tat Thong', N'4109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411001', N'41280', N'หนองกุงทับม้า', N'Nong Kung Thap Ma', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411002', N'41280', N'หนองหญ้าไซ', N'Nong Ya Sai', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411003', N'41280', N'บะยาว', N'Ba Yao', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411004', N'41280', N'ผาสุก', N'Phasuk', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411005', N'41280', N'คำโคกสูง', N'Kham Khok Sung', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411006', N'41280', N'วังสามหมอ', N'Wang Sam Mo', N'4110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411101', N'41190', N'ศรีสุทโธ', N'Si Suttho', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411102', N'41190', N'บ้านดุง', N'Ban Dung', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411103', N'41190', N'ดงเย็น', N'Dong Yen', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411104', N'41190', N'โพนสูง', N'Phon Sung', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411105', N'41190', N'อ้อมกอ', N'Om Ko', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411106', N'41190', N'บ้านจันทน์', N'Ban Chan', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411107', N'41190', N'บ้านชัย', N'Ban Chai', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411108', N'41190', N'นาไหม', N'Na Mai', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411109', N'41190', N'ถ่อนนาลับ', N'Thon Na Lap', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411110', N'41190', N'วังทอง', N'Wang Thong', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411111', N'41190', N'บ้านม่วง', N'Ban Muang', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411112', N'41190', N'บ้านตาด', N'Ban Tat', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411113', N'41190', N'นาคำ', N'Na Kham', N'4111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411701', N'41160', N'บ้านผือ', N'Ban Phue', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411702', N'41160', N'หายโศก', N'Hai Sok', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411703', N'41160', N'เขือน้ำ', N'Khuea Nam', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411704', N'41160', N'คำบง', N'Kham Bong', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411705', N'41160', N'โนนทอง', N'Non Thong', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411706', N'41160', N'ข้าวสาร', N'Khao San', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411707', N'41160', N'จำปาโมง', N'Champa Mong', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411708', N'41160', N'กลางใหญ่', N'Klang Yai', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411709', N'41160', N'เมืองพาน', N'Mueang Phan', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411710', N'41160', N'คำด้วง', N'Kham Duang', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411711', N'41160', N'หนองหัวคู', N'Nong Hua Khu', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411712', N'41160', N'บ้านค้อ', N'Ban Kho', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411713', N'41160', N'หนองแวง', N'Nong Waeng', N'4117')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411801', N'41210', N'นางัว', N'Na Ngua', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411802', N'41210', N'น้ำโสม', N'Nam Som', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411805', N'41210', N'หนองแวง', N'Nong Waeng', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411806', N'41210', N'บ้านหยวก', N'Ban Yuak', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411807', N'41210', N'โสมเยี่ยม', N'Som Yiam', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411810', N'41210', N'ศรีสำราญ', N'Si Samran', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411812', N'41210', N'สามัคคี', N'Samakkhi', N'4118')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411901', N'41150', N'เพ็ญ', N'Phen', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411902', N'41150', N'บ้านธาตุ', N'Ban That', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411903', N'41150', N'นาพู่', N'Na Phu', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411904', N'41150', N'เชียงหวาง', N'Chiang Wang', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411905', N'41150', N'สุมเส้า', N'Sum Sao', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411906', N'41150', N'นาบัว', N'Na Bua', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411907', N'41150', N'บ้านเหล่า', N'Ban Lao', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411908', N'41150', N'จอมศรี', N'Chom Si', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411909', N'41150', N'เตาไห', N'Tao Hai', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411910', N'41150', N'โคกกลาง', N'Khok Klang', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'411911', N'41150', N'สร้างแป้น', N'Sang Paen', N'4119')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412001', N'41260', N'สร้างคอม', N'Sang Khom', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412002', N'41260', N'เชียงดา', N'Chiang Da', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412003', N'41260', N'บ้านยวด', N'Ban Yuat', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412004', N'41260', N'บ้านโคก', N'Ban Khok', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412005', N'41260', N'นาสะอาด', N'Na Sa-at', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412006', N'41260', N'บ้านหินโงม', N'Bang Hin Ngom', N'4120')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412101', N'41340', N'หนองแสง', N'Nong Saeng', N'4121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412102', N'41340', N'แสงสว่าง', N'Saeng Sawang', N'4121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412103', N'41340', N'นาดี', N'Na Di', N'4121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412104', N'41340', N'ทับกุง', N'Thap Kung', N'4121')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412201', N'41380', N'นายูง', N'Na Yung', N'4122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412202', N'41380', N'บ้านก้อง', N'Ban Kong', N'4122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412203', N'41380', N'นาแค', N'Na Khae', N'4122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412204', N'41380', N'โนนทอง', N'Non Thong', N'4122')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412301', N'41130', N'บ้านแดง', N'Ban Daeng', N'4123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412302', N'41130', N'นาทราย', N'Na Sai', N'4123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412303', N'41130', N'ดอนกลอย', N'Don Kloi', N'4123')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412401', N'41130', N'บ้านจีต', N'Ban Chit', N'4124')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412402', N'41130', N'โนนทองอินทร์', N'Non Thong In', N'4124')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412403', N'41130', N'ค้อใหญ่', N'Kho Yai', N'4124')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412404', N'41130', N'คอนสาย', N'Khon Sai', N'4124')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412501', N'41110', N'นาม่วง', N'Na Muang', N'4125')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412502', N'41110', N'ห้วยสามพาด', N'Huai Sam Phat', N'4125')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'412503', N'41110', N'อุ่มจาน', N'Um Chan', N'4125')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420101', N'42000', N'กุดป่อง', N'Kut Pong', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420102', N'42000', N'เมือง', N'Mueang', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420103', N'42100', N'นาอ้อ', N'Na O', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420104', N'42000', N'กกดู่', N'Kok Du', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420105', N'42000', N'น้ำหมาน', N'Nam Man', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420106', N'42000', N'เสี้ยว', N'Siao', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420107', N'42000', N'นาอาน', N'Na An', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420108', N'42000', N'นาโป่ง', N'Na Pong', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420109', N'42000', N'นาดินดำ', N'Na Din Dam', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420110', N'42000', N'น้ำสวย', N'Nam Suai', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420111', N'42000', N'ชัยพฤกษ์', N'Chaiyaphruek', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420112', N'42000', N'นาแขม', N'Na Khaem', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420113', N'42100', N'ศรีสองรัก', N'Si Song Rak', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420114', N'42000', N'กกทอง', N'Kok Thong', N'4201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420201', N'42210', N'นาด้วง', N'Na Duang', N'4202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420202', N'42210', N'นาดอกคำ', N'Na Dok Kham', N'4202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420203', N'42210', N'ท่าสะอาด', N'Tha Sa-at', N'4202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420204', N'42210', N'ท่าสวรรค์', N'Tha Sawan', N'4202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420301', N'42110', N'เชียงคาน', N'Chiang Khan', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420302', N'42110', N'ธาตุ', N'That', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420303', N'42110', N'นาซ่าว', N'Na Sao', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420304', N'42110', N'เขาแก้ว', N'Khao Kaeo', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420305', N'42110', N'ปากตม', N'Pak Tom', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420306', N'42110', N'บุฮม', N'Bu Hom', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420307', N'42110', N'จอมศรี', N'Chom Si', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420308', N'42110', N'หาดทรายขาว', N'Hat Sai Khao', N'4203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420401', N'42150', N'ปากชม', N'Pak Chom', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420402', N'42150', N'เชียงกลม', N'Chiang Klom', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420403', N'42150', N'หาดคัมภีร์', N'Hat Khamphi', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420404', N'42150', N'ห้วยบ่อซืน', N'Huai Bo Suen', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420405', N'42150', N'ห้วยพิชัย', N'Huai Phichai', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420406', N'42150', N'ชมเจริญ', N'Chom Charoen', N'4204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420501', N'42120', N'ด่านซ้าย', N'Dan Sai', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420502', N'42120', N'ปากหมัน', N'Pak Man', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420503', N'42120', N'นาดี', N'Na Di', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420504', N'42120', N'โคกงาม', N'Khok Ngam', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420505', N'42120', N'โพนสูง', N'Phon Sung', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420506', N'42120', N'อิปุ่ม', N'Ipum', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420507', N'42120', N'กกสะทอน', N'Kok Sathon', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420508', N'42120', N'โป่ง', N'Pong', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420509', N'42120', N'วังยาว', N'Wang Yao', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420510', N'42120', N'นาหอ', N'Na Ho', N'4205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420601', N'42170', N'นาแห้ว', N'Na Haeo', N'4206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420602', N'42170', N'แสงภา', N'Saeng Pha', N'4206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420603', N'42170', N'นาพึง', N'Na Phueng', N'4206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420604', N'42170', N'นามาลา', N'Na Ma La', N'4206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420605', N'42170', N'เหล่ากอหก', N'Lao Ko Hok', N'4206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420701', N'42160', N'หนองบัว', N'Nong Bua', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420702', N'42160', N'ท่าศาลา', N'Tha Sala', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420703', N'42160', N'ร่องจิก', N'Rong Chik', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420704', N'42160', N'ปลาบ่า', N'Pla Ba', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420705', N'42160', N'ลาดค่าง', N'Lat Khang', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420706', N'42160', N'สานตม', N'San Tom', N'4207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420801', N'42140', N'ท่าลี่', N'Tha Li', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420802', N'42140', N'หนองผือ', N'Nong Phue', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420803', N'42140', N'อาฮี', N'Ahi', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420804', N'42140', N'น้ำแคม', N'Nam Khaem', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420805', N'42140', N'โคกใหญ่', N'Khok Yai', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420806', N'42140', N'น้ำทูน', N'Nam Thun', N'4208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420901', N'42130', N'วังสะพุง', N'Wang Saphung', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420902', N'42130', N'ทรายขาว', N'Sai Khao', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420903', N'42130', N'หนองหญ้าปล้อง', N'Nong Ya Plong', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420904', N'42130', N'หนองงิ้ว', N'Nong Ngio', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420905', N'42130', N'ปากปวน', N'Pak Puan', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420906', N'42130', N'ผาน้อย', N'Pha Noi', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420910', N'42130', N'ผาบิ้ง', N'Pha Bing', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420911', N'42130', N'เขาหลวง', N'Khao Luang', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420912', N'42130', N'โคกขมิ้น', N'Khok Khamin', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'420913', N'42130', N'ศรีสงคราม', N'Si Songkhram', N'4209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421001', N'42180', N'ศรีฐาน', N'Si Than', N'4210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421005', N'42180', N'ผานกเค้า', N'Pha Nok Khao', N'4210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421007', N'42180', N'ภูกระดึง', N'Phu Kradueng', N'4210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421010', N'42180', N'ห้วยส้ม', N'Huai Som', N'4210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421101', N'42230', N'ภูหอ', N'Phu Ho', N'4211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421102', N'42230', N'หนองคัน', N'Nong Khan', N'4211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421104', N'42230', N'ห้วยสีเสียด', N'Huai Sisiat', N'4211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421105', N'42230', N'เลยวังไสย์', N'Loei Wang Sai', N'4211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421106', N'42230', N'แก่งศรีภูมิ', N'Kaeng Si Phum', N'4211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421201', N'42240', N'ผาขาว', N'Pha Khao', N'4212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421202', N'42240', N'ท่าช้างคล้อง', N'Tha Chang Khlong', N'4212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421203', N'42240', N'โนนปอแดง', N'Non Po Daeng', N'4212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421204', N'42240', N'โนนป่าซาง', N'Non Pa Sang', N'4212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421205', N'42240', N'บ้านเพิ่ม', N'Ban Phoem', N'4212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421301', N'42220', N'เอราวัณ', N'Erawan', N'4213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421302', N'42220', N'ผาอินทร์แปลง', N'Pha In Plaeng', N'4213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421303', N'42220', N'ผาสามยอด', N'Pha Sam Yot', N'4213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421304', N'42220', N'ทรัพย์ไพวัลย์', N'Sap Phaiwan', N'4213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421401', N'42190', N'หนองหิน', N'Nong Hin', N'4214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421402', N'42190', N'ตาดข่า', N'Tat Kha', N'4214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'421403', N'42190', N'ปวนพุ', N'Puan Phu', N'4214')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430101', N'43000', N'ในเมือง', N'Nai Mueang', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430102', N'43000', N'มีชัย', N'Mi Chai', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430103', N'43000', N'โพธิ์ชัย', N'Pho Chai', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430104', N'43000', N'กวนวัน', N'Kuan Wan', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430105', N'43000', N'เวียงคุก', N'Wiang Khuk', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430106', N'43000', N'วัดธาตุ', N'Wat That', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430107', N'43000', N'หาดคำ', N'Hat Kham', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430108', N'43000', N'หินโงม', N'Hin Ngom', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430109', N'43000', N'บ้านเดื่อ', N'Ban Duea', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430110', N'43100', N'ค่ายบกหวาน', N'Khai Bok Wan', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430111', N'43100', N'โพนสว่าง', N'Phon Sawang', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430113', N'43100', N'พระธาตุบังพวน', N'Phra That Bang Phuan', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430116', N'43000', N'หนองกอมเกาะ', N'Nong Kom Ko', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430117', N'43000', N'ปะโค', N'Pa Kho', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430118', N'43000', N'เมืองหมี', N'Mueang Mi', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430119', N'43000', N'สีกาย', N'Si Kai', N'4301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430201', N'43110', N'ท่าบ่อ', N'Tha Bo', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430202', N'43110', N'น้ำโมง', N'Nam Mong', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430203', N'43110', N'กองนาง', N'Kong Nang', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430204', N'43110', N'โคกคอน', N'Khok Khon', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430205', N'43110', N'บ้านเดื่อ', N'Ban Duea', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430206', N'43110', N'บ้านถ่อน', N'Ban Thon', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430207', N'43110', N'บ้านว่าน', N'Ban Wan', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430208', N'43110', N'นาข่า', N'Na Kha', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430209', N'43110', N'โพนสา', N'Phon Sa', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430210', N'43110', N'หนองนาง', N'Nong Nang', N'4302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430501', N'43120', N'จุมพล', N'Chumphon', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430502', N'43120', N'วัดหลวง', N'Wat Luang', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430503', N'43120', N'กุดบง', N'Kut Bong', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430504', N'43120', N'ชุมช้าง', N'Chum Chang', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430506', N'43120', N'ทุ่งหลวง', N'Thung Luang', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430507', N'43120', N'เหล่าต่างคำ', N'Lao Tang Kham', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430508', N'43120', N'นาหนัง', N'Na Nang', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430509', N'43120', N'เซิม', N'Soem', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430513', N'43120', N'บ้านโพธิ์', N'Ban Pho', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430521', N'43120', N'บ้านผือ', N'Ban Phue', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430522', N'43120', N'สร้างนางขาว', N'Sang Nang Khao', N'4305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430701', N'43130', N'พานพร้าว', N'Phan Phrao', N'4307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430703', N'43130', N'บ้านหม้อ', N'Ban Mo', N'4307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430704', N'43130', N'พระพุทธบาท', N'Phra Phutthabat', N'4307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430705', N'43130', N'หนองปลาปาก', N'Nong Pla Pak', N'4307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430801', N'43160', N'แก้งไก่', N'Kaeng Kai', N'4308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430802', N'43160', N'ผาตั้ง', N'Pha Tang', N'4308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430803', N'43160', N'บ้านม่วง', N'Ban Muang', N'4308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430804', N'43160', N'นางิ้ว', N'Na Ngio', N'4308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'430805', N'43160', N'สังคม', N'Sangkhom', N'4308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431401', N'43100', N'สระใคร', N'Sakhrai', N'4314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431402', N'43100', N'คอกช้าง', N'Khok Chang', N'4314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431403', N'43100', N'บ้านฝาง', N'Ban Fang', N'4314')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431501', N'43120', N'เฝ้าไร่', N'Fao Rai', N'4315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431502', N'43120', N'นาดี', N'Na Di', N'4315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431503', N'43120', N'หนองหลวง', N'Nong Luang', N'4315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431504', N'43120', N'วังหลวง', N'wang Luang', N'4315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431505', N'43120', N'อุดมพร', N'Udom Phon', N'4315')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431601', N'43120', N'รัตนวาปี', N'Rattanawapi', N'4316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431602', N'43120', N'นาทับไฮ', N'Na Thap Hai', N'4316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431603', N'43120', N'บ้านต้อน', N'Ban Ton', N'4316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431604', N'43120', N'พระบาทนาสิงห์', N'Phra Bat Na Sing', N'4316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431605', N'43120', N'โพนแพง', N'Phon Phaeng', N'4316')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431701', N'43130', N'โพธิ์ตาก', N'Pho Tak', N'4317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431702', N'43130', N'โพนทอง', N'Phon Thong', N'4317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'431703', N'43130', N'ด่านศรีสุข', N'Dan Si Suk', N'4317')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440101', N'44000', N'ตลาด', N'Talat', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440102', N'44000', N'เขวา', N'Khwao', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440103', N'44000', N'ท่าตูม', N'Tha Tum', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440104', N'44000', N'แวงน่าง', N'Waeng Nang', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440105', N'44000', N'โคกก่อ', N'Khok Ko', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440106', N'44000', N'ดอนหว่าน', N'Don Wan', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440107', N'44000', N'เกิ้ง', N'Koeng', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440108', N'44000', N'แก่งเลิงจาน', N'Kaeng Loeng Chan', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440109', N'44000', N'ท่าสองคอน', N'Tha Song Khon', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440110', N'44000', N'ลาดพัฒนา', N'Lat Phatthana', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440111', N'44000', N'หนองปลิง', N'Nong Pling', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440112', N'44000', N'ห้วยแอ่ง', N'Huai Aeng', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440113', N'44000', N'หนองโน', N'Nong No', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440114', N'44000', N'บัวค้อ', N'Bua Kho', N'4401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440201', N'44190', N'แกดำ', N'Kae Dam', N'4402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440202', N'44190', N'วังแสง', N'Wang Saeng', N'4402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440203', N'44190', N'มิตรภาพ', N'Mittraphap', N'4402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440204', N'44190', N'หนองกุง', N'Nong Kung', N'4402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440205', N'44190', N'โนนภิบาล', N'Non Phiban', N'4402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440301', N'44140', N'หัวขวาง', N'Hua Khwang', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440302', N'44140', N'ยางน้อย', N'Yang Noi', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440303', N'44140', N'วังยาว', N'Wang Yao', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440304', N'44140', N'เขวาไร่', N'Khwao Rai', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440305', N'44140', N'แพง', N'Phaeng', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440306', N'44140', N'แก้งแก', N'Kaeng Kae', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440307', N'44140', N'หนองเหล็ก', N'Nong Lek', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440308', N'44140', N'หนองบัว', N'Nong Bua', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440309', N'44140', N'เหล่า', N'Lao', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440310', N'44140', N'เขื่อน', N'Khuean', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440311', N'44140', N'หนองบอน', N'Nong Bon', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440312', N'44140', N'โพนงาม', N'Phon Ngam', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440313', N'44140', N'ยางท่าแจ้ง', N'Yang Tha Chaeng', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440314', N'44140', N'แห่ใต้', N'Hae Tai', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440315', N'44140', N'หนองกุงสวรรค์', N'Nong Kung Sawan', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440316', N'44140', N'เลิงใต้', N'Loeng Tai', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440317', N'44140', N'ดอนกลาง', N'Don Klang', N'4403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440401', N'44150', N'โคกพระ', N'Khok Phra', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440402', N'44150', N'คันธารราษฎร์', N'Khanthararat', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440403', N'44150', N'มะค่า', N'Makha', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440404', N'44150', N'ท่าขอนยาง', N'Tha Khon Yang', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440405', N'44150', N'นาสีนวน', N'Na Si Nuan', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440406', N'44150', N'ขามเรียง', N'Kham Riang', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440407', N'44150', N'เขวาใหญ่', N'Khwao Yai', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440408', N'44150', N'ศรีสุข', N'Si Suk', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440409', N'44150', N'กุดใส้จ่อ', N'Kut Sai Cho', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440410', N'44150', N'ขามเฒ่าพัฒนา', N'Kham Thao Phatthana', N'4404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440501', N'44160', N'เชียงยืน', N'Chiang Yuen', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440503', N'44160', N'หนองซอน', N'Nong Son', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440505', N'44160', N'ดอนเงิน', N'Don Ngoen', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440506', N'44160', N'กู่ทอง', N'Ku Thong', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440507', N'44160', N'นาทอง', N'Na Thong', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440508', N'44160', N'เสือเฒ่า', N'Suea Thao', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440511', N'44160', N'โพนทอง', N'Phon Thong', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440512', N'44160', N'เหล่าบัวบาน', N'Lao Bua Ban', N'4405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440601', N'44130', N'บรบือ', N'Borabue', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440602', N'44130', N'บ่อใหญ่', N'Bo Yai', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440604', N'44130', N'วังไชย', N'Wang Chai', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440605', N'44130', N'หนองม่วง', N'Nong Muang', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440606', N'44130', N'กำพี้', N'Kam Phi', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440607', N'44130', N'โนนราษี', N'Non Rasi', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440608', N'44130', N'โนนแดง', N'Non Daeng', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440610', N'44130', N'หนองจิก', N'Nong Chik', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440611', N'44130', N'บัวมาศ', N'Bua Mat', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440613', N'44130', N'หนองคูขาด', N'Nong Khu Khat', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440615', N'44130', N'วังใหม่', N'Wang Mai', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440616', N'44130', N'ยาง', N'Yang', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440618', N'44130', N'หนองสิม', N'Nong Sim', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440619', N'44130', N'หนองโก', N'Nong Ko', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440620', N'44130', N'ดอนงัว', N'Don Ngua', N'4406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440701', N'44170', N'นาเชือก', N'Na Chueak', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440702', N'44170', N'สำโรง', N'Samrong', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440703', N'44170', N'หนองแดง', N'Nong Daeng', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440704', N'44170', N'เขวาไร่', N'Khwao Rai', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440705', N'44170', N'หนองโพธิ์', N'Nong Pho', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440706', N'44170', N'ปอพาน', N'Po Phan', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440707', N'44170', N'หนองเม็ก', N'Nong Mek', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440708', N'44170', N'หนองเรือ', N'Nong Ruea', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440709', N'44170', N'หนองกุง', N'Nong Kung', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440710', N'44170', N'สันป่าตอง', N'San Pa Tong', N'4407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440801', N'44110', N'ปะหลาน', N'Palan', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440802', N'44110', N'ก้ามปู', N'Kham Pu', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440803', N'44110', N'เวียงสะอาด', N'Wiang Sa-at', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440804', N'44110', N'เม็กดำ', N'Mek Dam', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440805', N'44110', N'นาสีนวล', N'Na Si Nuan', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440809', N'44110', N'ราษฎร์เจริญ', N'Rat Charoen', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440810', N'44110', N'หนองบัวแก้ว', N'Nong Bua Kaeo', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440812', N'44110', N'เมืองเตา', N'Mueang Tao', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440815', N'44110', N'ลานสะแก', N'Lan Sakae', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440816', N'44110', N'เวียงชัย', N'Wiang Chai', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440817', N'44110', N'หนองบัว', N'Nong Bua', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440818', N'44110', N'ราษฎร์พัฒนา', N'Rat Phatthana', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440819', N'44110', N'เมืองเสือ', N'Mueang Suea', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440820', N'44110', N'ภารแอ่น', N'Phan Aen', N'4408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440901', N'44120', N'หนองแสง', N'Nong Saeng', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440902', N'44120', N'ขามป้อม', N'Kham Pom', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440903', N'44120', N'เสือโก้ก', N'Suea Kok', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440904', N'44120', N'ดงใหญ่', N'Dong Yai', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440905', N'44120', N'โพธิ์ชัย', N'Pho Chai', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440906', N'44120', N'หัวเรือ', N'Hua Ruea', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440907', N'44120', N'แคน', N'Khaen', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440908', N'44120', N'งัวบา', N'Ngua Ba', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440909', N'44120', N'นาข่า', N'Na Kha', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440910', N'44120', N'บ้านหวาย', N'Ban Wai', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440911', N'44120', N'หนองไฮ', N'Nong Hai', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440912', N'44120', N'ประชาพัฒนา', N'Pracha Phatthana', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440913', N'44120', N'หนองทุ่ม', N'Nong Thum', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440914', N'44120', N'หนองแสน', N'Nong Saen', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'440915', N'44120', N'โคกสีทองหลาง', N'Khok Si Thonglang', N'4409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441001', N'44180', N'นาดูน', N'Na Dun', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441002', N'44180', N'หนองไผ่', N'Nong Phai', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441003', N'44180', N'หนองคู', N'Nong Khu', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441004', N'44180', N'ดงบัง', N'Dong Bang', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441005', N'44180', N'ดงดวน', N'Dong Duan', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441006', N'44180', N'หัวดง', N'Hua Dong', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441007', N'44180', N'ดงยาง', N'Dong Yang', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441008', N'44180', N'กู่สันตรัตน์', N'Ku Santarat', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441009', N'44180', N'พระธาตุ', N'Phra That', N'4410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441101', N'44210', N'ยางสีสุราช', N'Yang Si Surat', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441102', N'44210', N'นาภู', N'Na Phu', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441103', N'44210', N'แวงดง', N'Waeng Dong', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441104', N'44210', N'บ้านกู่', N'Ban Ku', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441105', N'44210', N'ดงเมือง', N'Dong Mueang', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441106', N'44210', N'สร้างแซ่ง', N'Sang Saeng', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441107', N'44210', N'หนองบัวสันตุ', N'Nong Bua Santu', N'4411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441201', N'44130', N'กุดรัง', N'Kut Rang', N'4412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441202', N'44130', N'นาโพธิ์', N'Na Pho', N'4412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441203', N'44130', N'เลิงแฝก', N'Loeng Faek', N'4412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441204', N'44130', N'หนองแวง', N'Nong Waeng', N'4412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441205', N'44130', N'ห้วยเตย', N'Huai Toei', N'4412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441301', N'44160', N'ชื่นชม', N'Chuen Chom', N'4413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441302', N'44160', N'กุดปลาดุก', N'Kut Pla Duk', N'4413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441303', N'44160', N'เหล่าดอกไม้', N'Lao Dok Mai', N'4413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'441304', N'44160', N'หนองกุง', N'Nong Kung', N'4413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450101', N'45000', N'ในเมือง', N'Nai Mueang', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450102', N'45000', N'รอบเมือง', N'Rop Mueang', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450103', N'45000', N'เหนือเมือง', N'Nuea Mueang', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450104', N'45000', N'ขอนแก่น', N'Khon Kaen', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450105', N'45000', N'นาโพธิ์', N'Na Pho', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450106', N'45000', N'สะอาดสมบูรณ์', N'Sa-at Sombun', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450108', N'45000', N'สีแก้ว', N'Si Kaeo', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450109', N'45000', N'ปอภาร', N'Po Phan', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450110', N'45000', N'โนนรัง', N'Non Rang', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450117', N'45000', N'หนองแก้ว', N'Nong Kaeo', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450118', N'45000', N'หนองแวง', N'Nong Waeng', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450120', N'45000', N'ดงลาน', N'Dong Lan', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450123', N'45000', N'แคนใหญ่', N'Khaen Yai', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450124', N'45000', N'โนนตาล', N'Non Tan', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450125', N'45000', N'เมืองทอง', N'Mueang Thong', N'4501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450201', N'45150', N'เกษตรวิสัย', N'Kaset Wisai', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450202', N'45150', N'เมืองบัว', N'Mueang Bua', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450203', N'45150', N'เหล่าหลวง', N'Lao Luang', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450204', N'45150', N'สิงห์โคก', N'Sing Khok', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450205', N'45150', N'ดงครั่งใหญ่', N'Dong Khrang Yai', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450206', N'45150', N'บ้านฝาง', N'Ban Fang', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450207', N'45150', N'หนองแวง', N'Nong Waeng', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450208', N'45150', N'กำแพง', N'Kamphaeng', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450209', N'45150', N'กู่กาสิงห์', N'Ku Ka Sing', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450210', N'45150', N'น้ำอ้อม', N'Nam Om', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450211', N'45150', N'โนนสว่าง', N'Non Sawang', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450212', N'45150', N'ทุ่งทอง', N'Thung Thong', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450213', N'45150', N'ดงครั่งน้อย', N'Dong Khrang Noi', N'4502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450301', N'45190', N'บัวแดง', N'Bua Daeng', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450302', N'45190', N'ดอกล้ำ', N'Dok Lam', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450303', N'45190', N'หนองแคน', N'Nong Khaen', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450304', N'45190', N'โพนสูง', N'Phon Sung', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450305', N'45190', N'โนนสวรรค์', N'Non Sawan', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450306', N'45190', N'สระบัว', N'Sa Bua', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450307', N'45190', N'โนนสง่า', N'Non Sa-nga', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450308', N'45190', N'ขี้เหล็ก', N'Khilek', N'4503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450401', N'45180', N'หัวช้าง', N'Hua Chang', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450402', N'45180', N'หนองผือ', N'Nong Phue', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450403', N'45180', N'เมืองหงส์', N'Mueang Hong', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450404', N'45180', N'โคกล่าม', N'Khok Lam', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450405', N'45180', N'น้ำใส', N'Nam Sai', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450406', N'45180', N'ดงแดง', N'Dong Daeng', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450407', N'45180', N'ดงกลาง', N'Dong Klang', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450408', N'45180', N'ป่าสังข์', N'Pa Sang', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450409', N'45180', N'อีง่อง', N'I Ngong', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450410', N'45180', N'ลิ้นฟ้า', N'Lin Fa', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450411', N'45180', N'ดู่น้อย', N'Du Noi', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450412', N'45180', N'ศรีโคตร', N'Si Khot', N'4504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450501', N'45170', N'นิเวศน์', N'Niwet', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450502', N'45170', N'ธงธานี', N'Thong Thani', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450503', N'45170', N'หนองไผ่', N'Nong Phai', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450504', N'45170', N'ธวัชบุรี', N'Thawat Buri', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450506', N'45170', N'อุ่มเม้า', N'Um Mao', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450507', N'45170', N'มะอึ', N'Ma-ue', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450510', N'45170', N'เขวาทุ่ง', N'Khwao Thung', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450515', N'45170', N'ไพศาล', N'Phaisan', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450517', N'45170', N'เมืองน้อย', N'Mueang Noi', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450520', N'45170', N'บึงนคร', N'Bueng Nakhon', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450522', N'45170', N'ราชธานี', N'Ratchathani', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450524', N'45170', N'หนองพอก', N'Nong Phok', N'4505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450601', N'45140', N'พนมไพร', N'Phanom Phrai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450602', N'45140', N'แสนสุข', N'Saen Suk', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450603', N'45140', N'กุดน้ำใส', N'Kut Nam Sai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450604', N'45140', N'หนองทัพไทย', N'Nong Thap Thai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450605', N'45140', N'โพธิ์ใหญ่', N'Pho Yai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450606', N'45140', N'วารีสวัสดิ์', N'Wari Sawat', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450607', N'45140', N'โคกสว่าง', N'Khok Sawang', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450611', N'45140', N'โพธิ์ชัย', N'Pho Chai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450612', N'45140', N'นานวล', N'Na Nuan', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450613', N'45140', N'คำไฮ', N'Kham Hai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450614', N'45140', N'สระแก้ว', N'Sa Kaeo', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450615', N'45140', N'ค้อใหญ่', N'Kho Yai', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450617', N'45140', N'ชานุวรรณ', N'Chanuwan', N'4506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450701', N'45110', N'แวง', N'Waeng', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450702', N'45110', N'โคกกกม่วง', N'Khok Kok Muang', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450703', N'45110', N'นาอุดม', N'Na Udom', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450704', N'45110', N'สว่าง', N'Sawang', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450705', N'45110', N'หนองใหญ่', N'Nong Yai', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450706', N'45110', N'โพธิ์ทอง', N'Pho Thong', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450707', N'45110', N'โนนชัยศรี', N'Non Chai Si', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450708', N'45110', N'โพธิ์ศรีสว่าง', N'Pho Si Sawang', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450709', N'45110', N'อุ่มเม่า', N'Um Mao', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450710', N'45110', N'คำนาดี', N'Na Di', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450711', N'45110', N'พรมสวรรค์', N'Phrom Sawan', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450712', N'45110', N'สระนกแก้ว', N'Sa Nok Kaeo', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450713', N'45110', N'วังสามัคคี', N'Wang Samakkhi', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450714', N'45110', N'โคกสูง', N'Khok Sung', N'4507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450801', N'45230', N'ขามเปี้ย', N'Kham Pia', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450802', N'45230', N'เชียงใหม่', N'Chiang Mai', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450803', N'45230', N'บัวคำ', N'Bua Kham', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450804', N'45230', N'อัคคะคำ', N'Akkha Kham', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450805', N'45230', N'สะอาด', N'Sa-at', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450806', N'45230', N'คำพอุง', N'Kham Pha-ung', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450807', N'45230', N'หนองตาไก้', N'Nong Ta Kai', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450808', N'45230', N'ดอนโอง', N'Don Ong', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450809', N'45230', N'โพธิ์ศรี', N'Pho Si', N'4508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450901', N'45210', N'หนองพอก', N'Nong Phok', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450902', N'45210', N'บึงงาม', N'Bueng Ngam', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450903', N'45210', N'ภูเขาทอง', N'Phukhao Thong', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450904', N'45210', N'กกโพธิ์', N'Kok Pho', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450905', N'45210', N'โคกสว่าง', N'Khok Sawang', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450906', N'45210', N'หนองขุ่นใหญ่', N'Nong Khun Yai', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450907', N'45210', N'รอบเมือง', N'Rop Mueang', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450908', N'45210', N'ผาน้ำย้อย', N'Pha Nam Yoi', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'450909', N'45210', N'ท่าสีดา', N'Tha Sida', N'4509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451001', N'45120', N'กลาง', N'Klang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451002', N'45120', N'นางาม', N'Na Ngam', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451003', N'45120', N'เมืองไพร', N'Mueang Phrai', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451004', N'45120', N'นาแซง', N'Na Saeng', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451005', N'45120', N'นาเมือง', N'Na Mueang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451006', N'45120', N'วังหลวง', N'wang Luang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451007', N'45120', N'ท่าม่วง', N'Tha Muang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451008', N'45120', N'ขวาว', N'Khwao', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451009', N'45120', N'โพธิ์ทอง', N'Pho Thong', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451010', N'45120', N'ภูเงิน', N'Phu Ngoen', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451011', N'45120', N'เกาะแก้ว', N'Ko Kaeo', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451012', N'45120', N'นาเลิง', N'Na Loeng', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451013', N'45120', N'เหล่าน้อย', N'Lao Noi', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451014', N'45120', N'ศรีวิลัย', N'Si Wilai', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451015', N'45120', N'หนองหลวง', N'Nong Luang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451016', N'45120', N'พรสวรรค์', N'Phon Sawan', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451017', N'45120', N'ขวัญเมือง', N'Khwan Mueang', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451018', N'45120', N'บึงเกลือ', N'Bueng Kluea', N'4510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451101', N'45130', N'สระคู', N'Sa Khu', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451102', N'45130', N'ดอกไม้', N'Dok Mai', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451103', N'45130', N'นาใหญ่', N'Na Yai', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451104', N'45130', N'หินกอง', N'Hin Kong', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451105', N'45130', N'เมืองทุ่ง', N'Mueang Thung', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451106', N'45130', N'หัวโทน', N'Hua Thon', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451107', N'45130', N'บ่อพันขัน', N'Bo Phan Khan', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451108', N'45130', N'ทุ่งหลวง', N'Thung Luang', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451109', N'45130', N'หัวช้าง', N'Hua Chang', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451110', N'45130', N'น้ำคำ', N'Nam Kham', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451111', N'45130', N'ห้วยหินลาด', N'Huai Hin Lat', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451112', N'45130', N'ช้างเผือก', N'Chang Phueak', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451113', N'45130', N'ทุ่งกุลา', N'Thung Kula', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451114', N'45130', N'ทุ่งศรีเมือง', N'Thung Si Mueang', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451115', N'45130', N'จำปาขัน', N'Champa Khan', N'4511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451201', N'45220', N'หนองผือ', N'Nong Phue', N'4512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451202', N'45220', N'หนองหิน', N'Nong Hin', N'4512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451203', N'45220', N'คูเมือง', N'Khu Mueang', N'4512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451204', N'45220', N'กกกุง', N'Kok Kung', N'4512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451205', N'45220', N'เมืองสรวง', N'Mueang Suang', N'4512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451301', N'45240', N'โพนทราย', N'Phon Sai', N'4513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451302', N'45240', N'สามขา', N'Sam Kha', N'4513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451303', N'45240', N'ศรีสว่าง', N'Si Sawang', N'4513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451304', N'45240', N'ยางคำ', N'Yang Kham', N'4513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451305', N'45240', N'ท่าหาดยาว', N'Tha Hat Yao', N'4513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451401', N'45160', N'อาจสามารถ', N'At Samat', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451402', N'45160', N'โพนเมือง', N'Phon Mueang', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451403', N'45160', N'บ้านแจ้ง', N'Ban Chaeng', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451404', N'45160', N'หน่อม', N'Nom', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451405', N'45160', N'หนองหมื่นถ่าน', N'Nong Muen Than', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451406', N'45160', N'หนองขาม', N'Nong Kham', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451407', N'45160', N'โหรา', N'Hora', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451408', N'45160', N'หนองบัว', N'Nong Bua', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451409', N'45160', N'ขี้เหล็ก', N'Khilek', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451410', N'45160', N'บ้านดู่', N'Ban Du', N'4514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451501', N'45250', N'เมยวดี', N'Moei Wadi', N'4515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451502', N'45250', N'ชุมพร', N'Chumphon', N'4515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451503', N'45250', N'บุ่งเลิศ', N'Bung Loet', N'4515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451504', N'45250', N'ชมสะอาด', N'Chom Sa-at', N'4515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451601', N'45000', N'โพธิ์ทอง', N'Pho Thong', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451602', N'45000', N'ศรีสมเด็จ', N'Si Somdet', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451603', N'45000', N'เมืองเปลือย', N'Mueang Plueai', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451604', N'45000', N'หนองใหญ่', N'Nong Yai', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451605', N'45280', N'สวนจิก', N'Suan Chik', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451606', N'45280', N'โพธิ์สัย', N'Pho Sai', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451607', N'45000', N'หนองแวงควง', N'Nong Waeng Khuang', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451608', N'45000', N'บ้านบาก', N'Ban Bak', N'4516')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451701', N'45000', N'ดินดำ', N'Din Dam', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451702', N'45000', N'ปาฝา', N'Pa Fa', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451703', N'45000', N'ม่วงลาด', N'Muang Lat', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451704', N'45000', N'จังหาร', N'Changhan', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451705', N'45000', N'ดงสิงห์', N'Dong Sing', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451706', N'45000', N'ยางใหญ่', N'Yang Yai', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451707', N'45000', N'ผักแว่น', N'Phak Waen', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451708', N'45000', N'แสนชาติ', N'Saen Chat', N'4517')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451801', N'45000', N'เชียงขวัญ', N'Chiang Khwan', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451802', N'45170', N'พลับพลา', N'Phlapphla', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451803', N'45000', N'พระธาตุ', N'Phra That', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451804', N'45000', N'พระเจ้า', N'Phra Chao', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451805', N'45170', N'หมูม้น', N'Mu Mon', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451806', N'45000', N'บ้านเขือง', N'Ban Khueang', N'4518')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451901', N'45140', N'หนองฮี', N'Nong Hi', N'4519')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451902', N'45140', N'สาวแห', N'Sao Hae', N'4519')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451903', N'45140', N'ดูกอึ่ง', N'Duk Ueng', N'4519')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'451904', N'45140', N'เด่นราษฎร์', N'Den Rat', N'4519')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'452001', N'45170', N'ทุ่งเขาหลวง', N'Thung Khao Luang', N'4520')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'452002', N'45170', N'เทอดไทย', N'Thoet Thai', N'4520')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'452003', N'45170', N'บึงงาม', N'Bueng Ngam', N'4520')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'452004', N'45170', N'มะบ้า', N'Maba', N'4520')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'452005', N'45170', N'เหล่า', N'Lao', N'4520')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460101', N'46000', N'กาฬสินธุ์', N'Kalasin', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460102', N'46000', N'เหนือ', N'Nuea', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460103', N'46000', N'หลุบ', N'Lup', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460104', N'46000', N'ไผ่', N'Phai', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460105', N'46000', N'ลำปาว', N'Lam Pao', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460106', N'46000', N'ลำพาน', N'Lam Phan', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460107', N'46000', N'เชียงเครือ', N'Chiang Khruea', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460108', N'46000', N'บึงวิชัย', N'Bueng Wichai', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460109', N'46000', N'ห้วยโพธิ์', N'Huai Pho', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460111', N'46000', N'ภูปอ', N'Phu Po', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460113', N'46000', N'ภูดิน', N'Phu Din', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460115', N'46000', N'หนองกุง', N'Nong Kung', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460116', N'46000', N'กลางหมื่น', N'Klang Muen', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460117', N'46000', N'ขมิ้น', N'Khamin', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460119', N'46000', N'โพนทอง', N'Phon Thong', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460120', N'46000', N'นาจารย์', N'Na Chan', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460121', N'46000', N'ลำคลอง', N'Lam Khlong', N'4601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460201', N'46230', N'นามน', N'Na Mon', N'4602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460202', N'46230', N'ยอดแกง', N'Yot Kaeng', N'4602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460203', N'46230', N'สงเปลือย', N'Song Plueai', N'4602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460204', N'46230', N'หลักเหลี่ยม', N'Lak Liam', N'4602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460205', N'46230', N'หนองบัว', N'Nong Bua', N'4602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460301', N'46130', N'กมลาไสย', N'Kamalasai', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460302', N'46130', N'หลักเมือง', N'Lak Mueang', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460303', N'46130', N'โพนงาม', N'Phon Ngam', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460304', N'46130', N'ดงลิง', N'Dong Ling', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460305', N'46130', N'ธัญญา', N'Thanya', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460308', N'46130', N'หนองแปน', N'Nong Paen', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460310', N'46130', N'เจ้าท่า', N'Chao Tha', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460311', N'46130', N'โคกสมบูรณ์', N'Khok Sombun', N'4603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460401', N'46210', N'ร่องคำ', N'Rong Kham', N'4604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460402', N'46210', N'สามัคคี', N'Samakkhi', N'4604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460403', N'46210', N'เหล่าอ้อย', N'Lao Oi', N'4604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460501', N'46110', N'บัวขาว', N'Bua Khao', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460502', N'46110', N'แจนแลน', N'Chaen Laen', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460503', N'46110', N'เหล่าใหญ่', N'Lao Yai', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460504', N'46110', N'จุมจัง', N'Chum Chang', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460505', N'46110', N'เหล่าไฮงาม', N'Lao Hai Ngam', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460506', N'46110', N'กุดหว้า', N'Kut Wa', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460507', N'46110', N'สามขา', N'Sam Kha', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460508', N'46110', N'นาขาม', N'Na Kham', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460509', N'46110', N'หนองห้าง', N'Nong Hang', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460510', N'46110', N'นาโก', N'Na Ko', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460511', N'46110', N'สมสะอาด', N'Som Sa-at', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460512', N'46110', N'กุดค้าว', N'Kut Khao', N'4605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460601', N'46160', N'คุ้มเก่า', N'Khum Kao', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460602', N'46160', N'สงเปลือย', N'Song Plueai', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460603', N'46160', N'หนองผือ', N'Nong Phue', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460606', N'46160', N'กุดสิมคุ้มใหม่', N'Kut Sim Khum Mai', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460608', N'46160', N'สระพังทอง', N'Sa Phang Thong', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460611', N'46160', N'กุดปลาค้าว', N'Kut Pla Khao', N'4606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460701', N'46120', N'ยางตลาด', N'Yang Talat', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460702', N'46120', N'หัวงัว', N'Hua Ngua', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460703', N'46120', N'อุ่มเม่า', N'Um Mao', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460704', N'46120', N'บัวบาน', N'Bua Ban', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460705', N'46120', N'เว่อ', N'Woe', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460706', N'46120', N'อิตื้อ', N'Itue', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460707', N'46120', N'หัวนาคำ', N'Hua Na Kham', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460708', N'46120', N'หนองอิเฒ่า', N'Nong I Thao', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460709', N'46120', N'ดอนสมบูรณ์', N'Don Sombun', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460710', N'46120', N'นาเชือก', N'Na Chueak', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460711', N'46120', N'คลองขาม', N'Khlong Kham', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460712', N'46120', N'เขาพระนอน', N'Khao Phra Non', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460713', N'46120', N'นาดี', N'Na Di', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460714', N'46120', N'โนนสูง', N'Non Sung', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460715', N'46120', N'หนองตอกแป้น', N'Nong Tok Paen', N'4607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460801', N'46170', N'ห้วยเม็ก', N'Huai Mek', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460802', N'46170', N'คำใหญ่', N'Kham Yai', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460803', N'46170', N'กุดโดน', N'Kut Don', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460804', N'46170', N'บึงนาเรียง', N'Bueng Na Riang', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460805', N'46170', N'หัวหิน', N'Hua Hin', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460806', N'46170', N'พิมูล', N'Phimun', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460807', N'46170', N'คำเหมือดแก้ว', N'Kham Mueat Kaeo', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460808', N'46170', N'โนนสะอาด', N'Non Sa-at', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460809', N'46170', N'ทรายทอง', N'Sai Thong', N'4608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460901', N'46140', N'ภูสิงห์', N'Phu Sing', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460902', N'46140', N'สหัสขันธ์', N'Sahatsakhan', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460903', N'46140', N'นามะเขือ', N'Na Makhuea', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460904', N'46140', N'โนนศิลา', N'Non Sila', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460905', N'46140', N'นิคม', N'Nikhom', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460906', N'46140', N'โนนแหลมทอง', N'Non Laem Thong', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460907', N'46140', N'โนนบุรี', N'Non Buri', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'460908', N'46140', N'โนนน้ำเกลี้ยง', N'Non Nam Kliang', N'4609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461001', N'46180', N'ทุ่งคลอง', N'Thung Khlong', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461002', N'46180', N'โพน', N'Phon', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461005', N'46180', N'ดินจี่', N'Din Chi', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461006', N'46180', N'นาบอน', N'Na Bon', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461007', N'46180', N'นาทัน', N'Na Than', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461009', N'46180', N'เนินยาง', N'Noen Yang', N'4610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461101', N'46190', N'ท่าคันโท', N'Tha Khantho', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461102', N'46190', N'กุงเก่า', N'Kung Kao', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461103', N'46190', N'ยางอู้ม', N'Yang Um', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461104', N'46190', N'กุดจิก', N'Kut Chik', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461105', N'46190', N'นาตาล', N'Na Tan', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461106', N'46190', N'ดงสมบูรณ์', N'Dong Sombun', N'4611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461201', N'46220', N'หนองกุงศรี', N'Nong Kung Si', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461202', N'46220', N'หนองบัว', N'Nong Bua', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461203', N'46220', N'โคกเครือ', N'Khok Khruea', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461204', N'46220', N'หนองสรวง', N'Nong Suang', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461205', N'46220', N'เสาเล้า', N'Sao Lao', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461206', N'46220', N'หนองใหญ่', N'Nong Yai', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461207', N'46220', N'ดงมูล', N'Dong Mun', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461208', N'46220', N'ลำหนองแสน', N'Lam Nong Saen', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461209', N'46220', N'หนองหิน', N'Nong Hin', N'4612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461301', N'46150', N'สมเด็จ', N'Somdet', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461302', N'46150', N'หนองแวง', N'Nong Waeng', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461303', N'46150', N'แซงบาดาล', N'Saeng Badan', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461304', N'46150', N'มหาไชย', N'Maha Chai', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461305', N'46150', N'หมูม่น', N'Mu Mon', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461306', N'46150', N'ผาเสวย', N'Pha Sawoei', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461307', N'46150', N'ศรีสมเด็จ', N'Si Somdet', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461308', N'46150', N'ลำห้วยหลัว', N'Lam Huai Lua', N'4613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461401', N'46240', N'คำบง', N'Kham Bong', N'4614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461402', N'46240', N'ไค้นุ่น', N'Khai Nun', N'4614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461403', N'46240', N'นิคมห้วยผึ้ง', N'Nikhom Huai Phueng', N'4614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461404', N'46240', N'หนองอีบุตร', N'Nong I But', N'4614')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461501', N'46180', N'สำราญ', N'Samran', N'4615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461502', N'46180', N'สำราญใต้', N'Samran Tai', N'4615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461503', N'46180', N'คำสร้างเที่ยง', N'Kham Sang Thiang', N'4615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461504', N'46180', N'หนองช้าง', N'Nong Chang', N'4615')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461601', N'46160', N'นาคู', N'Na Khu', N'4616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461602', N'46160', N'สายนาวัง', N'Sai Na Wang', N'4616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461603', N'46160', N'โนนนาจาน', N'Non Na Chan', N'4616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461604', N'46160', N'บ่อแก้ว', N'Bo Kaeo', N'4616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461605', N'46160', N'ภูแล่นช้าง', N'Phu Laen Chang', N'4616')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461701', N'46000', N'ดอนจาน', N'Don Chan', N'4617')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461702', N'46000', N'สะอาดไชยศรี', N'Sa-at Chai Si', N'4617')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461703', N'46000', N'ดงพยุง', N'Dong Phayung', N'4617')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461704', N'46000', N'ม่วงนา', N'Muang Na', N'4617')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461705', N'46000', N'นาจำปา', N'Na Champa', N'4617')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461801', N'46130', N'ฆ้องชัยพัฒนา', N'Khong Chai Phatthana', N'4618')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461802', N'46130', N'เหล่ากลาง', N'Lao Klang', N'4618')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461803', N'46130', N'โคกสะอาด', N'Khok Sa-at', N'4618')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461804', N'46130', N'โนนศิลาเลิง', N'Non Sila Loeng', N'4618')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'461805', N'46130', N'ลำชี', N'Lam Chi', N'4618')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470101', N'47000', N'ธาตุเชิงชุม', N'That Choeng Chum', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470102', N'47220', N'ขมิ้น', N'Khamin', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470103', N'47000', N'งิ้วด่อน', N'Ngio Don', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470104', N'47000', N'โนนหอม', N'Non Hom', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470106', N'47000', N'เชียงเครือ', N'Chiang Khruea', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470107', N'47230', N'ท่าแร่', N'Tha Rae', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470109', N'47000', N'ม่วงลาย', N'Muang Lai', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470111', N'47000', N'ดงชน', N'Dong Chon', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470112', N'47000', N'ห้วยยาง', N'Huai Yang', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470113', N'47000', N'พังขว้าง', N'Phang Khwang', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470115', N'47000', N'ดงมะไฟ', N'Dong Mafai', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470116', N'47000', N'ธาตุนาเวง', N'That Na Weng', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470117', N'47000', N'เหล่าปอแดง', N'Lao Po Daeng', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470118', N'47220', N'หนองลาด', N'Nong Lat', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470120', N'47000', N'ฮางโฮง', N'Hang Hong', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470121', N'47000', N'โคกก่อง', N'Khok Kong', N'4701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470201', N'47210', N'กุสุมาลย์', N'Kusuman', N'4702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470202', N'47210', N'นาโพธิ์', N'Na Pho', N'4702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470203', N'47230', N'นาเพียง', N'Na Phiang', N'4702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470204', N'47210', N'โพธิไพศาล', N'Phothiphaisan', N'4702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470205', N'47230', N'อุ่มจาน', N'Um Chan', N'4702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470301', N'47180', N'กุดบาก', N'Kut Bak', N'4703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470303', N'47180', N'นาม่อง', N'Na Mong', N'4703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470305', N'47180', N'กุดไห', N'Kut Hai', N'4703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470401', N'47130', N'พรรณา', N'Phanna', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470402', N'47130', N'วังยาง', N'Wang Yang', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470403', N'47220', N'พอกน้อย', N'Phok Noi', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470404', N'47220', N'นาหัวบ่อ', N'Na Hua Bo', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470405', N'47130', N'ไร่', N'Rai', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470406', N'47130', N'ช้างมิ่ง', N'Chang Ming', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470407', N'47130', N'นาใน', N'Na Nai', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470408', N'47130', N'สว่าง', N'Sawang', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470409', N'47130', N'บะฮี', N'Ba Hi', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470410', N'47130', N'เชิงชุม', N'Choeng Chum', N'4704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470501', N'47160', N'พังโคน', N'Phang Khon', N'4705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470502', N'47160', N'ม่วงไข่', N'Muang Khai', N'4705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470503', N'47160', N'แร่', N'Rae', N'4705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470504', N'47160', N'ไฮหย่อง', N'Hai Yong', N'4705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470505', N'47160', N'ต้นผึ้ง', N'Ton Phueng', N'4705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470601', N'47150', N'วาริชภูมิ', N'Waritchaphum', N'4706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470602', N'47150', N'ปลาโหล', N'Pla Lo', N'4706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470603', N'47150', N'หนองลาด', N'Nong Lat', N'4706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470604', N'47150', N'คำบ่อ', N'Kham Bo', N'4706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470605', N'47150', N'ค้อเขียว', N'Kho Khiao', N'4706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470701', N'47270', N'นิคมน้ำอูน', N'Nikhom Nam Un', N'4707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470702', N'47270', N'หนองปลิง', N'Nong Pling', N'4707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470703', N'47270', N'หนองบัว', N'Nong Bua', N'4707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470704', N'47270', N'สุวรรณคาม', N'Suwannakham', N'4707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470801', N'47120', N'วานรนิวาส', N'Wanon Niwat', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470802', N'47120', N'เดื่อศรีคันไชย', N'Duea Si Khan Chai', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470803', N'47120', N'ขัวก่าย', N'Khua Kai', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470804', N'47120', N'หนองสนม', N'Nong Sanom', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470805', N'47120', N'คูสะคาม', N'Khu Sakham', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470806', N'47120', N'ธาตุ', N'That', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470807', N'47120', N'หนองแวง', N'Nong Waeng', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470808', N'47120', N'ศรีวิชัย', N'Si Wichai', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470809', N'47120', N'นาซอ', N'Na So', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470810', N'47120', N'อินทร์แปลง', N'In Plaeng', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470811', N'47120', N'นาคำ', N'Na Kham', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470812', N'47120', N'คอนสวรรค์', N'Khon Sawan', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470813', N'47120', N'กุดเรือคำ', N'Kut Ruea Kham', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470814', N'47120', N'หนองแวงใต้', N'Nong Waeng Tai', N'4708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470901', N'47250', N'คำตากล้า', N'Kham Ta Kla', N'4709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470902', N'47250', N'หนองบัวสิม', N'Nong Bua Sim', N'4709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470903', N'47250', N'นาแต้', N'Na Tae', N'4709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'470904', N'47250', N'แพด', N'Phaet', N'4709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471001', N'47140', N'ม่วง', N'Muang', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471002', N'47140', N'มาย', N'Mai', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471003', N'47140', N'ดงหม้อทอง', N'Dong Mo Thong', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471004', N'47140', N'ดงเหนือ', N'Dong Nuea', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471005', N'47140', N'ดงหม้อทองใต้', N'Dong Mo Thong Tai', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471006', N'47140', N'ห้วยหลัว', N'Huai Lua', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471007', N'47140', N'โนนสะอาด', N'Non Sa-at', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471008', N'47140', N'หนองกวั่ง', N'Nong Kwang', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471009', N'47140', N'บ่อแก้ว', N'Bo Kaeo', N'4710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471101', N'47170', N'อากาศ', N'Akat', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471102', N'47170', N'โพนแพง', N'Phon Phaeng', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471103', N'47170', N'วาใหญ่', N'Wa Yai', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471104', N'47170', N'โพนงาม', N'Phon Ngam', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471105', N'47170', N'ท่าก้อน', N'Tha Kon', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471106', N'47170', N'นาฮี', N'Na Hi', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471107', N'47170', N'บะหว้า', N'Ba Wa', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471108', N'47170', N'สามัคคีพัฒนา', N'Samakkhi Phatthana', N'4711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471201', N'47110', N'สว่างแดนดิน', N'Sawang Daen Din', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471203', N'47110', N'คำสะอาด', N'Kham Sa-at', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471204', N'47110', N'บ้านต้าย', N'Ban Tai', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471206', N'47110', N'บงเหนือ', N'Bong Nuea', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471207', N'47110', N'โพนสูง', N'Phon Sung', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471208', N'47110', N'โคกสี', N'Khok Si', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471210', N'47110', N'หนองหลวง', N'Nong Luang', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471211', N'47110', N'บงใต้', N'Bong Tai', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471212', N'47110', N'ค้อใต้', N'Kho Tai', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471213', N'47240', N'พันนา', N'Phan Na', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471214', N'47240', N'แวง', N'Waeng', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471215', N'47110', N'ทรายมูล', N'Sai Mun', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471216', N'47240', N'ตาลโกน', N'Tan Kon', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471217', N'47240', N'ตาลเนิ้ง', N'Tan Noeng', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471220', N'47240', N'ธาตุทอง', N'That Thong', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471221', N'47110', N'บ้านถ่อน', N'Ban Thon', N'4712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471301', N'47190', N'ส่องดาว', N'Song Dao', N'4713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471302', N'47190', N'ท่าศิลา', N'Tha Sila', N'4713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471303', N'47190', N'วัฒนา', N'Watthana', N'4713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471304', N'47190', N'ปทุมวาปี', N'Pathum Wapi', N'4713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471401', N'47260', N'เต่างอย', N'Tao Ngoi', N'4714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471402', N'47260', N'บึงทวาย', N'Bueng Thawai', N'4714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471403', N'47260', N'นาตาล', N'Na Tan', N'4714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471404', N'47260', N'จันทร์เพ็ญ', N'Chan Phen', N'4714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471501', N'47280', N'ตองโขบ', N'Tong Khop', N'4715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471502', N'47280', N'เหล่าโพนค้อ', N'Lao Phon Kho', N'4715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471503', N'47280', N'ด่านม่วงคำ', N'Dan Muang Kham', N'4715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471504', N'47280', N'แมดนาท่ม', N'Maet Na Thom', N'4715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471601', N'47290', N'บ้านเหล่า', N'Ban Lao', N'4716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471602', N'47290', N'เจริญศิลป์', N'Charoen Sin', N'4716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471603', N'47290', N'ทุ่งแก', N'Thung Kae', N'4716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471604', N'47290', N'โคกศิลา', N'Khok Sila', N'4716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471605', N'47290', N'หนองแปน', N'Nong Paen', N'4716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471701', N'47230', N'บ้านโพน', N'Ban Phon', N'4717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471702', N'47230', N'นาแก้ว', N'Na Kaeo', N'4717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471703', N'47230', N'นาตงวัฒนา', N'Na Tong Watthana', N'4717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471704', N'47230', N'บ้านแป้น', N'Ban Paen', N'4717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471705', N'47230', N'เชียงสือ', N'Chiang Sue', N'4717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471801', N'47180', N'สร้างค้อ', N'Sang Kho', N'4718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471802', N'47180', N'หลุบเลา', N'Lup Lao', N'4718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471803', N'47180', N'โคกภู', N'Khok Phu', N'4718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'471804', N'47180', N'กกปลาซิว', N'Kok Pla Sio', N'4718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480101', N'48000', N'ในเมือง', N'Nai Mueang', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480102', N'48000', N'หนองแสง', N'Nong Saeng', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480103', N'48000', N'นาทราย', N'Na Sai', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480104', N'48000', N'นาราชควาย', N'Na Rat Khwai', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480105', N'48000', N'กุรุคุ', N'Kurukhu', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480106', N'48000', N'บ้านผึ้ง', N'Ban Phueng', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480107', N'48000', N'อาจสามารถ', N'At Samat', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480108', N'48000', N'ขามเฒ่า', N'Kham Thao', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480109', N'48000', N'บ้านกลาง', N'Ban Klang', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480110', N'48000', N'ท่าค้อ', N'Tha Kho', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480111', N'48000', N'คำเตย', N'Kham Toei', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480112', N'48000', N'หนองญาติ', N'Nong Yat', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480113', N'48000', N'ดงขวาง', N'Dong Khwang', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480114', N'48000', N'วังตามัว', N'Wang Ta Mua', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480115', N'48000', N'โพธิ์ตาก', N'Pho Tak', N'4801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480201', N'48160', N'ปลาปาก', N'Pla Pak', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480202', N'48160', N'หนองฮี', N'Nong Hi', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480203', N'48160', N'กุตาไก้', N'Kutakai', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480204', N'48160', N'โคกสว่าง', N'Khok Sawang', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480205', N'48160', N'โคกสูง', N'Khok Sung', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480206', N'48160', N'มหาชัย', N'Maha Chai', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480207', N'48160', N'นามะเขือ', N'Na Makhuea', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480208', N'48160', N'หนองเทาใหญ่', N'Nong Thao Yai', N'4802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480301', N'48120', N'ท่าอุเทน', N'Tha Uthen', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480302', N'48120', N'โนนตาล', N'Non Tan', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480303', N'48120', N'ท่าจำปา', N'Tha Champa', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480304', N'48120', N'ไชยบุรี', N'Chaiburi', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480305', N'48120', N'พนอม', N'Phanom', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480306', N'48120', N'พะทาย', N'Phathai', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480311', N'48120', N'เวินพระบาท', N'Woen Phrabat', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480312', N'48120', N'รามราช', N'Ram Rat', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480314', N'48120', N'หนองเทา', N'Nong Thao', N'4803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480401', N'48140', N'บ้านแพง', N'Ban Phaeng', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480402', N'48140', N'ไผ่ล้อม', N'Phai Lom', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480403', N'48140', N'โพนทอง', N'Phon Thong', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480404', N'48140', N'หนองแวง', N'Nong Waeng', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480408', N'48140', N'นางัว', N'Na Ngua', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480409', N'48140', N'นาเข', N'Na Khe', N'4804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480501', N'48110', N'ธาตุพนม', N'That Phanom', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480502', N'48110', N'ฝั่งแดง', N'Fang Daeng', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480503', N'48110', N'โพนแพง', N'Phon Phaeng', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480504', N'48110', N'พระกลางทุ่ง', N'Phra Klang Thung', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480505', N'48110', N'นาถ่อน', N'Na Thon', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480506', N'48110', N'แสนพัน', N'Saen Phan', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480507', N'48110', N'ดอนนางหงส์', N'Don Nang Hong', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480508', N'48110', N'น้ำก่ำ', N'Nam Kam', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480509', N'48110', N'อุ่มเหม้า', N'Um Mao', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480510', N'48110', N'นาหนาด', N'Na Nat', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480511', N'48110', N'กุดฉิม', N'Kut Chim', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480512', N'48110', N'ธาตุพนมเหนือ', N'That Phanom Nuea', N'4805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480601', N'48170', N'เรณู', N'Renu', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480602', N'48170', N'โพนทอง', N'Phon Thong', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480603', N'48170', N'ท่าลาด', N'Tha Lat', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480604', N'48170', N'นางาม', N'Na Ngam', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480605', N'48170', N'โคกหินแฮ่', N'Khok Hin Hae', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480607', N'48170', N'หนองย่างชิ้น', N'Nong Yang Chin', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480608', N'48170', N'เรณูใต้', N'Renu Tai', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480609', N'48170', N'นาขาม', N'Na Kham', N'4806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480701', N'48130', N'นาแก', N'Na Kae', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480702', N'48130', N'พระซอง', N'Phra Song', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480703', N'48130', N'หนองสังข์', N'Nong Sang', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480704', N'48130', N'นาคู่', N'Na Khu', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480705', N'48130', N'พิมาน', N'Phiman', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480706', N'48130', N'พุ่มแก', N'Phum Kae', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480707', N'48130', N'ก้านเหลือง', N'Kan Lueang', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480708', N'48130', N'หนองบ่อ', N'Nong Bo', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480709', N'48130', N'นาเลียง', N'Na Liang', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480712', N'48130', N'บ้านแก้ง', N'Ban Kaeng', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480713', N'48130', N'คำพี้', N'Ham Phi', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480715', N'48130', N'สีชมพู', N'Si Chomphu', N'4807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480801', N'48150', N'ศรีสงคราม', N'Si Songkhram', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480802', N'48150', N'นาเดื่อ', N'Na Duea', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480803', N'48150', N'บ้านเอื้อง', N'Ban Ueang', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480804', N'48150', N'สามผง', N'sam Phong', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480805', N'48150', N'ท่าบ่อสงคราม', N'Tha Bo Songkhram', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480806', N'48150', N'บ้านข่า', N'Ban Kha', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480807', N'48150', N'นาคำ', N'Na Kham', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480808', N'48150', N'โพนสว่าง', N'Phon Sawang', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480809', N'48150', N'หาดแพง', N'Hat Phaeng', N'4808')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480901', N'48180', N'นาหว้า', N'Na Wa', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480902', N'48180', N'นางัว', N'Na Ngua', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480903', N'48180', N'บ้านเสียว', N'Ban Siao', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480904', N'48180', N'นาคูณใหญ่', N'Na Khun Yai', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480905', N'48180', N'เหล่าพัฒนา', N'Lao Phatthana', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'480906', N'48180', N'ท่าเรือ', N'Tha Ruea', N'4809')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481001', N'48190', N'โพนสวรรค์', N'Phon Sawan', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481002', N'48190', N'นาหัวบ่อ', N'Na Hua Bo', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481003', N'48190', N'นาขมิ้น', N'Na Khamin', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481004', N'48190', N'โพนบก', N'Phon Bok', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481005', N'48190', N'บ้านค้อ', N'Ban Kho', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481006', N'48190', N'โพนจาน', N'Phon Chan', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481007', N'48190', N'นาใน', N'Na Nai', N'4810')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481101', N'48140', N'นาทม', N'Na Thom', N'4811')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481102', N'48140', N'หนองซน', N'Nong Son', N'4811')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481103', N'48140', N'ดอนเตย', N'Don Toei', N'4811')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481201', N'48130', N'วังยาง', N'Wang Yang', N'4812')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481202', N'48130', N'โคกสี', N'Khok Si', N'4812')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481203', N'48130', N'ยอดชาด', N'Yot Chat', N'4812')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'481204', N'48130', N'หนองโพธิ์', N'Nong Pho', N'4812')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490101', N'49000', N'มุกดาหาร', N'Mukdahan', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490102', N'49000', N'ศรีบุญเรือง', N'Si Bun Rueang', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490103', N'49000', N'บ้านโคก', N'Ban Khok', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490104', N'49000', N'บางทรายใหญ่', N'Bang Sai Yai', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490105', N'49000', N'โพนทราย', N'Phon Sai', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490106', N'49000', N'ผึ่งแดด', N'Phueng Daet', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490107', N'49000', N'นาโสก', N'Na Sok', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490108', N'49000', N'นาสีนวน', N'Na Si Nuan', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490109', N'49000', N'คำป่าหลาย', N'Kham Pa Lai', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490110', N'49000', N'คำอาฮวน', N'Kham Ahuan', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490111', N'49000', N'ดงเย็น', N'Dong Yen', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490112', N'49000', N'ดงมอน', N'Dong Mon', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490113', N'49000', N'กุดแข้', N'Kut Khae', N'4901')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490201', N'49130', N'นิคมคำสร้อย', N'Nikhom Kham Soi', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490202', N'49130', N'นากอก', N'Na Kok', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490203', N'49130', N'หนองแวง', N'Nong Waeng', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490204', N'49130', N'กกแดง', N'Kok Daeng', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490205', N'49130', N'นาอุดม', N'Na Udom', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490206', N'49130', N'โชคชัย', N'Chok Chai', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490207', N'49130', N'ร่มเกล้า', N'Rom Klao', N'4902')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490301', N'49120', N'ดอนตาล', N'Don Tan', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490302', N'49120', N'โพธิ์ไทร', N'Pho Sai', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490303', N'49120', N'ป่าไร่', N'Pa Rai', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490304', N'49120', N'เหล่าหมี', N'Lao Mi', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490305', N'49120', N'บ้านบาก', N'Ban Bak', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490306', N'49120', N'นาสะเม็ง', N'Na Sameng', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490307', N'49120', N'บ้านแก้ง', N'Ban Kaeng', N'4903')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490401', N'49140', N'ดงหลวง', N'Dong Luang', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490402', N'49140', N'หนองบัว', N'Nong Bua', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490403', N'49140', N'กกตูม', N'Kok Tum', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490404', N'49140', N'หนองแคน', N'Nong Khaen', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490405', N'49140', N'ชะโนดน้อย', N'Chanot Noi', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490406', N'49140', N'พังแดง', N'Phang Daeng', N'4904')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490503', N'49110', N'บ้านซ่ง', N'Ban Song', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490504', N'49110', N'คำชะอี', N'Kham Cha-i', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490505', N'49110', N'หนองเอี่ยน', N'Nong Ian', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490506', N'49110', N'บ้านค้อ', N'Ban Kho', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490507', N'49110', N'บ้านเหล่า', N'Ban Lao', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490508', N'49110', N'โพนงาม', N'Phon Ngam', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490511', N'49110', N'เหล่าสร้างถ่อ', N'Lao Sang Tho', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490512', N'49110', N'คำบก', N'Kham Bok', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490514', N'49110', N'น้ำเที่ยง', N'Nam Thiang', N'4905')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490601', N'49150', N'หว้านใหญ่', N'Wan Yai', N'4906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490602', N'49150', N'ป่งขาม', N'Pong Kham', N'4906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490603', N'49150', N'บางทรายน้อย', N'Bang Sai Noi', N'4906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490604', N'49150', N'ชะโนด', N'Chanot', N'4906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490605', N'49150', N'ดงหมู', N'Dong Mu', N'4906')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490701', N'49160', N'หนองสูง', N'Nong Sung', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490702', N'49160', N'โนนยาง', N'Non Yang', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490703', N'49160', N'ภูวง', N'Phu Wong', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490704', N'49160', N'บ้านเป้า', N'Ban Pao', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490705', N'49160', N'หนองสูงใต้', N'Nong Sung Tai', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'490706', N'49160', N'หนองสูงเหนือ', N'Nong Sung Nuea', N'4907')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500101', N'50200', N'ศรีภูมิ', N'Si Phum', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500102', N'50200', N'พระสิงห์', N'Phra Sing', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500103', N'50100', N'หายยา', N'Hai Ya', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500104', N'50300', N'ช้างม่อย', N'Chang Moi', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500105', N'50100', N'ช้างคลาน', N'Chang Khlan', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500106', N'50000', N'วัดเกต', N'Wat Ket', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500107', N'50300', N'ช้างเผือก', N'Chang Phueak', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500108', N'50200', N'สุเทพ', N'Suthep', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500109', N'50100', N'แม่เหียะ', N'Mae Hia', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500110', N'50100', N'ป่าแดด', N'Pa Daet', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500111', N'50000', N'หนองหอย', N'Nong Hoi', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500112', N'50000', N'ท่าศาลา', N'Tha Sala', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500113', N'50000', N'หนองป่าครั่ง', N'Nong Pa Khrang', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500114', N'50000', N'ฟ้าฮ่าม', N'Fa Ham', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500115', N'50300', N'ป่าตัน', N'Pa Tan', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500116', N'50300', N'สันผีเสื้อ', N'San Phi Suea', N'5001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500203', N'50160', N'บ้านหลวง', N'Ban Luang', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500204', N'50160', N'ข่วงเปา', N'Khuang Pao', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500205', N'50160', N'สบเตี๊ยะ', N'Sop Tia', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500206', N'50240', N'บ้านแปะ', N'Ban Pae', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500207', N'50160', N'ดอยแก้ว', N'Doi Kaeo', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500209', N'50240', N'แม่สอย', N'Mae Soi', N'5002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500301', N'50270', N'ช่างเคิ่ง', N'Chang Khoeng', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500302', N'50270', N'ท่าผา', N'The Pha', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500303', N'50270', N'บ้านทับ', N'Ban Thap', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500304', N'50270', N'แม่ศึก', N'Mae Suek', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500305', N'50270', N'แม่นาจร', N'Mae Na Chon', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500307', N'50270', N'ปางหินฝน', N'Pang Hin Fon', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500308', N'50270', N'กองแขก', N'Kong Khaek', N'5003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500401', N'50170', N'เชียงดาว', N'Chiang Dao', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500402', N'50170', N'เมืองนะ', N'Mueang Na', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500403', N'50170', N'เมืองงาย', N'Mueang Ngai', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500404', N'50170', N'แม่นะ', N'Mae Na', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500405', N'50170', N'เมืองคอง', N'Mueang Khong', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500406', N'50170', N'ปิงโค้ง', N'Ping Khong', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500407', N'50170', N'ทุ่งข้าวพวง', N'Thung Khao Phuang', N'5004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500501', N'50220', N'เชิงดอย', N'Choeng Doi', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500502', N'50220', N'สันปูเลย', N'San Pu Loei', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500503', N'50220', N'ลวงเหนือ', N'Luang Nuea', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500504', N'50220', N'ป่าป้อง', N'Pa Pong', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500505', N'50220', N'สง่าบ้าน', N'Sa-nga Ban', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500506', N'50220', N'ป่าลาน', N'Pa Lan', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500507', N'50220', N'ตลาดขวัญ', N'Talat Khwan', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500508', N'50220', N'สำราญราษฎร์', N'Samran Rat', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500509', N'50220', N'แม่คือ', N'Mae Khue', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500510', N'50220', N'ตลาดใหญ่', N'Talat Yai', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500511', N'50220', N'แม่ฮ้อยเงิน', N'Mae Hoi Ngoen', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500512', N'50220', N'แม่โป่ง', N'Mae Pong', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500513', N'50220', N'ป่าเมี่ยง', N'Pa Miang', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500514', N'50220', N'เทพเสด็จ', N'Thep Sadet', N'5005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500601', N'50150', N'สันมหาพน', N'San Maha Phon', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500602', N'50150', N'แม่แตง', N'Mae Taeng', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500603', N'50150', N'ขี้เหล็ก', N'Khilek', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500604', N'50150', N'ช่อแล', N'Cho Lae', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500605', N'50150', N'แม่หอพระ', N'Mae Ho Phra', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500606', N'50150', N'สบเปิง', N'Sop Poeng', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500607', N'50150', N'บ้านเป้า', N'Ban Pao', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500608', N'50330', N'สันป่ายาง', N'San Pa Yang', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500609', N'50150', N'ป่าแป๋', N'Pa Pae', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500610', N'50150', N'เมืองก๋าย', N'Mueang Kai', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500611', N'50150', N'บ้านช้าง', N'Ban Chang', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500612', N'50150', N'กื้ดช้าง', N'Kuet Chang', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500613', N'50150', N'อินทขิล', N'Inthakhin', N'5006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500701', N'50180', N'ริมใต้', N'Rim Tai', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500702', N'50180', N'ริมเหนือ', N'Rim Nuea', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500703', N'50180', N'สันโป่ง', N'San Pong', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500704', N'50180', N'ขี้เหล็ก', N'Khilek', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500705', N'50330', N'สะลวง', N'Saluang', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500706', N'50180', N'ห้วยทราย', N'Huai Sai', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500707', N'50180', N'แม่แรม', N'Mae Raem', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500708', N'50180', N'โป่งแยง', N'Pong Yaeng', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500709', N'50180', N'แม่สา', N'Mae Sa', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500710', N'50180', N'ดอนแก้ว', N'Don Kaeo', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500711', N'50180', N'เหมืองแก้ว', N'Mueang Kaeo', N'5007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500801', N'50250', N'สะเมิงใต้', N'Samoeng Tai', N'5008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500802', N'50250', N'สะเมิงเหนือ', N'Samoeng Nuea', N'5008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500803', N'50250', N'แม่สาบ', N'Mae Sap', N'5008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500804', N'50250', N'บ่อแก้ว', N'Bo Kaeo', N'5008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500805', N'50250', N'ยั้งเมิน', N'Yang Moen', N'5008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500901', N'50110', N'เวียง', N'Wiang', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500903', N'50110', N'ม่อนปิ่น', N'Mon Pin', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500904', N'50320', N'แม่งอน', N'Mae Ngon', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500905', N'50110', N'แม่สูน', N'Mae Sun', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500906', N'50110', N'สันทราย', N'San Sai', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500910', N'50110', N'แม่คะ', N'Mae Kha', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500911', N'50320', N'แม่ข่า', N'Mae Kha', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'500912', N'50110', N'โป่งน้ำร้อน', N'Pong Nam Ron', N'5009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501001', N'50280', N'แม่อาย', N'Mae Ai', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501002', N'50280', N'แม่สาว', N'Mae Sao', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501003', N'50280', N'สันต้นหมื้อ', N'San Ton Mue', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501004', N'50280', N'แม่นาวาง', N'Mae Na Wang', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501005', N'50280', N'ท่าตอน', N'Tha Ton', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501006', N'50280', N'บ้านหลวง', N'Ban Luang', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501007', N'50280', N'มะลิกา', N'Malika', N'5010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501101', N'50190', N'เวียง', N'Wiang', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501102', N'50190', N'ทุ่งหลวง', N'Thung Luang', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501103', N'50190', N'ป่าตุ้ม', N'Pa Tum', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501104', N'50190', N'ป่าไหน่', N'Pa Nai', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501105', N'50190', N'สันทราย', N'San Sai', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501106', N'50190', N'บ้านโป่ง', N'Ban Pong', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501107', N'50190', N'น้ำแพร่', N'Nam Phrae', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501108', N'50190', N'เขื่อนผาก', N'Khuean Phak', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501109', N'50190', N'แม่แวน', N'Mae Waen', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501110', N'50190', N'แม่ปั๋ง', N'Mae Pang', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501111', N'50190', N'โหล่งขอด', N'Long Khot', N'5011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501201', N'50120', N'ยุหว่า', N'Yu Wa', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501202', N'50120', N'สันกลาง', N'San Klang', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501203', N'50120', N'ท่าวังพร้าว', N'Tha Wang Phrao', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501204', N'50120', N'มะขามหลวง', N'Makham Luang', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501205', N'50120', N'แม่ก๊า', N'Mae Ka', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501206', N'50120', N'บ้านแม', N'Ban Mae', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501207', N'50120', N'บ้านกลาง', N'Ban Klang', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501208', N'50120', N'ทุ่งสะโตก', N'Thung Satok', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501210', N'50120', N'ทุ่งต้อม', N'Thung Tom', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501214', N'50120', N'น้ำบ่อหลวง', N'Nam Bo Luang', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501215', N'50120', N'มะขุนหวาน', N'Makhun Wan', N'5012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501301', N'50130', N'สันกำแพง', N'San Kamphaeng', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501302', N'50130', N'ทรายมูล', N'Sai Mun', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501303', N'50130', N'ร้องวัวแดง', N'Rong Wua Daeng', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501304', N'50130', N'บวกค้าง', N'Buak Khang', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501305', N'50130', N'แช่ช้าง', N'Chae Chang', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501306', N'50130', N'ออนใต้', N'On Tai', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501310', N'50130', N'แม่ปูคา', N'Mae Pu Kha', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501311', N'50130', N'ห้วยทราย', N'Huai Sai', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501312', N'50130', N'ต้นเปา', N'Ton Pao', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501313', N'50130', N'สันกลาง', N'San Klang', N'5013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501401', N'50210', N'สันทรายหลวง', N'San Sai Luang', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501402', N'50210', N'สันทรายน้อย', N'San Sai Noi', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501403', N'50210', N'สันพระเนตร', N'San Phra Net', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501404', N'50210', N'สันนาเม็ง', N'San Na Meng', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501405', N'50210', N'สันป่าเปา', N'San Pa Pao', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501406', N'50210', N'หนองแหย่ง', N'Nong Yaeng', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501407', N'50210', N'หนองจ๊อม', N'Nong Chom', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501408', N'50290', N'หนองหาร', N'Nong Han', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501409', N'50290', N'แม่แฝก', N'Mae Faek', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501410', N'50290', N'แม่แฝกใหม่', N'Mae Faek Mai', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501411', N'50210', N'เมืองเล็น', N'Mueang Len', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501412', N'50210', N'ป่าไผ่', N'Pa Phai', N'5014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501501', N'50230', N'หางดง', N'Hang Dong', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501502', N'50230', N'หนองแก๋ว', N'Nong Kaeo', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501503', N'50230', N'หารแก้ว', N'Han Kaeo', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501504', N'50340', N'หนองตอง', N'Nong Tong', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501505', N'50230', N'ขุนคง', N'Khun Khong', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501506', N'50230', N'สบแม่ข่า', N'Sop Mae Kha', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501507', N'50230', N'บ้านแหวน', N'Ban Waen', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501508', N'50230', N'สันผักหวาน', N'San Phak Wan', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501509', N'50230', N'หนองควาย', N'Nong Khwai', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501510', N'50230', N'บ้านปง', N'Ban Pong', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501511', N'50230', N'น้ำแพร่', N'Nam Phrae', N'5015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501601', N'50240', N'หางดง', N'Hang Dong', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501602', N'50240', N'ฮอด', N'Hot', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501603', N'50240', N'บ้านตาล', N'Ban Tan', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501604', N'50240', N'บ่อหลวง', N'Bo Luang', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501605', N'50240', N'บ่อสลี', N'Bo Sali', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501606', N'50240', N'นาคอเรือ', N'Na Kho Ruea', N'5016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501701', N'50260', N'ดอยเต่า', N'Doi Tao', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501702', N'50260', N'ท่าเดื่อ', N'Tha Duea', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501703', N'50260', N'มืดกา', N'Muet Ka', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501704', N'50260', N'บ้านแอ่น', N'Ban Aen', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501705', N'50260', N'บงตัน', N'Bong Tan', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501706', N'50260', N'โปงทุ่ง', N'Pong Thung', N'5017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501801', N'50310', N'อมก๋อย', N'Omkoi', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501802', N'50310', N'ยางเปียง', N'Yang Piang', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501803', N'50310', N'แม่ตื่น', N'Mae Tuen', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501804', N'50310', N'ม่อนจอง', N'Mon Chong', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501805', N'50310', N'สบโขง', N'Sop Khong', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501806', N'50310', N'นาเกียน', N'Na Kian', N'5018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501901', N'50140', N'ยางเนิ้ง', N'Yang Noeng', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501902', N'50140', N'สารภี', N'Saraphi', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501903', N'50140', N'ชมภู', N'Chomphu', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501904', N'50140', N'ไชยสถาน', N'Chai Sathan', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501905', N'50140', N'ขัวมุง', N'Khua Mung', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501906', N'50140', N'หนองแฝก', N'Nong Faek', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501907', N'50140', N'หนองผึ้ง', N'Nong Phueng', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501908', N'50140', N'ท่ากว้าง', N'Tha Kwang', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501909', N'50140', N'ดอนแก้ว', N'Don Kaeo', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501910', N'50140', N'ท่าวังตาล', N'Tha Wang Tan', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501911', N'50140', N'สันทราย', N'San Sai', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'501912', N'50140', N'ป่าบง', N'Pa Bong', N'5019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502001', N'50350', N'เมืองแหง', N'Mueang Haeng', N'5020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502002', N'50350', N'เปียงหลวง', N'Piang Luang', N'5020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502003', N'50350', N'แสนไห', N'Saen Hai', N'5020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502101', N'50320', N'ปงตำ', N'Pong Tam', N'5021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502102', N'50320', N'ศรีดงเย็น', N'Si Dong Yen', N'5021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502103', N'50320', N'แม่ทะลบ', N'Mae Thalop', N'5021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502104', N'50320', N'หนองบัว', N'Nong Bua', N'5021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502201', N'50360', N'บ้านกาด', N'Ban Kat', N'5022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502202', N'50360', N'ทุ่งปี๊', N'Thung Pi', N'5022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502203', N'50360', N'ทุ่งรวงทอง', N'Thung Ruang Thong', N'5022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502204', N'50360', N'แม่วิน', N'Mae Win', N'5022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502205', N'50360', N'ดอนเปา', N'Don Pao', N'5022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502301', N'50130', N'ออนเหนือ', N'On Nuea', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502302', N'50130', N'ออนกลาง', N'On Klang', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502303', N'50130', N'บ้านสหกรณ์', N'Ban Sahakon', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502304', N'50130', N'ห้วยแก้ว', N'Huai Kaeo', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502305', N'50130', N'แม่ทา', N'Mae Tha', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502306', N'50130', N'ทาเหนือ', N'Tha Nuea', N'5023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502401', N'50160', N'ดอยหล่อ', N'Doi Lo', N'5024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502402', N'50160', N'สองแคว', N'Song Khwae', N'5024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502403', N'50160', N'ยางคราม', N'Yang Khram', N'5024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502404', N'50160', N'สันติสุข', N'Santi Suk', N'5024')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502501', N'58130', N'บ้านจันทร์', N'Ban Chan', N'5025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502502', N'58130', N'แม่แดด', N'Mae Daet', N'5025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'502503', N'58130', N'แจ่มหลวง', N'Chaem Luang', N'5025')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510101', N'51000', N'ในเมือง', N'Nai Mueang', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510102', N'51000', N'เหมืองง่า', N'Mueang Nga', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510103', N'51150', N'อุโมงค์', N'Umong', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510104', N'51150', N'หนองช้างคืน', N'Nong Chang Khuen', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510105', N'51000', N'ประตูป่า', N'Pratu Pa', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510106', N'51000', N'ริมปิง', N'Rim Ping', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510107', N'51000', N'ต้นธง', N'Ton Thong', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510108', N'51000', N'บ้านแป้น', N'Ban Paen', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510109', N'51000', N'เหมืองจี้', N'Mueang Chi', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510110', N'51000', N'ป่าสัก', N'Pa Sak', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510111', N'51000', N'เวียงยอง', N'Wiang Yong', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510112', N'51000', N'บ้านกลาง', N'Ban Klang', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510113', N'51000', N'มะเขือแจ้', N'Makhuea Chae', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510116', N'51000', N'ศรีบัวบาน', N'Si Bua Ban', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510117', N'51000', N'หนองหนาม', N'Nong Nam', N'5101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510201', N'51140', N'ทาปลาดุก', N'Tha Pla Duk', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510202', N'51140', N'ทาสบเส้า', N'Tha Sop Sao', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510203', N'51170', N'ทากาศ', N'Tha Kat', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510204', N'51170', N'ทาขุมเงิน', N'Tha Khum Ngoen', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510205', N'51170', N'ทาทุ่งหลวง', N'Tha Thung Luang', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510206', N'51170', N'ทาแม่ลอบ', N'Tha Mae Lop', N'5102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510301', N'51130', N'บ้านโฮ่ง', N'Ban Hong', N'5103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510302', N'51130', N'ป่าพลู', N'Pa Phlu', N'5103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510303', N'51130', N'เหล่ายาว', N'Lao Yao', N'5103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510304', N'51130', N'ศรีเตี้ย', N'Si Tia', N'5103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510305', N'51130', N'หนองปลาสะวาย', N'Nong Pla Sawai', N'5103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510401', N'51110', N'ลี้', N'Li', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510402', N'51110', N'แม่ตืน', N'Mae Tuen', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510403', N'51110', N'นาทราย', N'Na Sai', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510404', N'51110', N'ดงดำ', N'Dong Dam', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510405', N'51110', N'ก้อ', N'Ko', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510406', N'51110', N'แม่ลาน', N'Mae Lan', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510408', N'51110', N'ป่าไผ่', N'Pha Phai', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510409', N'51110', N'ศรีวิชัย', N'Si Wichai', N'5104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510501', N'51160', N'ทุ่งหัวช้าง', N'Thung Hua Chang', N'5105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510502', N'51160', N'บ้านปวง', N'Ban Puang', N'5105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510503', N'51160', N'ตะเคียนปม', N'Takhian Pom', N'5105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510601', N'51120', N'ปากบ่อง', N'Pak Bong', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510602', N'51120', N'ป่าซาง', N'Pa Sang', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510603', N'51120', N'แม่แรง', N'Mae Raeng', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510604', N'51120', N'ม่วงน้อย', N'Muang Noi', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510605', N'51120', N'บ้านเรือน', N'Ban Ruean', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510606', N'51120', N'มะกอก', N'Makok', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510607', N'51120', N'ท่าตุ้ม', N'Tha Tum', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510608', N'51120', N'น้ำดิบ', N'Nam Dip', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510611', N'51120', N'นครเจดีย์', N'Nakhon Chedi', N'5106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510701', N'51180', N'บ้านธิ', N'Ban Thi', N'5107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510702', N'51180', N'ห้วยยาบ', N'Huai Yap', N'5107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510801', N'51120', N'หนองล่อง', N'Nong Long', N'5108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510802', N'51120', N'หนองยวง', N'Nong Yuang', N'5108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'510803', N'51120', N'วังผาง', N'Wang Phang', N'5108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520101', N'52000', N'เวียงเหนือ', N'Wiang Nuea', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520102', N'52000', N'หัวเวียง', N'Hua Wiang', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520103', N'52100', N'สวนดอก', N'Suan Dok', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520104', N'52100', N'สบตุ๋ย', N'Sop Tui', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520105', N'52000', N'พระบาท', N'Phra Bat', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520106', N'52100', N'ชมพู', N'Chomphu', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520107', N'52000', N'กล้วยแพะ', N'Kluai Phae', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520108', N'52100', N'ปงแสนทอง', N'Pong Saen Thong', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520109', N'52000', N'บ้านแลง', N'Ban Laeng', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520110', N'52000', N'บ้านเสด็จ', N'Ban Sadet', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520111', N'52000', N'พิชัย', N'Phichai', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520112', N'52000', N'ทุ่งฝาย', N'Thung Fai', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520113', N'52100', N'บ้านเอื้อม', N'Ban Ueam', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520114', N'52100', N'บ้านเป้า', N'Ban Pao', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520115', N'52100', N'บ้านค่า', N'Ban Kha', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520116', N'52100', N'บ่อแฮ้ว', N'Bo Haeo', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520117', N'52000', N'ต้นธงชัย', N'Ton Thong Chai', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520118', N'52000', N'นิคมพัฒนา', N'Nikhom Phatthana', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520119', N'52000', N'บุญนาคพัฒนา', N'Bunnak Phatthana', N'5201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520201', N'52220', N'บ้านดง', N'Ban Dong', N'5202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520202', N'52220', N'นาสัก', N'Na Sak', N'5202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520203', N'52220', N'จางเหนือ', N'Chang Nuea', N'5202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520204', N'52220', N'แม่เมาะ', N'Mae Mo', N'5202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520205', N'52220', N'สบป้าด', N'Sop Pat', N'5202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520301', N'52130', N'ลำปางหลวง', N'Lampang Luang', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520302', N'52130', N'นาแก้ว', N'Na Kaeo', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520303', N'52130', N'ไหล่หิน', N'Lai Hin', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520304', N'52130', N'วังพร้าว', N'Wang Phrao', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520305', N'52130', N'ศาลา', N'Sala', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520306', N'52130', N'เกาะคา', N'Ko Kha', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520307', N'52130', N'นาแส่ง', N'Na Saeng', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520308', N'52130', N'ท่าผา', N'Tha Pha', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520309', N'52130', N'ใหม่พัฒนา', N'Mai Phatthana', N'5203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520401', N'52210', N'ทุ่งงาม', N'Thung Ngam', N'5204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520402', N'52210', N'เสริมขวา', N'Soem Khwa', N'5204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520403', N'52210', N'เสริมซ้าย', N'Soem Sai', N'5204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520404', N'52210', N'เสริมกลาง', N'Soem Klang', N'5204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520501', N'52110', N'หลวงเหนือ', N'Luang Nuea', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520502', N'52110', N'หลวงใต้', N'Luang Tai', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520503', N'52110', N'บ้านโป่ง', N'Ban Pong', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520504', N'52110', N'บ้านร้อง', N'Ban Rong', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520505', N'52110', N'ปงเตา', N'Pong Tao', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520506', N'52110', N'นาแก', N'Na Kae', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520507', N'52110', N'บ้านอ้อน', N'Ban On', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520508', N'52110', N'บ้านแหง', N'Ban Haeng', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520509', N'52110', N'บ้านหวด', N'Ban Huat', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520510', N'52110', N'แม่ตีบ', N'Mae Tip', N'5205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520601', N'52120', N'แจ้ห่ม', N'Chae Hom', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520602', N'52120', N'บ้านสา', N'Ban Sa', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520603', N'52120', N'ปงดอน', N'Pong Don', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520604', N'52120', N'แม่สุก', N'Mae Suk', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520605', N'52120', N'เมืองมาย', N'Mueang Mai', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520606', N'52120', N'ทุ่งผึ้ง', N'Thung Phueng', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520607', N'52120', N'วิเชตนคร', N'Wichet Nakhon', N'5206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520701', N'52140', N'ทุ่งฮั้ว', N'Thung Hua', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520702', N'52140', N'วังเหนือ', N'Wang Nuea', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520703', N'52140', N'วังใต้', N'Wang Tai', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520704', N'52140', N'ร่องเคาะ', N'Rong Kho', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520705', N'52140', N'วังทอง', N'Wang Thong', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520706', N'52140', N'วังซ้าย', N'Wang Sai', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520707', N'52140', N'วังแก้ว', N'Wang Kaeo', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520708', N'52140', N'วังทรายคำ', N'Wang Sai Kham', N'5207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520801', N'52160', N'ล้อมแรด', N'Lom Raet', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520802', N'52230', N'แม่วะ', N'Mae Wa', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520803', N'52160', N'แม่ปะ', N'Mae Pa', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520804', N'52160', N'แม่มอก', N'Mae Mok', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520805', N'52160', N'เวียงมอก', N'Wiang Mok', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520806', N'52160', N'นาโป่ง', N'Na Pong', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520807', N'52160', N'แม่ถอด', N'Mae Thot', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520808', N'52160', N'เถินบุรี', N'Thoen Buri', N'5208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520901', N'52180', N'แม่พริก', N'Mae Phrik', N'5209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520902', N'52180', N'ผาปัง', N'Pha Pang', N'5209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520903', N'52180', N'แม่ปุ', N'Mae Pu', N'5209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'520904', N'52230', N'พระบาทวังตวง', N'Phra Bat Wang Tuang', N'5209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521001', N'52150', N'แม่ทะ', N'Mae Tha', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521002', N'52150', N'นาครัว', N'Na Khrua', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521003', N'52150', N'ป่าตัน', N'Pa Tan', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521004', N'52150', N'บ้านกิ่ว', N'Ban Kio', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521005', N'52150', N'บ้านบอม', N'Ban Bom', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521006', N'52150', N'น้ำโจ้', N'Nam Cho', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521007', N'52150', N'ดอนไฟ', N'Don Fai', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521008', N'52150', N'หัวเสือ', N'Hua Suea', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521010', N'52150', N'วังเงิน', N'Wang Ngoen', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521011', N'52150', N'สันดอนแก้ว', N'San Don Kaeo', N'5210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521101', N'52170', N'สบปราบ', N'Sop Prap', N'5211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521102', N'52170', N'สมัย', N'Samai', N'5211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521103', N'52170', N'แม่กัวะ', N'Mae Kua', N'5211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521104', N'52170', N'นายาง', N'Na Yang', N'5211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521201', N'52190', N'ห้างฉัตร', N'Hang Chat', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521202', N'52190', N'หนองหล่ม', N'Nong Lom', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521203', N'52190', N'เมืองยาว', N'Mueang Yao', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521204', N'52190', N'ปงยางคก', N'Pong Yang Khok', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521205', N'52190', N'เวียงตาล', N'Wiang Tan', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521206', N'52190', N'แม่สัน', N'Mae San', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521207', N'52190', N'วอแก้ว', N'Wo Kaeo', N'5212')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521301', N'52240', N'เมืองปาน', N'Mueang Pan', N'5213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521302', N'52240', N'บ้านขอ', N'Ban Kho', N'5213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521303', N'52240', N'ทุ่งกว๋าว', N'Thung Kwao', N'5213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521304', N'52240', N'แจ้ซ้อน', N'Chae Son', N'5213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'521305', N'52240', N'หัวเมือง', N'Hua Mueang', N'5213')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530101', N'53000', N'ท่าอิฐ', N'Tha It', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530102', N'53000', N'ท่าเสา', N'Tha Sao', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530103', N'53000', N'บ้านเกาะ', N'Ban Ko', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530104', N'53000', N'ป่าเซ่า', N'Pa Sao', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530105', N'53000', N'คุ้งตะเภา', N'Khung Taphao', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530106', N'53170', N'วังกะพี้', N'Wang Kaphi', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530107', N'53000', N'หาดกรวด', N'Hat Kruat', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530108', N'53000', N'น้ำริด', N'Nam Rit', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530109', N'53000', N'งิ้วงาม', N'Ngio Ngam', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530110', N'53000', N'บ้านด่านนาขาม', N'Ban Dan Na Kham', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530111', N'53000', N'บ้านด่าน', N'Ban Dan', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530112', N'53000', N'ผาจุก', N'Pha Chuk', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530113', N'53000', N'วังดิน', N'Wang Din', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530114', N'53000', N'แสนตอ', N'Saen To', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530115', N'53000', N'หาดงิ้ว', N'Hat Ngio', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530116', N'53000', N'ขุนฝาง', N'Khun Fang', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530117', N'53000', N'ถ้ำฉลอง', N'Tham Chalong', N'5301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530201', N'53140', N'วังแดง', N'Wang Daeng', N'5302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530202', N'53140', N'บ้านแก่ง', N'Ban Kaeng', N'5302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530203', N'53140', N'หาดสองแคว', N'Hat Song Khwae', N'5302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530204', N'53140', N'น้ำอ่าง', N'Nam Ang', N'5302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530205', N'53140', N'ข่อยสูง', N'Khoi Sung', N'5302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530301', N'53150', N'ท่าปลา', N'Tha Pla', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530302', N'53190', N'หาดล้า', N'Hat La', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530303', N'53190', N'ผาเลือด', N'Pha Lueat', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530304', N'53150', N'จริม', N'Chalim', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530305', N'53150', N'น้ำหมัน', N'Nam Man', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530307', N'53150', N'นางพญา', N'Nang Phaya', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530308', N'53190', N'ร่วมจิต', N'Ruam Chit', N'5303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530401', N'53110', N'แสนตอ', N'Saen To', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530402', N'53110', N'บ้านฝาย', N'Ban Fai', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530403', N'53110', N'เด่นเหล็ก', N'Den Lek', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530404', N'53110', N'น้ำไคร้', N'Nam Khrai', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530405', N'53110', N'น้ำไผ่', N'Nam Phai', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530406', N'53110', N'ห้วยมุ่น', N'Huai Mun', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530407', N'53110', N'ท่าแฝก', N'Tha Faek', N'5304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530501', N'53160', N'ฟากท่า', N'Fak Tha', N'5305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530502', N'53160', N'สองคอน', N'Song Khon', N'5305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530503', N'53160', N'บ้านเสี้ยว', N'Ban Siao', N'5305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530504', N'53160', N'สองห้อง', N'Song Hong', N'5305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530601', N'53180', N'ม่วงเจ็ดต้น', N'Muang Chet Ton', N'5306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530602', N'53180', N'บ้านโคก', N'Ban Khok', N'5306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530603', N'53180', N'นาขุม', N'Na Khum', N'5306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530604', N'53180', N'บ่อเบี้ย', N'Bo Bia', N'5306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530701', N'53120', N'ในเมือง', N'Nai Mueang', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530702', N'53220', N'บ้านดารา', N'Ban Dara', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530703', N'53120', N'ไร่อ้อย', N'Rai Oi', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530704', N'53220', N'ท่าสัก', N'Tha Sak', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530705', N'53120', N'คอรุม', N'Kho Rum', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530706', N'53120', N'บ้านหม้อ', N'Ban Mo', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530707', N'53120', N'ท่ามะเฟือง', N'Tha Mafueang', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530708', N'53120', N'บ้านโคน', N'Ban Khon', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530709', N'53120', N'พญาแมน', N'Phaya Maen', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530710', N'53120', N'นาอิน', N'Na In', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530711', N'53120', N'นายาง', N'Na Yang', N'5307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530801', N'53130', N'ศรีพนมมาศ', N'Si Phanom Mat', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530802', N'53130', N'แม่พูล', N'Mae Phun', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530803', N'53130', N'นานกกก', N'Na Nok Kok', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530804', N'53130', N'ฝายหลวง', N'Fai Luang', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530805', N'53130', N'ชัยจุมพล', N'Chai Chumphon', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530806', N'53210', N'ไผ่ล้อม', N'Phai Lom', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530807', N'53210', N'ทุ่งยั้ง', N'Thung Yang', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530808', N'53210', N'ด่านแม่คำมัน', N'Dan Mae Kham Man', N'5308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530901', N'53230', N'ผักขวง', N'Phak Khuang', N'5309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530902', N'53230', N'บ่อทอง', N'Bo Thong', N'5309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530903', N'53230', N'ป่าคาย', N'Pa Khai', N'5309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'530904', N'53230', N'น้ำพี้', N'Nam Phi', N'5309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540101', N'54000', N'ในเวียง', N'Nai Wiang', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540102', N'54000', N'นาจักร', N'Na Chak', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540103', N'54000', N'น้ำชำ', N'Nam Cham', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540104', N'54000', N'ป่าแดง', N'Pa Daeng', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540105', N'54000', N'ทุ่งโฮ้ง', N'Thung Hong', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540106', N'54000', N'เหมืองหม้อ', N'Mueang Mo', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540107', N'54000', N'วังธง', N'Wang Thong', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540108', N'54000', N'แม่หล่าย', N'Mae Lai', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540109', N'54000', N'ห้วยม้า', N'Huai Ma', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540110', N'54000', N'ป่าแมต', N'Pa Maet', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540111', N'54000', N'บ้านถิ่น', N'Ban Thin', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540112', N'54000', N'สวนเขื่อน', N'Suan Khuean', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540113', N'54000', N'วังหงส์', N'Wang Hong', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540114', N'54000', N'แม่คำมี', N'Mae Kham Mi', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540115', N'54000', N'ทุ่งกวาว', N'Thung Kwao', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540116', N'54000', N'ท่าข้าม', N'Tha Kham', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540117', N'54000', N'แม่ยม', N'Mae Yom', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540118', N'54000', N'ช่อแฮ', N'Cho Hae', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540119', N'54000', N'ร่องฟอง', N'Rong Fong', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540120', N'54000', N'กาญจนา', N'Kanchana', N'5401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540201', N'54140', N'ร้องกวาง', N'Rong Kwang', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540204', N'54140', N'ร้องเข็ม', N'Rong Khem', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540205', N'54140', N'น้ำเลา', N'Nam Lao', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540206', N'54140', N'บ้านเวียง', N'Ban Wiang', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540207', N'54140', N'ทุ่งศรี', N'Thung Si', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540208', N'54140', N'แม่ยางตาล', N'Mae Yang Tan', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540209', N'54140', N'แม่ยางฮ่อ', N'Mae Yang Ho', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540210', N'54140', N'ไผ่โทน', N'Phai Thon', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540213', N'54140', N'ห้วยโรง', N'Huai Rong', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540214', N'54140', N'แม่ทราย', N'Mae Sai', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540215', N'54140', N'แม่ยางร้อง', N'Mae Yang Rong', N'5402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540301', N'54150', N'ห้วยอ้อ', N'Huai O', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540302', N'54150', N'บ้านปิน', N'Ban Pin', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540303', N'54150', N'ต้าผามอก', N'Ta Pha Mok', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540304', N'54150', N'เวียงต้า', N'Wiang Ta', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540305', N'54150', N'ปากกาง', N'Pak Kang', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540306', N'54150', N'หัวทุ่ง', N'Hua Thung', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540307', N'54150', N'ทุ่งแล้ง', N'Thung Laeng', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540308', N'54150', N'บ่อเหล็กลอง', N'Bo Lek Long', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540309', N'54150', N'แม่ปาน', N'Mae Pan', N'5403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540401', N'54130', N'สูงเม่น', N'Sung Men', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540402', N'54130', N'น้ำชำ', N'Nam Cham', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540403', N'54130', N'หัวฝาย', N'Hua Fai', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540404', N'54130', N'ดอนมูล', N'Don Mun', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540405', N'54130', N'บ้านเหล่า', N'Ban Lao', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540406', N'54130', N'บ้านกวาง', N'Ban Kwang', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540407', N'54130', N'บ้านปง', N'Ban Pong', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540408', N'54130', N'บ้านกาศ', N'Ban Kat', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540409', N'54130', N'ร่องกาศ', N'Rong Kat', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540410', N'54130', N'สบสาย', N'Sop Sai', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540411', N'54000', N'เวียงทอง', N'Wiang Thong', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540412', N'54130', N'พระหลวง', N'Phra Luang', N'5404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540501', N'54110', N'เด่นชัย', N'Den Chai', N'5405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540502', N'54110', N'แม่จั๊วะ', N'Mae Chua', N'5405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540503', N'54110', N'ไทรย้อย', N'Sai Yoi', N'5405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540504', N'54110', N'ห้วยไร่', N'Huai Rai', N'5405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540505', N'54110', N'ปงป่าหวาย', N'Pong Pa Wai', N'5405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540601', N'54120', N'บ้านหนุน', N'Ban Nun', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540602', N'54120', N'บ้านกลาง', N'Ban Klang', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540603', N'54120', N'ห้วยหม้าย', N'Huai Mai', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540604', N'54120', N'เตาปูน', N'Tao Pun', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540605', N'54120', N'หัวเมือง', N'Hua Mueang', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540606', N'54120', N'สะเอียบ', N'Sa-iap', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540607', N'54120', N'แดนชุมพล', N'Daen Chumphon', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540608', N'54120', N'ทุ่งน้าว', N'Thung Nao', N'5406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540701', N'54160', N'วังชิ้น', N'Wang Chin', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540702', N'54160', N'สรอย', N'Soi', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540703', N'54160', N'แม่ป้าก', N'Mae Pak', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540704', N'54160', N'นาพูน', N'Na Phun', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540705', N'54160', N'แม่พุง', N'Mae Phung', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540706', N'54160', N'ป่าสัก', N'Pa Sak', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540707', N'54160', N'แม่เกิ๋ง', N'Mae Koeng', N'5407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540801', N'54170', N'แม่คำมี', N'Mae Kham Mi', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540802', N'54170', N'หนองม่วงไข่', N'Nong Muang Khai', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540803', N'54170', N'น้ำรัด', N'Nam Rat', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540804', N'54170', N'วังหลวง', N'wang Luang', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540805', N'54170', N'ตำหนักธรรม', N'Tamnak Tham', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'540806', N'54170', N'ทุ่งแค้ว', N'Thung Khaeo', N'5408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550101', N'55000', N'ในเวียง', N'Nai Wiang', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550102', N'55000', N'บ่อ', N'Bo', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550103', N'55000', N'ผาสิงห์', N'Pha Sing', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550104', N'55000', N'ไชยสถาน', N'Chai Sathan', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550105', N'55000', N'ถืมตอง', N'Thuem Tong', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550106', N'55000', N'เรือง', N'Rueang', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550107', N'55000', N'นาซาว', N'Na Sao', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550108', N'55000', N'ดู่ใต้', N'Du Tai', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550109', N'55000', N'กองควาย', N'Kong Khwai', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550116', N'55000', N'บ่อสวก', N'Bo Suak', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550117', N'55000', N'สะเนียน', N'Sanian', N'5501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550202', N'55170', N'หนองแดง', N'Nong Daeng', N'5502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550203', N'55170', N'หมอเมือง', N'Mo Mueang', N'5502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550204', N'55170', N'น้ำพาง', N'Nam Phang', N'5502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550205', N'55170', N'น้ำปาย', N'Nam Pai', N'5502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550206', N'55170', N'แม่จริม', N'Mae Charim', N'5502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550301', N'55190', N'บ้านฟ้า', N'Ban Fa', N'5503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550302', N'55190', N'ป่าคาหลวง', N'Pa Kha Luang', N'5503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550303', N'55190', N'สวด', N'Suat', N'5503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550304', N'55190', N'บ้านพี้', N'Ban Phi', N'5503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550401', N'55150', N'นาน้อย', N'Na Noi', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550402', N'55150', N'เชียงของ', N'Chiang Khong', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550403', N'55150', N'ศรีษะเกษ', N'Sisa Ket', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550404', N'55150', N'สถาน', N'Sathan', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550405', N'55150', N'สันทะ', N'Santha', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550406', N'55150', N'บัวใหญ่', N'Bua Yai', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550407', N'55150', N'น้ำตก', N'Nam Tok', N'5504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550501', N'55120', N'ปัว', N'Pua', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550502', N'55120', N'แงง', N'Ngaeng', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550503', N'55120', N'สถาน', N'Sathan', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550504', N'55120', N'ศิลาแลง', N'Sila Laeng', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550505', N'55120', N'ศิลาเพชร', N'Sila Phet', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550506', N'55120', N'อวน', N'Uan', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550509', N'55120', N'ไชยวัฒนา', N'Chai Watthana', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550510', N'55120', N'เจดีย์ชัย', N'Chedi Chai', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550511', N'55120', N'ภูคา', N'Phu Kha', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550512', N'55120', N'สกาด', N'Sakat', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550513', N'55120', N'ป่ากลาง', N'Pa Klang', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550514', N'55120', N'วรนคร', N'Woranakhon', N'5505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550601', N'55140', N'ริม', N'Rim', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550602', N'55140', N'ป่าคา', N'Pa Kha', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550603', N'55140', N'ผาตอ', N'Pha To', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550604', N'55140', N'ยม', N'Yom', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550605', N'55140', N'ตาลชุม', N'Tan Chum', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550606', N'55140', N'ศรีภูมิ', N'Si Phum', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550607', N'55140', N'จอมพระ', N'Chom Phra', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550608', N'55140', N'แสนทอง', N'Saen Thong', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550609', N'55140', N'ท่าวังผา', N'Tha Wang Pha', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550610', N'55140', N'ผาทอง', N'Pha Thong', N'5506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550701', N'55110', N'กลางเวียง', N'Klang Wiang', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550702', N'55110', N'ขึ่ง', N'Khueng', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550703', N'55110', N'ไหล่น่าน', N'Lai Nan', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550704', N'55110', N'ตาลชุม', N'Tan Chum', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550705', N'55110', N'นาเหลือง', N'Na Lueang', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550706', N'55110', N'ส้าน', N'San', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550707', N'55110', N'น้ำมวบ', N'Nam Muap', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550708', N'55110', N'น้ำปั้ว', N'Nam Pua', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550709', N'55110', N'ยาบหัวนา', N'Yap Hua Na', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550710', N'55110', N'ปงสนุก', N'Pong Sanuk', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550711', N'55110', N'อ่ายนาไลย', N'Ai Na Lai', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550712', N'55110', N'ส้านนาหนองใหม่', N'San Na Nong Mai', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550713', N'55110', N'แม่ขะนิง', N'Mae Khaning', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550714', N'55110', N'แม่สาคร', N'Mae Sakhon', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550715', N'55110', N'จอมจันทร์', N'Chom Chan', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550716', N'55110', N'แม่สา', N'Mae Sa', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550717', N'55110', N'ทุ่งศรีทอง', N'Thung Si Thong', N'5507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550801', N'55130', N'ปอน', N'Pon', N'5508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550802', N'55130', N'งอบ', N'Ngop', N'5508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550803', N'55130', N'และ', N'Lae', N'5508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550804', N'55130', N'ทุ่งช้าง', N'Thung Chang', N'5508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550901', N'55160', N'เชียงกลาง', N'Chiang Klang', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550902', N'55160', N'เปือ', N'Puea', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550903', N'55160', N'เชียงคาน', N'Chiang Khan', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550904', N'55160', N'พระธาตุ', N'Phra That', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550908', N'55160', N'พญาแก้ว', N'Phaya Kaeo', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'550909', N'55160', N'พระพุทธบาท', N'Phra Phutthabat', N'5509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551001', N'55180', N'นาทะนุง', N'Na Thanung', N'5510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551002', N'55180', N'บ่อแก้ว', N'Bo Kaeo', N'5510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551003', N'55180', N'เมืองลี', N'Mueang Li', N'5510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551004', N'55180', N'ปิงหลวง', N'Ping Luang', N'5510')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551101', N'55210', N'ดู่พงษ์', N'Du Phong', N'5511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551102', N'55210', N'ป่าแลวหลวง', N'Pa Laeo Luang', N'5511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551103', N'55210', N'พงษ์', N'Phong', N'5511')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551201', N'55220', N'บ่อเกลือเหนือ', N'Bo Kluea Nuea', N'5512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551202', N'55220', N'บ่อเกลือใต้', N'Bo Kluea Tai', N'5512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551204', N'55220', N'ภูฟ้า', N'Phu Fa', N'5512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551205', N'55220', N'ดงพญา', N'Dong Phaya', N'5512')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551301', N'55160', N'นาไร่หลวง', N'Na Rai Luang', N'5513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551302', N'55160', N'ชนแดน', N'Chon Daen', N'5513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551303', N'55160', N'ยอด', N'Yot', N'5513')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551401', N'55000', N'ม่วงตึ๊ด', N'Muang Tuet', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551402', N'55000', N'นาปัง', N'Na Pang', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551403', N'55000', N'น้ำแก่น', N'Nam Kaen', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551404', N'55000', N'น้ำเกี๋ยน', N'Nam Kian', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551405', N'55000', N'เมืองจัง', N'Mueang Chang', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551406', N'55000', N'ท่าน้าว', N'Tha Nao', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551407', N'55000', N'ฝายแก้ว', N'Fai Kaeo', N'5514')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551501', N'55130', N'ห้วยโก๋น', N'Huai Kon', N'5515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'551502', N'55220', N'ขุนน่าน', N'Khun Nan', N'5515')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560101', N'56000', N'เวียง', N'Wiang', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560102', N'56000', N'แม่ต๋ำ', N'Mae Tam', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560104', N'56000', N'แม่นาเรือ', N'Mae Na Ruea', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560105', N'56000', N'บ้านตุ่น', N'Ban Tun', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560106', N'56000', N'บ้านต๊ำ', N'Ban Tam', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560107', N'56000', N'บ้านต๋อม', N'Ban Tom', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560108', N'56000', N'แม่ปืม', N'Mae Puem', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560110', N'56000', N'แม่กา', N'Mae Ka', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560111', N'56000', N'บ้านใหม่', N'Ban Mai', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560112', N'56000', N'จำป่าหวาย', N'Cham Pa Wai', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560113', N'56000', N'ท่าวังทอง', N'Tha Wang Thong', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560114', N'56000', N'แม่ใส', N'Mae Sai', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560115', N'56000', N'บ้านสาง', N'Ban Sang', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560116', N'56000', N'ท่าจำปี', N'Tha Champi', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560118', N'56000', N'สันป่าม่วง', N'San Pa Muang', N'5601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560201', N'56150', N'ห้วยข้าวก่ำ', N'Huai Khao Kam', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560202', N'56150', N'จุน', N'Chun', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560203', N'56150', N'ลอ', N'Lo', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560204', N'56150', N'หงส์หิน', N'Hong Hin', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560205', N'56150', N'ทุ่งรวงทอง', N'Thung Ruang Thong', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560206', N'56150', N'ห้วยยางขาม', N'Huai Yang Kham', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560207', N'56150', N'พระธาตุขิงแกง', N'Phra That Khing Kaeng', N'5602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560301', N'56110', N'หย่วน', N'Yuan', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560306', N'56110', N'น้ำแวน', N'Nam Waen', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560307', N'56110', N'เวียง', N'Wiang', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560308', N'56110', N'ฝายกวาง', N'Fai Kwang', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560309', N'56110', N'เจดีย์คำ', N'Chedi Kham', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560310', N'56110', N'ร่มเย็น', N'Rom Yen', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560311', N'56110', N'เชียงบาน', N'Chiang Ban', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560312', N'56110', N'แม่ลาว', N'Mae Lao', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560313', N'56110', N'อ่างทอง', N'Ang Thong', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560314', N'56110', N'ทุ่งผาสุข', N'Thung Pha Suk', N'5603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560401', N'56160', N'เชียงม่วน', N'Chiang Muan', N'5604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560402', N'56160', N'บ้านมาง', N'Ban Mang', N'5604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560403', N'56160', N'สระ', N'Sa', N'5604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560501', N'56120', N'ดอกคำใต้', N'Dok Kham Tai', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560502', N'56120', N'ดอนศรีชุม', N'Don Si Chum', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560503', N'56120', N'บ้านถ้ำ', N'Ban Tham', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560504', N'56120', N'บ้านปิน', N'Ban Pin', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560505', N'56120', N'ห้วยลาน', N'Huai Lan', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560506', N'56120', N'สันโค้ง', N'San Khong', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560507', N'56120', N'ป่าซาง', N'Pa Sang', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560508', N'56120', N'หนองหล่ม', N'Nong Lom', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560509', N'56120', N'ดงสุวรรณ', N'Dong Suwan', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560510', N'56120', N'บุญเกิด', N'Bun Koet', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560511', N'56120', N'สว่างอารมณ์', N'Sawang Arom', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560512', N'56120', N'คือเวียง', N'Khue Wiang', N'5605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560601', N'56140', N'ปง', N'Pong', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560602', N'56140', N'ควร', N'Khuan', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560603', N'56140', N'ออย', N'Oi', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560604', N'56140', N'งิม', N'Ngim', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560605', N'56140', N'ผาช้างน้อย', N'Pha Chang Noi', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560606', N'56140', N'นาปรัง', N'Na Prang', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560607', N'56140', N'ขุนควร', N'Khun Khuan', N'5606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560701', N'56130', N'แม่ใจ', N'Mae Chai', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560702', N'56130', N'ศรีถ้อย', N'Si Thoi', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560703', N'56130', N'แม่สุก', N'Mae Suk', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560704', N'56130', N'ป่าแฝก', N'Pa Faek', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560705', N'56130', N'บ้านเหล่า', N'Ban Lao', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560706', N'56130', N'เจริญราษฎร์', N'Charoen Rat', N'5607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560801', N'56110', N'ภูซาง', N'Phu Sang', N'5608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560802', N'56110', N'ป่าสัก', N'Pa Sak', N'5608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560803', N'56110', N'ทุ่งกล้วย', N'Thung Kluai', N'5608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560804', N'56110', N'เชียงแรง', N'Chiang Raeng', N'5608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560805', N'56110', N'สบบง', N'Sop Bong', N'5608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560901', N'56000', N'ห้วยแก้ว', N'Huai Kaeo', N'5609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560902', N'56000', N'ดงเจน', N'Dong Chen', N'5609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'560903', N'56000', N'แม่อิง', N'Mae Ing', N'5609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570101', N'57000', N'เวียง', N'Wiang', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570102', N'57000', N'รอบเวียง', N'Rop Wiang', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570103', N'57100', N'บ้านดู่', N'Ban Du', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570104', N'57100', N'นางแล', N'Nang Lae', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570105', N'57100', N'แม่ข้าวต้ม', N'Mae Khao Tom', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570106', N'57100', N'แม่ยาว', N'Mae Yao', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570107', N'57000', N'สันทราย', N'San Sai', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570111', N'57000', N'แม่กรณ์', N'Mae Kon', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570112', N'57000', N'ห้วยชมภู', N'Huai Chomphu', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570113', N'57000', N'ห้วยสัก', N'Huai Sak', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570114', N'57100', N'ริมกก', N'Rim Kok', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570115', N'57000', N'ดอยลาน', N'Doi Lan', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570116', N'57000', N'ป่าอ้อดอนชัย', N'Pa O Don Chai', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570118', N'57000', N'ท่าสาย', N'Tha Sai', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570120', N'57000', N'ดอยฮาง', N'Doi Hang', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570121', N'57100', N'ท่าสุด', N'Tha Sut', N'5701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570202', N'57210', N'เวียงชัย', N'Wiang Chai', N'5702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570203', N'57210', N'ผางาม', N'Pha Ngam', N'5702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570204', N'57210', N'เวียงเหนือ', N'Wiang Nuea', N'5702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570206', N'57210', N'ดอนศิลา', N'Don Sila', N'5702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570208', N'57210', N'เมืองชุม', N'Mueang Chum', N'5702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570301', N'57140', N'เวียง', N'Wiang', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570302', N'57140', N'สถาน', N'Sathan', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570303', N'57140', N'ครึ่ง', N'Khrueng', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570304', N'57140', N'บุญเรือง', N'Bun Rueang', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570305', N'57140', N'ห้วยซ้อ', N'Huai So', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570308', N'57140', N'ศรีดอนชัย', N'Si Don Chai', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570310', N'57140', N'ริมโขง', N'Rim Khong', N'5703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570401', N'57160', N'เวียง', N'Wiang', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570402', N'57160', N'งิ้ว', N'Ngio', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570403', N'57230', N'ปล้อง', N'Plong', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570404', N'57230', N'แม่ลอย', N'Mae Loi', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570405', N'57230', N'เชียงเคี่ยน', N'Chiang Khian', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570409', N'57160', N'ตับเต่า', N'Tap Tao', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570410', N'57160', N'หงาว', N'Ngao', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570411', N'57160', N'สันทรายงาม', N'San Sai Ngam', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570412', N'57230', N'ศรีดอนไชย', N'Si Don Chai', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570413', N'57230', N'หนองแรด', N'Nong Raet', N'5704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570501', N'57120', N'สันมะเค็ด', N'San Makhet', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570502', N'57120', N'แม่อ้อ', N'Mae O', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570503', N'57250', N'ธารทอง', N'Than Thong', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570504', N'57120', N'สันติสุข', N'Santi Suk', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570505', N'57120', N'ดอยงาม', N'Doi Ngam', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570506', N'57120', N'หัวง้ม', N'Hua Ngom', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570507', N'57120', N'เจริญเมือง', N'Charoen Mueang', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570508', N'57120', N'ป่าหุ่ง', N'Pa Hung', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570509', N'57120', N'ม่วงคำ', N'Muang Kham', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570510', N'57120', N'ทรายขาว', N'Sai Khao', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570511', N'57120', N'สันกลาง', N'San Klang', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570512', N'57280', N'แม่เย็น', N'Mae Yen', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570513', N'57120', N'เมืองพาน', N'Mueang Phan', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570514', N'57280', N'ทานตะวัน', N'Than Tawan', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570515', N'57120', N'เวียงห้าว', N'Wiang Hao', N'5705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570601', N'57190', N'ป่าแดด', N'Pa Daet', N'5706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570602', N'57190', N'ป่าแงะ', N'Pa Ngae', N'5706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570603', N'57190', N'สันมะค่า', N'San Makha', N'5706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570605', N'57190', N'โรงช้าง', N'Rong Chang', N'5706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570606', N'57190', N'ศรีโพธิ์เงิน', N'Si Pho Ngoen', N'5706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570701', N'57110', N'แม่จัน', N'Mae Chan', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570702', N'57270', N'จันจว้า', N'Chan Chwa', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570703', N'57240', N'แม่คำ', N'Mae Kham', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570704', N'57110', N'ป่าซาง', N'Pa Sang', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570705', N'57110', N'สันทราย', N'San Sai', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570706', N'57110', N'ท่าข้าวเปลือก', N'Tha Khao Plueak', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570708', N'57110', N'ป่าตึง', N'Pa Tueng', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570710', N'57240', N'แม่ไร่', N'Mae Rai', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570711', N'57110', N'ศรีค้ำ', N'Si Kham', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570712', N'57270', N'จันจว้าใต้', N'Chan Chwa Tai', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570713', N'57110', N'จอมสวรรค์', N'Chom Sawan', N'5707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570801', N'57150', N'เวียง', N'Wiang', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570802', N'57150', N'ป่าสัก', N'Pa Sak', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570803', N'57150', N'บ้านแซว', N'Ban Saeo', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570804', N'57150', N'ศรีดอนมูล', N'Si Don Mun', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570805', N'57150', N'แม่เงิน', N'Mae Ngoen', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570806', N'57150', N'โยนก', N'Yonok', N'5708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570901', N'57130', N'แม่สาย', N'Mae Sai', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570902', N'57220', N'ห้วยไคร้', N'Huai Khrai', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570903', N'57130', N'เกาะช้าง', N'Ko Chang', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570904', N'57130', N'โป่งผา', N'Pong Pha', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570905', N'57130', N'ศรีเมืองชุม', N'Si Mueang Chum', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570906', N'57130', N'เวียงพางคำ', N'Wiang Phang Kham', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570908', N'57220', N'บ้านด้าย', N'Ban Dai', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'570909', N'57130', N'โป่งงาม', N'Pong Ngam', N'5709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571001', N'57180', N'แม่สรวย', N'Mae Suai', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571002', N'57180', N'ป่าแดด', N'Pa Daet', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571003', N'57180', N'แม่พริก', N'Mae Phrik', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571004', N'57180', N'ศรีถ้อย', N'Si Thoi', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571005', N'57180', N'ท่าก๊อ', N'Tha Ko', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571006', N'57180', N'วาวี', N'Wawi', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571007', N'57180', N'เจดีย์หลวง', N'Chedi Luang', N'5710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571101', N'57170', N'สันสลี', N'San Sali', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571102', N'57170', N'เวียง', N'Wiang', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571103', N'57170', N'บ้านโป่ง', N'Ban Pong', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571104', N'57170', N'ป่างิ้ว', N'Pa Ngio', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571105', N'57260', N'เวียงกาหลง', N'Wiang Ka Long', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571106', N'57260', N'แม่เจดีย์', N'Mae Chedi', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571107', N'57260', N'แม่เจดีย์ใหม่', N'Mae Chedi Mai', N'5711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571201', N'57290', N'แม่เปา', N'Mae Pao', N'5712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571202', N'57290', N'แม่ต๋ำ', N'Mae Tam', N'5712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571203', N'57290', N'ไม้ยา', N'Mai Ya', N'5712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571204', N'57290', N'เม็งราย', N'Mengrai', N'5712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571205', N'57290', N'ตาดควัน', N'Tat Khwan', N'5712')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571301', N'57310', N'ม่วงยาย', N'Muang Yai', N'5713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571302', N'57310', N'ปอ', N'Po', N'5713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571303', N'57310', N'หล่ายงาว', N'Lai Ngao', N'5713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571304', N'57310', N'ท่าข้าม', N'Tha Kham', N'5713')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571401', N'57340', N'ต้า', N'Ta', N'5714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571402', N'57340', N'ป่าตาล', N'Pa Tan', N'5714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571403', N'57340', N'ยางฮอม', N'Yang Hom', N'5714')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571501', N'57240', N'เทอดไทย', N'Thoet Thai', N'5715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571502', N'57110', N'แม่สลองใน', N'Mae Salong Nai', N'5715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571503', N'57110', N'แม่สลองนอก', N'Mae Salong Nok', N'5715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571504', N'57240', N'แม่ฟ้าหลวง', N'Mae Fa Luang', N'5715')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571601', N'57250', N'ดงมะดะ', N'Dong Mada', N'5716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571602', N'57250', N'จอมหมอกแก้ว', N'Chom Mok Kaeo', N'5716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571603', N'57250', N'บัวสลี', N'Bua Sali', N'5716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571604', N'57250', N'ป่าก่อดำ', N'Pa Ko Dam', N'5716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571605', N'57000', N'โป่งแพร่', N'Pong Phrae', N'5716')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571701', N'57210', N'ทุ่งก่อ', N'Thung Ko', N'5717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571702', N'57210', N'ดงมหาวัน', N'Dong Maha Wan', N'5717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571703', N'57210', N'ป่าซาง', N'Pa Sang', N'5717')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571801', N'57110', N'ปงน้อย', N'Pong Noi', N'5718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571802', N'57110', N'โชคชัย', N'Chok Chai', N'5718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'571803', N'57110', N'หนองป่าก่อ', N'Nong Pa Ko', N'5718')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580101', N'58000', N'จองคำ', N'Chong Kham', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580102', N'58000', N'ห้วยโป่ง', N'Huai Pong', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580103', N'58000', N'ผาบ่อง', N'Pha Bong', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580104', N'58000', N'ปางหมู', N'Pang Mu', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580105', N'58000', N'หมอกจำแป่', N'Mok Champae', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580106', N'58000', N'ห้วยผา', N'Huai Pha', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580109', N'58000', N'ห้วยปูลิง', N'Huai Pu Ling', N'5801')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580201', N'58140', N'ขุนยวม', N'Khun Yuam', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580202', N'58140', N'แม่เงา', N'Mae Ngao', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580203', N'58140', N'เมืองปอน', N'Mueang Pon', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580204', N'58140', N'แม่ยวมน้อย', N'Mae Yuam Noi', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580205', N'58140', N'แม่กิ๊', N'Mae Ki', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580206', N'58140', N'แม่อูคอ', N'Mae Ukho', N'5802')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580301', N'58130', N'เวียงใต้', N'Wiang Tai', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580302', N'58130', N'เวียงเหนือ', N'Wiang Nuea', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580303', N'58130', N'แม่นาเติง', N'Mae Na Toeng', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580304', N'58130', N'แม่ฮี้', N'Mae Hi', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580305', N'58130', N'ทุ่งยาว', N'Thung Yao', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580306', N'58130', N'เมืองแปง', N'Mueang Paeng', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580307', N'58130', N'โป่งสา', N'Pong Sa', N'5803')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580401', N'58110', N'บ้านกาศ', N'Ban Kat', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580402', N'58110', N'แม่สะเรียง', N'Mae Sariang', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580403', N'58110', N'แม่คง', N'Mae Khong', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580404', N'58110', N'แม่เหาะ', N'Mae Ho', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580405', N'58110', N'แม่ยวม', N'Mae Yuam', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580406', N'58110', N'เสาหิน', N'Sao Hin', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580408', N'58110', N'ป่าแป๋', N'Pa Pae', N'5804')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580501', N'58120', N'แม่ลาน้อย', N'Mae La Noi', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580502', N'58120', N'แม่ลาหลวง', N'Mae La Luang', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580503', N'58120', N'ท่าผาปุ้ม', N'Tha Pha Pum', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580504', N'58120', N'แม่โถ', N'Mae Tho', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580505', N'58120', N'ห้วยห้อม', N'Huai Hom', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580506', N'58120', N'แม่นาจาง', N'Mae Na Chang', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580507', N'58120', N'สันติคีรี', N'Santi Khiri', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580508', N'58120', N'ขุนแม่ลาน้อย', N'Khun Mae La Noi', N'5805')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580601', N'58110', N'สบเมย', N'Sop Moei', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580602', N'58110', N'แม่คะตวน', N'Mae Khatuan', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580603', N'58110', N'กองก๋อย', N'Kong Koi', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580604', N'58110', N'แม่สวด', N'Mae Suat', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580605', N'58110', N'ป่าโปง', N'Pa Pong', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580606', N'58110', N'แม่สามแลบ', N'Mae Sam Laep', N'5806')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580701', N'58150', N'สบป่อง', N'Sop Pong', N'5807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580702', N'58150', N'ปางมะผ้า', N'Pang Mapha', N'5807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580703', N'58150', N'ถ้ำลอด', N'Tham Lot', N'5807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'580704', N'58150', N'นาปู่ป้อม', N'Na Pu Pom', N'5807')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600101', N'60000', N'ปากน้ำโพ', N'Pak Nam Pho', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600102', N'60000', N'กลางแดด', N'Klang Daet', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600103', N'60000', N'เกรียงไกร', N'Kriangkrai', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600104', N'60000', N'แควใหญ่', N'Khwae Yai', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600105', N'60000', N'ตะเคียนเลื่อน', N'Takhian Luean', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600106', N'60000', N'นครสวรรค์ตก', N'Nakhon Sawan Tok', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600107', N'60000', N'นครสวรรค์ออก', N'Nakhon Sawan Ok', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600108', N'60000', N'บางพระหลวง', N'Bang Phra Luang', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600109', N'60000', N'บางม่วง', N'Bang Muang', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600110', N'60000', N'บ้านมะเกลือ', N'Ban Makluea', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600111', N'60000', N'บ้านแก่ง', N'Ban Kaeng', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600112', N'60000', N'พระนอน', N'Phra Non', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600113', N'60000', N'วัดไทร', N'Wat Sai', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600114', N'60240', N'หนองกรด', N'Nong Krot', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600115', N'60240', N'หนองกระโดน', N'Nong Kradon', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600116', N'60000', N'หนองปลิง', N'Nong Pling', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600117', N'60000', N'บึงเสนาท', N'Bueng Senat', N'6001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600201', N'60170', N'โกรกพระ', N'Krok Phra', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600202', N'60170', N'ยางตาล', N'Yang Tan', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600203', N'60170', N'บางมะฝ่อ', N'Bang Mafo', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600204', N'60170', N'บางประมุง', N'Bang Pramung', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600205', N'60170', N'นากลาง', N'Na Klang', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600206', N'60170', N'ศาลาแดง', N'Sala Daeng', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600207', N'60170', N'เนินกว้าว', N'Noen Kwao', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600208', N'60170', N'เนินศาลา', N'Noen Sala', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600209', N'60170', N'หาดสูง', N'Hat Sung', N'6002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600301', N'60120', N'ชุมแสง', N'Chum Saeng', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600302', N'60250', N'ทับกฤช', N'Thap Krit', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600303', N'60120', N'พิกุล', N'Phikun', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600304', N'60120', N'เกยไชย', N'Koei Chai', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600305', N'60120', N'ท่าไม้', N'Tha Mai', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600306', N'60120', N'บางเคียน', N'Bang Khian', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600307', N'60120', N'หนองกระเจา', N'Nong Krachao', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600308', N'60250', N'พันลาน', N'Phan Lan', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600309', N'60120', N'โคกหม้อ', N'Khok Mo', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600310', N'60120', N'ไผ่สิงห์', N'Phai Sing', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600311', N'60120', N'ฆะมัง', N'Khamang', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600312', N'60250', N'ทับกฤชใต้', N'Thap Krit Tai', N'6003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600401', N'60110', N'หนองบัว', N'Nong Bua', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600402', N'60110', N'หนองกลับ', N'Nong Klap', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600403', N'60110', N'ธารทหาร', N'Than Thahan', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600404', N'60110', N'ห้วยร่วม', N'Huai Ruam', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600405', N'60110', N'ห้วยถั่วใต้', N'Huai Thua Tai', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600406', N'60110', N'ห้วยถั่วเหนือ', N'Huai Thua Nuea', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600407', N'60110', N'ห้วยใหญ่', N'Huai Yai', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600408', N'60110', N'ทุ่งทอง', N'Thung Thong', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600409', N'60110', N'วังบ่อ', N'Wang Bo', N'6004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600501', N'60180', N'ท่างิ้ว', N'Tha Ngio', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600502', N'60180', N'บางตาหงาย', N'Bang Ta Ngai', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600503', N'60180', N'หูกวาง', N'Hu Kwang', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600504', N'60180', N'อ่างทอง', N'Ang Thong', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600505', N'60180', N'บ้านแดน', N'Ban Daen', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600506', N'60180', N'บางแก้ว', N'Bang Kaeo', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600507', N'60180', N'ตาขีด', N'Ta Khit', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600508', N'60180', N'ตาสัง', N'Ta Sang', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600509', N'60180', N'ด่านช้าง', N'Dan Chang', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600510', N'60180', N'หนองกรด', N'Nong Krot', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600511', N'60180', N'หนองตางู', N'Nong Ta Ngu', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600512', N'60180', N'บึงปลาทู', N'Bueng Pla Thu', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600513', N'60180', N'เจริญผล', N'Charoen Phon', N'6005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600601', N'60230', N'มหาโพธิ', N'Maha Phot', N'6006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600602', N'60230', N'เก้าเลี้ยว', N'Kao Liao', N'6006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600603', N'60230', N'หนองเต่า', N'Nong Tao', N'6006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600604', N'60230', N'เขาดิน', N'Khao Din', N'6006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600605', N'60230', N'หัวดง', N'Hua Dong', N'6006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600701', N'60140', N'ตาคลี', N'Takhli', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600702', N'60210', N'ช่องแค', N'Chong Khae', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600703', N'60260', N'จันเสน', N'Chan Sen', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600704', N'60210', N'ห้วยหอม', N'Huai Hom', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600705', N'60140', N'หัวหวาย', N'Hua Wai', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600706', N'60140', N'หนองโพ', N'Nong Pho', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600707', N'60140', N'หนองหม้อ', N'Nong Mo', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600708', N'60210', N'สร้อยทอง', N'Soi Thong', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600709', N'60260', N'ลาดทิพรส', N'Lat Thippharot', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600710', N'60210', N'พรหมนิมิต', N'Phrom Nimit', N'6007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600801', N'60160', N'ท่าตะโก', N'Tha Tako', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600802', N'60160', N'พนมรอก', N'Phanom Rok', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600803', N'60160', N'หัวถนน', N'Hua Thanon', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600804', N'60160', N'สายลำโพง', N'Sai Lamphong', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600805', N'60160', N'วังมหากร', N'Wang Mahakon', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600806', N'60160', N'ดอนคา', N'Don Kha', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600807', N'60160', N'ทำนบ', N'Thamnop', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600808', N'60160', N'วังใหญ่', N'Wang Yai', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600809', N'60160', N'พนมเศษ', N'Phanom Set', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600810', N'60160', N'หนองหลวง', N'Nong Luang', N'6008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600901', N'60220', N'โคกเดื่อ', N'Khok Duea', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600902', N'60220', N'สำโรงชัย', N'Samrong Chai', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600903', N'60220', N'วังน้ำลัด', N'Wang Nam Lat', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600904', N'60220', N'ตะคร้อ', N'Takhro', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600905', N'60220', N'โพธิ์ประสาท', N'Pho Prasat', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600906', N'60220', N'วังข่อย', N'Wang Khoi', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600907', N'60220', N'นาขอม', N'Na Khom', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'600908', N'60220', N'ไพศาลี', N'Phaisali', N'6009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601001', N'60130', N'พยุหะ', N'Phayuha', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601002', N'60130', N'เนินมะกอก', N'Noen Makok', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601003', N'60130', N'นิคมเขาบ่อแก้ว', N'Nikhom Khao Bo Kaeo', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601004', N'60130', N'ม่วงหัก', N'Muang Hak', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601005', N'60130', N'ยางขาว', N'Yang Khao', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601006', N'60130', N'ย่านมัทรี', N'Yan Matsi', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601007', N'60130', N'เขาทอง', N'Khao Thong', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601008', N'60130', N'ท่าน้ำอ้อย', N'Tha Nam Oi', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601009', N'60130', N'น้ำทรง', N'Nam Song', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601010', N'60130', N'เขากะลา', N'Khao Kala', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601011', N'60130', N'สระทะเล', N'Sa Thale', N'6010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601101', N'60150', N'ลาดยาว', N'Lat Yao', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601102', N'60150', N'ห้วยน้ำหอม', N'Huai Nam Hom', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601103', N'60150', N'วังม้า', N'Wang Ma', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601104', N'60150', N'วังเมือง', N'Wang Mueang', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601105', N'60150', N'สร้อยละคร', N'Soi Lakhon', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601106', N'60150', N'มาบแก', N'Map Kae', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601107', N'60150', N'หนองยาว', N'Nong Yao', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601108', N'60150', N'หนองนมวัว', N'Nong Nom Wua', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601109', N'60150', N'บ้านไร่', N'Ban Rai', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601110', N'60150', N'เนินขี้เหล็ก', N'Noen Khilek', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601116', N'60150', N'ศาลเจ้าไก่ต่อ', N'San Chao Kai to', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601117', N'60150', N'สระแก้ว', N'Sa Kaeo', N'6011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601201', N'60190', N'ตากฟ้า', N'Tak Fa', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601202', N'60190', N'ลำพยนต์', N'Lam Phayon', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601203', N'60190', N'สุขสำราญ', N'Suk Samran', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601204', N'60190', N'หนองพิกุล', N'Nong Phikun', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601205', N'60190', N'พุนกยูง', N'Phu Nok Yung', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601206', N'60190', N'อุดมธัญญา', N'Udom Thanya', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601207', N'60190', N'เขาชายธง', N'Khao Chai Thong', N'6012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601301', N'60150', N'แม่วงก์', N'Mae Wong', N'6013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601303', N'60150', N'แม่เล่ย์', N'Mae Le', N'6013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601304', N'60150', N'วังซ่าน', N'Wang San', N'6013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601305', N'60150', N'เขาชนกัน', N'Khao Chon Kan', N'6013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601401', N'60150', N'แม่เปิน', N'Mae Poen', N'6014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601501', N'60150', N'ชุมตาบง', N'Chum Ta Bong', N'6015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'601502', N'60150', N'ปางสวรรค์', N'Pang Sawan', N'6015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610101', N'61000', N'อุทัยใหม่', N'Uthai Mai', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610102', N'61000', N'น้ำซึม', N'Nam Suem', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610103', N'61000', N'สะแกกรัง', N'Sakae Krang', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610104', N'61000', N'ดอนขวาง', N'Don Khwang', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610105', N'61000', N'หาดทนง', N'Hat Thanong', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610106', N'61000', N'เกาะเทโพ', N'Ko Thepho', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610107', N'61000', N'ท่าซุง', N'Tha Sung', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610108', N'61000', N'หนองแก', N'Nong Kae', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610109', N'61000', N'โนนเหล็ก', N'Non Lek', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610110', N'61000', N'หนองเต่า', N'Nong Tao', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610111', N'61000', N'หนองไผ่แบน', N'Nong Phai Baen', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610112', N'61000', N'หนองพังค่า', N'Nong Phang Kha', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610113', N'61000', N'ทุ่งใหญ่', N'Thung Yai', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610114', N'61000', N'เนินแจง', N'Noen Chaeng', N'6101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610201', N'61120', N'ทัพทัน', N'Thap Than', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610202', N'61120', N'ทุ่งนาไทย', N'Thung Na Thai', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610203', N'61120', N'เขาขี้ฝอย', N'Khao Khi Foi', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610204', N'61120', N'หนองหญ้าปล้อง', N'Nong Ya Plong', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610205', N'61120', N'โคกหม้อ', N'Khok Mo', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610206', N'61120', N'หนองยายดา', N'Nong Yai Da', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610207', N'61120', N'หนองกลางดง', N'Nong Klang Dong', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610208', N'61120', N'หนองกระทุ่ม', N'Nong Krathum', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610209', N'61120', N'หนองสระ', N'Nong Sa', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610210', N'61120', N'ตลุกดู่', N'Taluk Du', N'6102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610301', N'61150', N'สว่างอารมณ์', N'Sawang Arom', N'6103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610302', N'61150', N'หนองหลวง', N'Nong Luang', N'6103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610303', N'61150', N'พลวงสองนาง', N'Phluang Song Nang', N'6103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610304', N'61150', N'ไผ่เขียว', N'Phai Khiao', N'6103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610305', N'61150', N'บ่อยาง', N'Bo Yang', N'6103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610401', N'61110', N'หนองฉาง', N'Nong Chang', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610402', N'61110', N'หนองยาง', N'Nong Yang', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610403', N'61110', N'หนองนางนวล', N'Nong Nang Nuan', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610404', N'61110', N'หนองสรวง', N'Nong Suang', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610405', N'61110', N'บ้านเก่า', N'Ban Kao', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610406', N'61110', N'อุทัยเก่า', N'Utai Kao', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610407', N'61110', N'ทุ่งโพ', N'Thung Pho', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610408', N'61110', N'ทุ่งพง', N'Thung Phong', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610409', N'61170', N'เขาบางแกรก', N'Khao Bang Kraek', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610410', N'61110', N'เขากวางทอง', N'Khao Kwang Thong', N'6104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610501', N'61130', N'หนองขาหย่าง', N'Nong Khayang', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610502', N'61130', N'หนองไผ่', N'Nong Phai', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610503', N'61130', N'ดอนกลอย', N'Don Kloi', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610504', N'61130', N'ห้วยรอบ', N'Huai Rop', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610505', N'61130', N'ทุ่งพึ่ง', N'Thung Phueng', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610506', N'61130', N'ท่าโพ', N'Tha Pho', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610507', N'61130', N'หมกแถว', N'Mok Thaeo', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610508', N'61130', N'หลุมเข้า', N'Lum Khao', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610509', N'61130', N'ดงขวาง', N'Dong Khwang', N'6105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610601', N'61140', N'บ้านไร่', N'Ban Rai', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610602', N'61140', N'ทัพหลวง', N'Thap Luang', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610603', N'61140', N'ห้วยแห้ง', N'Huai Haeng', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610604', N'61140', N'คอกควาย', N'Khok Khwai', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610605', N'61180', N'วังหิน', N'Wang Hin', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610606', N'61180', N'เมืองการุ้ง', N'Muang Ka Rung', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610607', N'61140', N'แก่นมะกรูด', N'Kaen Makrut', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610609', N'61180', N'หนองจอก', N'Nong Chok', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610610', N'61180', N'หูช้าง', N'Hu Chang', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610611', N'61140', N'บ้านบึง', N'Ban Bueng', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610612', N'61180', N'บ้านใหม่คลองเคียน', N'Ban Mai Khlong Khian', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610613', N'61180', N'หนองบ่มกล้วย', N'Nong Bom Kluai', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610614', N'61140', N'เจ้าวัด', N'Chao Wat', N'6106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610701', N'61160', N'ลานสัก', N'Lan Sak', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610702', N'61160', N'ประดู่ยืน', N'Pradu Yuen', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610703', N'61160', N'ป่าอ้อ', N'Pa O', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610704', N'61160', N'ระบำ', N'Rabam', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610705', N'61160', N'น้ำรอบ', N'Nam Rop', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610706', N'61160', N'ทุ่งนางาม', N'Thung Na Ngam', N'6107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610801', N'61170', N'สุขฤทัย', N'Suk Ruethai', N'6108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610802', N'61170', N'ทองหลาง', N'Thong Lang', N'6108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'610803', N'61170', N'ห้วยคต', N'Huai Khot', N'6108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620101', N'62000', N'ในเมือง', N'Nai Mueang', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620102', N'62160', N'ไตรตรึงษ์', N'Trai Trueng', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620103', N'62000', N'อ่างทอง', N'Ang Thong', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620104', N'62000', N'นาบ่อคำ', N'Na Bo Kham', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620105', N'62000', N'นครชุม', N'Nakhon Chum', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620106', N'62000', N'ทรงธรรม', N'Song Tham', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620107', N'62000', N'ลานดอกไม้', N'Lan Dokmai', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620110', N'62000', N'หนองปลิง', N'Nong Pling', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620111', N'62000', N'คณฑี', N'Khonthi', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620112', N'62000', N'นิคมทุ่งโพธิ์ทะเล', N'Nikhom Thung Pho Thale', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620113', N'62000', N'เทพนคร', N'Thep Nakhon', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620114', N'62000', N'วังทอง', N'Wang Thong', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620115', N'62000', N'ท่าขุนราม', N'Tha Khun Ram', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620117', N'62000', N'คลองแม่ลาย', N'Khlong Mae Lai', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620118', N'62160', N'ธำมรงค์', N'Thammarong', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620119', N'62000', N'สระแก้ว', N'Sa Kaeo', N'6201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620201', N'62150', N'ไทรงาม', N'Sai Ngam', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620202', N'62150', N'หนองคล้า', N'Nong Khla', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620203', N'62150', N'หนองทอง', N'Nong Thong', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620204', N'62150', N'หนองไม้กอง', N'Nong Mai Kong', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620205', N'62150', N'มหาชัย', N'Maha Chai', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620206', N'62150', N'พานทอง', N'Phan Thong', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620207', N'62150', N'หนองแม่แตง', N'Nong Mae Taeng', N'6202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620301', N'62180', N'คลองน้ำไหล', N'Khlong Nam Lai', N'6203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620302', N'62180', N'โป่งน้ำร้อน', N'Pong Nam Ron', N'6203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620303', N'62180', N'คลองลานพัฒนา', N'Khlong Lan Phatthana', N'6203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620304', N'62180', N'สักงาม', N'Sak Ngam', N'6203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620403', N'62130', N'ยางสูง', N'Yang Sung', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620404', N'62130', N'ป่าพุทรา', N'Pa Phutsa', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620405', N'62130', N'แสนตอ', N'Saen To', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620406', N'62140', N'สลกบาตร', N'Salokbat', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620407', N'62140', N'บ่อถ้ำ', N'Bo Tham', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620408', N'62140', N'ดอนแตง', N'Don Taeng', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620409', N'62140', N'วังชะพลู', N'Wang Chaphlu', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620410', N'62140', N'โค้งไผ่', N'Khong Phai', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620411', N'62140', N'ปางมะค่า', N'Pang Makha', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620412', N'62140', N'วังหามแห', N'Wang Ham Hae', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620413', N'62130', N'เกาะตาล', N'Ko Tan', N'6204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620501', N'62120', N'คลองขลุง', N'Khlong Khlung', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620502', N'62120', N'ท่ามะเขือ', N'Tha Makhuea', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620504', N'62120', N'ท่าพุทรา', N'Tha Phutsa', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620505', N'62120', N'แม่ลาด', N'Mae Lat', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620506', N'62120', N'วังยาง', N'Wang Yang', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620507', N'62120', N'วังแขม', N'Wang Khaem', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620508', N'62120', N'หัวถนน', N'Hua Thanon', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620509', N'62120', N'วังไทร', N'Wang Sai', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620513', N'62120', N'วังบัว', N'Wang Bua', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620516', N'62120', N'คลองสมบูรณ์', N'Khlong Sombun', N'6205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620601', N'62110', N'พรานกระต่าย', N'Phran Kratai', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620602', N'62110', N'หนองหัววัว', N'Nong Hua Wua', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620603', N'62110', N'ท่าไม้', N'Tha Mai', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620604', N'62110', N'วังควง', N'Wang Khuang', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620605', N'62110', N'วังตะแบก', N'Wang Tabaek', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620606', N'62110', N'เขาคีริส', N'Khao Khirit', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620607', N'62110', N'คุยบ้านโอง', N'Khui Ban Ong', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620608', N'62110', N'คลองพิไกร', N'Khlong Phikrai', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620609', N'62110', N'ถ้ำกระต่ายทอง', N'Tham Kratai Thong', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620610', N'62110', N'ห้วยยั้ง', N'Huai Yang', N'6206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620701', N'62170', N'ลานกระบือ', N'Lan Krabue', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620702', N'62170', N'ช่องลม', N'Chong Lom', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620703', N'62170', N'หนองหลวง', N'Nong Luang', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620704', N'62170', N'โนนพลวง', N'Non Phluang', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620705', N'62170', N'ประชาสุขสันต์', N'Pracha Suk San', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620706', N'62170', N'บึงทับแรต', N'Bueng Thap Raet', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620707', N'62170', N'จันทิมา', N'Chanthima', N'6207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620801', N'62190', N'ทุ่งทราย', N'Thung Sai', N'6208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620802', N'62190', N'ทุ่งทอง', N'Thung Thong', N'6208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620803', N'62190', N'ถาวรวัฒนา', N'Thawon Watthana', N'6208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620901', N'62120', N'โพธิ์ทอง', N'Pho Thong', N'6209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620902', N'62120', N'หินดาต', N'Hin Dat', N'6209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'620903', N'62120', N'ปางตาไว', N'Pang Ta Wai', N'6209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621001', N'62210', N'บึงสามัคคี', N'Bueng Samakkhi', N'6210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621002', N'62210', N'วังชะโอน', N'Wang Cha-on', N'6210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621003', N'62210', N'ระหาน', N'Rahan', N'6210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621004', N'62210', N'เทพนิมิต', N'Thep Nimit', N'6210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621101', N'62000', N'โกสัมพี', N'Kosamphi', N'6211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621102', N'62000', N'เพชรชมภู', N'Phet Chomphu', N'6211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'621103', N'62000', N'ลานดอกไม้ตก', N'Lan Dokmai Tok', N'6211')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630101', N'63000', N'ระแหง', N'Rahaeng', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630102', N'63000', N'หนองหลวง', N'Nong Luang', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630103', N'63000', N'เชียงเงิน', N'Chiang Ngoen', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630104', N'63000', N'หัวเดียด', N'Hua Diat', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630105', N'63000', N'หนองบัวเหนือ', N'Nong Bua Nuea', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630106', N'63000', N'ไม้งาม', N'Mai Ngam', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630107', N'63000', N'โป่งแดง', N'Pong Daeng', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630108', N'63000', N'น้ำรึม', N'Nam Ruem', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630109', N'63000', N'วังหิน', N'Wang Hin', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630111', N'63000', N'แม่ท้อ', N'Mae Tho', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630112', N'63000', N'ป่ามะม่วง', N'Pa Mamuang', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630113', N'63000', N'หนองบัวใต้', N'Nong Bua Tai', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630114', N'63000', N'วังประจบ', N'Wang Prachop', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630115', N'63000', N'ตลุกกลางทุ่ง', N'Taluk Klang Thung', N'6301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630201', N'63120', N'ตากออก', N'Tak Ok', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630202', N'63120', N'สมอโคน', N'Samo Khon', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630203', N'63120', N'แม่สลิด', N'Mae Salit', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630204', N'63120', N'ตากตก', N'Tak Tok', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630205', N'63120', N'เกาะตะเภา', N'Ko Taphao', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630206', N'63120', N'ทุ่งกระเชาะ', N'Thung Kracho', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630207', N'63120', N'ท้องฟ้า', N'Thong Fa', N'6302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630301', N'63130', N'สามเงา', N'Sam Ngao', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630302', N'63130', N'วังหมัน', N'Wang Man', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630303', N'63130', N'ยกกระบัตร', N'Yokkrabat', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630304', N'63130', N'ย่านรี', N'Yan Ri', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630305', N'63130', N'บ้านนา', N'Ban Na', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630306', N'63130', N'วังจันทร์', N'Wang Chan', N'6303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630401', N'63140', N'แม่ระมาด', N'Mae Ramat', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630402', N'63140', N'แม่จะเรา', N'Mae Charao', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630403', N'63140', N'ขะเนจื้อ', N'Khane Chue', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630404', N'63140', N'แม่ตื่น', N'Mae Tuen', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630405', N'63140', N'สามหมื่น', N'Sam Muen', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630406', N'63140', N'พระธาตุ', N'Phra That', N'6304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630501', N'63150', N'ท่าสองยาง', N'Tha Song Yang', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630502', N'63150', N'แม่ต้าน', N'Mae Tan', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630503', N'63150', N'แม่สอง', N'Mae Song', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630504', N'63150', N'แม่หละ', N'Mae La', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630505', N'63150', N'แม่วะหลวง', N'Mae Wa Luang', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630506', N'63150', N'แม่อุสุ', N'Mae U-su', N'6305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630601', N'63110', N'แม่สอด', N'Mae Sot', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630602', N'63110', N'แม่กุ', N'Mae Ku', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630603', N'63110', N'พะวอ', N'Phawo', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630604', N'63110', N'แม่ตาว', N'Mae Tao', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630605', N'63110', N'แม่กาษา', N'Mae Kasa', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630606', N'63110', N'ท่าสายลวด', N'Tha Sai Luat', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630607', N'63110', N'แม่ปะ', N'Mae Pa', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630608', N'63110', N'มหาวัน', N'Maha Wan', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630609', N'63110', N'ด่านแม่ละเมา', N'Dan Mae Lamao', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630610', N'63110', N'พระธาตุผาแดง', N'Phra That Pha Daeng', N'6306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630701', N'63160', N'พบพระ', N'Phop Phra', N'6307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630702', N'63160', N'ช่องแคบ', N'Chong Khaep', N'6307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630703', N'63160', N'คีรีราษฎร์', N'Khiri Rat', N'6307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630704', N'63160', N'วาเล่ย์', N'Wale', N'6307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630705', N'63160', N'รวมไทยพัฒนา', N'Ruam Thai Phatthana', N'6307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630801', N'63170', N'อุ้มผาง', N'Umphang', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630802', N'63170', N'หนองหลวง', N'Nong Luang', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630803', N'63170', N'โมโกร', N'Mokro', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630804', N'63170', N'แม่จัน', N'Mae Chan', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630805', N'63170', N'แม่ละมุ้ง', N'Mae Lamung', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630806', N'63170', N'แม่กลอง', N'Mae Klong', N'6308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630901', N'63180', N'เชียงทอง', N'Chiang Thong', N'6309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630902', N'63180', N'นาโบสถ์', N'Na Bot', N'6309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'630903', N'63180', N'ประดาง', N'Pradang', N'6309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640101', N'64000', N'ธานี', N'Thani', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640102', N'64220', N'บ้านสวน', N'Ban Suan', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640103', N'64210', N'เมืองเก่า', N'Mueang Kao', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640104', N'64000', N'ปากแคว', N'Pak Khwae', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640105', N'64000', N'ยางซ้าย', N'Yang Sai', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640106', N'64000', N'บ้านกล้วย', N'Ban Kluai', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640107', N'64000', N'บ้านหลุม', N'Ban Lum', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640108', N'64220', N'ตาลเตี้ย', N'Tan Tia', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640109', N'64000', N'ปากพระ', N'Pak Phra', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640110', N'64210', N'วังทองแดง', N'Wang Thong Daeng', N'6401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640201', N'64140', N'ลานหอย', N'Lan Hoi', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640202', N'64140', N'บ้านด่าน', N'Ban Dan', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640203', N'64140', N'วังตะคร้อ', N'Wang Takhro', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640204', N'64140', N'วังน้ำขาว', N'Wang Nam Khao', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640205', N'64140', N'ตลิ่งชัน', N'Taling Chan', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640206', N'64140', N'หนองหญ้าปล้อง', N'Nong Ya Plong', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640207', N'64140', N'วังลึก', N'Wang Luek', N'6402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640301', N'64160', N'โตนด', N'Tanot', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640302', N'64160', N'ทุ่งหลวง', N'Thung Luang', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640303', N'64160', N'บ้านป้อม', N'Ban Pom', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640304', N'64160', N'สามพวง', N'Sam Phuang', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640305', N'64160', N'ศรีคีรีมาศ', N'Si Khiri Mat', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640306', N'64160', N'หนองจิก', N'Nong Chik', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640307', N'64160', N'นาเชิงคีรี', N'Na Choeng Khiri', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640308', N'64160', N'หนองกระดิ่ง', N'Nong Krading', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640309', N'64160', N'บ้านน้ำพุ', N'Ban Nam Phu', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640310', N'64160', N'ทุ่งยางเมือง', N'Thung Yang Mueang', N'6403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640401', N'64170', N'กง', N'Kong', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640402', N'64170', N'บ้านกร่าง', N'Ban Krang', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640403', N'64170', N'ไกรนอก', N'Krai Nok', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640404', N'64170', N'ไกรกลาง', N'Krai Klang', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640405', N'64170', N'ไกรใน', N'Krai Nai', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640406', N'64170', N'ดงเดือย', N'Dong Dueai', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640407', N'64170', N'ป่าแฝก', N'Pa Faek', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640408', N'64170', N'กกแรต', N'Kok Raet', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640409', N'64170', N'ท่าฉนวน', N'Tha Chanuan', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640410', N'64170', N'หนองตูม', N'Nong Tum', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640411', N'64170', N'บ้านใหม่สุขเกษม', N'Ban Mai Suk Kasem', N'6404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640501', N'64130', N'หาดเสี้ยว', N'Hat Siao', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640502', N'64130', N'ป่างิ้ว', N'Pa Ngio', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640503', N'64130', N'แม่สำ', N'Mae Sam', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640504', N'64130', N'แม่สิน', N'Mae Sin', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640505', N'64130', N'บ้านตึก', N'Ban Tuek', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640506', N'64130', N'หนองอ้อ', N'Nong O', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640507', N'64190', N'ท่าชัย', N'Tha Chai', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640508', N'64190', N'ศรีสัชนาลัย', N'Si Satchanalai', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640509', N'64130', N'ดงคู่', N'Dong Khu', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640510', N'64130', N'บ้านแก่ง', N'Ban Kaeng', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640511', N'64130', N'สารจิตร', N'San Chit', N'6405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640601', N'64120', N'คลองตาล', N'Khlong Tan', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640602', N'64120', N'วังลึก', N'Wang Luek', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640603', N'64120', N'สามเรือน', N'Sam Ruean', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640604', N'64120', N'บ้านนา', N'Ban Na', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640605', N'64120', N'วังทอง', N'Wang Thong', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640606', N'64120', N'นาขุนไกร', N'Na Khun Krai', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640607', N'64120', N'เกาะตาเลี้ยง', N'Ko Ta Liang', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640608', N'64120', N'วัดเกาะ', N'Wat Ko', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640609', N'64120', N'บ้านไร่', N'Ban Rai', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640610', N'64120', N'ทับผึ้ง', N'Thap Phueng', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640611', N'64120', N'บ้านซ่าน', N'Ban San', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640612', N'64120', N'วังใหญ่', N'Wang Yai', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640613', N'64120', N'ราวต้นจันทร์', N'Rao Ton Chan', N'6406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640701', N'64110', N'เมืองสวรรคโลก', N'Mueang Sawankhalok', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640702', N'64110', N'ในเมือง', N'Nai Mueang', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640703', N'64110', N'คลองกระจง', N'Khlong Krachong', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640704', N'64110', N'วังพิณพาทย์', N'Wang Phinphat', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640705', N'64110', N'วังไม้ขอน', N'Wang Mai Khon', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640706', N'64110', N'ย่านยาว', N'Yan Yao', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640707', N'64110', N'นาทุ่ง', N'Na Thung', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640708', N'64110', N'คลองยาง', N'Khlong Yang', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640709', N'64110', N'เมืองบางยม', N'Mueang Bang Yom', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640710', N'64110', N'ท่าทอง', N'Tha Tong', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640711', N'64110', N'ปากน้ำ', N'Pak Nam', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640712', N'64110', N'ป่ากุมเกาะ', N'Pa Kum Ko', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640713', N'64110', N'เมืองบางขลัง', N'Mueang Bang Khlang', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640714', N'64110', N'หนองกลับ', N'Nong Klap', N'6407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640801', N'64180', N'ศรีนคร', N'Si Nakhon', N'6408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640802', N'64180', N'นครเดิฐ', N'Nakhon Doet', N'6408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640803', N'64180', N'น้ำขุม', N'Nam Khum', N'6408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640804', N'64180', N'คลองมะพลับ', N'Khlong Maphlap', N'6408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640805', N'64180', N'หนองบัว', N'Nong Bua', N'6408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640901', N'64230', N'บ้านใหม่ไชยมงคล', N'Ban Mai Chai Mongkhon', N'6409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640902', N'64150', N'ไทยชนะศึก', N'Thai Chana Suek', N'6409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640903', N'64150', N'ทุ่งเสลี่ยม', N'Thung Saliam', N'6409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640904', N'64150', N'กลางดง', N'Klang Dong', N'6409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'640905', N'64230', N'เขาแก้วศรีสมบูรณ์', N'Khao Kaeo Si Sombun', N'6409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650101', N'65000', N'ในเมือง', N'Nai Mueang', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650102', N'65230', N'วังน้ำคู้', N'Wang Nam Khu', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650103', N'65000', N'วัดจันทร์', N'Wat Chan', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650104', N'65230', N'วัดพริก', N'Wat Phrik', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650105', N'65000', N'ท่าทอง', N'Tha Thong', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650106', N'65000', N'ท่าโพธิ์', N'Tha Pho', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650107', N'65000', N'สมอแข', N'Samo Khae', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650108', N'65000', N'ดอนทอง', N'Don Thong', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650109', N'65000', N'บ้านป่า', N'Ban Pa', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650110', N'65000', N'ปากโทก', N'Pak Thok', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650111', N'65000', N'หัวรอ', N'Hua Ro', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650112', N'65000', N'จอมทอง', N'Chom Thong', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650113', N'65000', N'บ้านกร่าง', N'Ban Krang', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650114', N'65000', N'บ้านคลอง', N'Ban Khlong', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650115', N'65000', N'พลายชุมพล', N'Phlai Chumphon', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650116', N'65000', N'มะขามสูง', N'Makham Sung', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650117', N'65000', N'อรัญญิก', N'Aranyik', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650118', N'65000', N'บึงพระ', N'Bueng Phra', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650119', N'65000', N'ไผ่ขอดอน', N'Phai Kho Don', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650120', N'65230', N'งิ้วงาม', N'Ngio Ngam', N'6501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650201', N'65120', N'นครไทย', N'Nakhon Thai', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650202', N'65120', N'หนองกะท้าว', N'Nong Kathao', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650203', N'65120', N'บ้านแยง', N'Ban Yaeng', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650204', N'65120', N'เนินเพิ่ม', N'Noen Phoem', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650205', N'65120', N'นาบัว', N'Na Bua', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650206', N'65120', N'นครชุม', N'Nakhon Chum', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650207', N'65120', N'น้ำกุ่ม', N'Nam Kum', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650208', N'65120', N'ยางโกลน', N'Yang Klon', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650209', N'65120', N'บ่อโพธิ์', N'Bo Pho', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650210', N'65120', N'บ้านพร้าว', N'Ban Phrao', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650211', N'65120', N'ห้วยเฮี้ย', N'Huai Hia', N'6502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650301', N'65170', N'ป่าแดง', N'Pa Daeng', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650302', N'65170', N'ชาติตระการ', N'Chat Trakan', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650303', N'65170', N'สวนเมี่ยง', N'Suan Miang', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650304', N'65170', N'บ้านดง', N'Ban Dong', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650305', N'65170', N'บ่อภาค', N'Bo Phak', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650306', N'65170', N'ท่าสะแก', N'Tha Sakae', N'6503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650401', N'65140', N'บางระกำ', N'Bang Rakam', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650402', N'65140', N'ปลักแรด', N'Plak Raet', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650403', N'65140', N'พันเสา', N'Phan Sao', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650404', N'65140', N'วังอิทก', N'Wang Ithok', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650405', N'65140', N'บึงกอก', N'Bueng Kok', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650406', N'65140', N'หนองกุลา', N'Nong Kula', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650407', N'65240', N'ชุมแสงสงคราม', N'Chum Saeng Songkhram', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650408', N'65140', N'นิคมพัฒนา', N'Nikhom Phatthana', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650409', N'65140', N'บ่อทอง', N'Bo Thong', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650410', N'65140', N'ท่านางงาม', N'Tha Nang Ngam', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650411', N'65240', N'คุยม่วง', N'Khui Muang', N'6504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650501', N'65110', N'บางกระทุ่ม', N'Bang Krathum', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650502', N'65110', N'บ้านไร่', N'Ban Rai', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650503', N'65110', N'โคกสลุด', N'Khok Salut', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650504', N'65110', N'สนามคลี', N'Sanam Khli', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650505', N'65110', N'ท่าตาล', N'Tha Tan', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650506', N'65110', N'ไผ่ล้อม', N'Phai Lom', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650507', N'65110', N'นครป่าหมาก', N'Nakhon Pa Mak', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650508', N'65210', N'เนินกุ่ม', N'Noen Kum', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650509', N'65210', N'วัดตายม', N'Wat Ta Yom', N'6505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650601', N'65150', N'พรหมพิราม', N'Phrom Phiram', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650602', N'65150', N'ท่าช้าง', N'Tha Chang', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650603', N'65180', N'วงฆ้อง', N'Wong Khong', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650604', N'65150', N'มะตูม', N'Matum', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650605', N'65150', N'หอกลอง', N'Ho Klong', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650606', N'65180', N'ศรีภิรมย์', N'Si Phirom', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650607', N'65180', N'ตลุกเทียม', N'Taluk Thiam', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650608', N'65150', N'วังวน', N'Wang Won', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650609', N'65150', N'หนองแขม', N'Nong Khaem', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650610', N'65180', N'มะต้อง', N'Matong', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650611', N'65150', N'ทับยายเชียง', N'Thap Yai Chiang', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650612', N'65180', N'ดงประคำ', N'Dong Prakham', N'6506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650701', N'65160', N'วัดโบสถ์', N'Wat Bot', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650702', N'65160', N'ท่างาม', N'Tha Ngam', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650703', N'65160', N'ท้อแท้', N'Thothae', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650704', N'65160', N'บ้านยาง', N'Ban Yang', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650705', N'65160', N'หินลาด', N'Hin Lat', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650706', N'65160', N'คันโช้ง', N'Khan Chong', N'6507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650801', N'65130', N'วังทอง', N'Wang Thong', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650802', N'65130', N'พันชาลี', N'Phan Chali', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650803', N'65130', N'แม่ระกา', N'Mae Raka', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650804', N'65220', N'บ้านกลาง', N'Ban Klang', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650805', N'65130', N'วังพิกุล', N'Wang Phikun', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650806', N'65220', N'แก่งโสภา', N'Kaeng Sopha', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650807', N'65130', N'ท่าหมื่นราม', N'Tha Muen Ram', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650808', N'65130', N'วังนกแอ่น', N'Wang Nok Aen', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650809', N'65130', N'หนองพระ', N'Nong Phra', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650810', N'65130', N'ชัยนาม', N'Chai Nam', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650811', N'65130', N'ดินทอง', N'Din Thong', N'6508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650901', N'65190', N'ชมพู', N'Chomphu', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650902', N'65190', N'บ้านมุง', N'Ban Mung', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650903', N'65190', N'ไทรย้อย', N'Sai Yoi', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650904', N'65190', N'วังโพรง', N'Wang Phrong', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650905', N'65190', N'บ้านน้อยซุ้มขี้เหล็ก', N'Ban Noi Sum Khilek', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650906', N'65190', N'เนินมะปราง', N'Noen Maprang', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'650907', N'65190', N'วังยาง', N'Wang Yang', N'6509')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660101', N'66000', N'ในเมือง', N'Nai Mueang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660102', N'66000', N'ไผ่ขวาง', N'Phai Khwang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660103', N'66000', N'ย่านยาว', N'Yan Yao', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660104', N'66000', N'ท่าฬ่อ', N'Tha Lo', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660105', N'66000', N'ปากทาง', N'Pak Thang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660106', N'66000', N'คลองคะเชนทร์', N'Khlong Khachen', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660107', N'66000', N'โรงช้าง', N'Rong Chang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660108', N'66000', N'เมืองเก่า', N'Mueang Kao', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660109', N'66000', N'ท่าหลวง', N'Tha Luang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660110', N'66000', N'บ้านบุ่ง', N'Ban Bung', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660111', N'66000', N'ฆะมัง', N'Kha Mung', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660112', N'66170', N'ดงป่าคำ', N'Dong Pa Kham', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660113', N'66170', N'หัวดง', N'Hua Dong', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660115', N'66000', N'ป่ามะคาบ', N'Pa Makhap', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660119', N'66000', N'สายคำโห้', N'Sai Kham Ho', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660120', N'66170', N'ดงกลาง', N'Dong Klang', N'6601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660201', N'66180', N'วังทรายพูน', N'Wang Sai Phun', N'6602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660202', N'66180', N'หนองปลาไหล', N'Nong Pla Lai', N'6602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660203', N'66180', N'หนองพระ', N'Nong Phra', N'6602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660204', N'66180', N'หนองปล้อง', N'Nong Plong', N'6602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660301', N'66190', N'โพธิ์ประทับช้าง', N'Pho Prathap Chang', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660302', N'66190', N'ไผ่ท่าโพ', N'Phai Tha Pho', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660303', N'66190', N'วังจิก', N'Wang Chik', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660304', N'66190', N'ไผ่รอบ', N'Phai Rop', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660305', N'66190', N'ดงเสือเหลือง', N'Dong Suea Lueang', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660306', N'66190', N'เนินสว่าง', N'Noen Sawang', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660307', N'66190', N'ทุ่งใหญ่', N'Thung Yai', N'6603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660401', N'66110', N'ตะพานหิน', N'Taphan Hin', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660402', N'66110', N'งิ้วราย', N'Ngio Rai', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660403', N'66110', N'ห้วยเกตุ', N'Huai Ket', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660404', N'66110', N'ไทรโรงโขน', N'Sai Rong Khon', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660405', N'66110', N'หนองพยอม', N'Nong Phayom', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660406', N'66150', N'ทุ่งโพธิ์', N'Thung Pho', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660407', N'66110', N'ดงตะขบ', N'Dong Takhop', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660408', N'66110', N'คลองคูณ', N'Khlong Khun', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660409', N'66110', N'วังสำโรง', N'Wang Samrong', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660410', N'66110', N'วังหว้า', N'Wang Wa', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660411', N'66150', N'วังหลุม', N'Wang Lum', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660412', N'66110', N'ทับหมัน', N'Thap Man', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660413', N'66110', N'ไผ่หลวง', N'Phai Luang', N'6604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660501', N'66120', N'บางมูลนาก', N'Bang Mun Nak', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660502', N'66120', N'บางไผ่', N'Bang Phai', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660503', N'66120', N'หอไกร', N'Ho Krai', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660504', N'66120', N'เนินมะกอก', N'Noen Makok', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660505', N'66120', N'วังสำโรง', N'Wang Samrong', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660506', N'66120', N'ภูมิ', N'Phum', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660507', N'66120', N'วังกรด', N'Wang Krot', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660508', N'66120', N'ห้วยเขน', N'Huai Khen', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660509', N'66210', N'วังตะกู', N'Wang Taku', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660514', N'66120', N'ลำประดา', N'Lam Prada', N'6605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660601', N'66130', N'โพทะเล', N'Pho Thale', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660602', N'66130', N'ท้ายน้ำ', N'Thai Nam', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660603', N'66130', N'ทะนง', N'Thanong', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660604', N'66130', N'ท่าบัว', N'Tha Bua', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660605', N'66130', N'ทุ่งน้อย', N'Thung Noi', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660606', N'66130', N'ท่าขมิ้น', N'Tha Khamin', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660607', N'66130', N'ท่าเสา', N'Tha Sao', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660608', N'66130', N'บางคลาน', N'Bang Khlan', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660611', N'66130', N'ท่านั่ง', N'Tha Nang', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660612', N'66130', N'บ้านน้อย', N'Ban Noi', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660613', N'66130', N'วัดขวาง', N'Wat Khwang', N'6606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660701', N'66140', N'สามง่าม', N'Sam Ngam', N'6607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660702', N'66220', N'กำแพงดิน', N'Kamphaeng Din', N'6607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660703', N'66140', N'รังนก', N'Rang Nok', N'6607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660706', N'66140', N'เนินปอ', N'Noen Po', N'6607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660707', N'66140', N'หนองโสน', N'Nong Sano', N'6607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660801', N'66150', N'ทับคล้อ', N'Thap Khlo', N'6608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660802', N'66230', N'เขาทราย', N'Khao Sai', N'6608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660803', N'66230', N'เขาเจ็ดลูก', N'Khao Chet Luk', N'6608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660804', N'66150', N'ท้ายทุ่ง', N'Thai Thung', N'6608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660901', N'66160', N'สากเหล็ก', N'Sak Lek', N'6609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660902', N'66160', N'ท่าเยี่ยม', N'Tha Yiam', N'6609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660903', N'66160', N'คลองทราย', N'Khlong Sai', N'6609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660904', N'66160', N'หนองหญ้าไทร', N'Nong Ya Sai', N'6609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'660905', N'66160', N'วังทับไทร', N'Wang Thap Sai', N'6609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661001', N'66130', N'ห้วยแก้ว', N'Huai Kaeo', N'6610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661002', N'66130', N'โพธิ์ไทรงาม', N'Pho Sai Ngam', N'6610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661003', N'66130', N'แหลมรัง', N'Laem Rang', N'6610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661004', N'66130', N'บางลาย', N'Bang Lai', N'6610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661005', N'66130', N'บึงนาราง', N'Bueng Na Rang', N'6610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661101', N'66210', N'วังงิ้วใต้', N'Wang Ngio Tai', N'6611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661102', N'66210', N'วังงิ้ว', N'Wang Ngio', N'6611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661103', N'66210', N'ห้วยร่วม', N'Huai Ruam', N'6611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661104', N'66210', N'ห้วยพุก', N'Huai Phuk', N'6611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661105', N'66210', N'สำนักขุนเณร', N'Samnak Khun Nen', N'6611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661201', N'66140', N'บ้านนา', N'Ban Na', N'6612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661202', N'66140', N'บึงบัว', N'Bueng Bua', N'6612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661203', N'66140', N'วังโมกข์', N'Wang Mok', N'6612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'661204', N'66220', N'หนองหลุม', N'Nong Lum', N'6612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670101', N'67000', N'ในเมือง', N'Nai Mueang', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670102', N'67000', N'ตะเบาะ', N'Tabo', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670103', N'67000', N'บ้านโตก', N'Ban Tok', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670104', N'67000', N'สะเดียง', N'Sadiang', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670105', N'67000', N'ป่าเลา', N'Pa Lao', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670106', N'67000', N'นางั่ว', N'Na Ngua', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670107', N'67250', N'ท่าพล', N'Tha Phon', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670108', N'67000', N'ดงมูลเหล็ก', N'Dong Mun Lek', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670109', N'67000', N'บ้านโคก', N'Ban Khok', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670110', N'67000', N'ชอนไพร', N'Chon Phrai', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670111', N'67000', N'นาป่า', N'Na Pa', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670112', N'67210', N'นายม', N'Na Yom', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670113', N'67210', N'วังชมภู', N'Wang Chomphu', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670114', N'67000', N'น้ำร้อน', N'Nam Ron', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670115', N'67210', N'ห้วยสะแก', N'Huai Sakae', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670116', N'67000', N'ห้วยใหญ่', N'Huai Yai', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670117', N'67210', N'ระวิง', N'Rawing', N'6701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670201', N'67150', N'ชนแดน', N'Chon Daen', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670202', N'67190', N'ดงขุย', N'Dong Khui', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670203', N'67150', N'ท่าข้าม', N'Tha Kham', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670204', N'67150', N'พุทธบาท', N'Phutthabat', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670205', N'67150', N'ลาดแค', N'Lat Khae', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670206', N'67190', N'บ้านกล้วย', N'Ban Kluai', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670208', N'67150', N'ซับพุทรา', N'Sap Phutsa', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670209', N'67190', N'ตะกุดไร', N'Takut Rai', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670210', N'67150', N'ศาลาลาย', N'Sala Lai', N'6702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670301', N'67110', N'หล่มสัก', N'Lom Sak', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670302', N'67110', N'วัดป่า', N'Wat Pa', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670303', N'67110', N'ตาลเดี่ยว', N'Tan Diao', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670304', N'67110', N'ฝายนาแซง', N'Fai Na Saeng', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670305', N'67110', N'หนองสว่าง', N'Nong Sawang', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670306', N'67110', N'น้ำเฮี้ย', N'Nam Hia', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670307', N'67110', N'สักหลง', N'Sak Long', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670308', N'67110', N'ท่าอิบุญ', N'Tha Ibun', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670309', N'67110', N'บ้านโสก', N'Ban Sok', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670310', N'67110', N'บ้านติ้ว', N'Ban Tio', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670311', N'67110', N'ห้วยไร่', N'Huai Rai', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670312', N'67110', N'น้ำก้อ', N'Nam Ko', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670313', N'67110', N'ปากช่อง', N'Pak Chong', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670314', N'67110', N'น้ำชุน', N'Nam Chun', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670315', N'67110', N'หนองไขว่', N'Nong Khwai', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670316', N'67110', N'ลานบ่า', N'Lan Ba', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670317', N'67110', N'บุ่งคล้า', N'Bung Khla', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670318', N'67110', N'บุ่งน้ำเต้า', N'Bung Namtao', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670319', N'67110', N'บ้านกลาง', N'Ban Klang', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670320', N'67110', N'ช้างตะลูด', N'Chang Talut', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670321', N'67110', N'บ้านไร่', N'Ban Rai', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670322', N'67110', N'ปากดุก', N'Pak Duk', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670323', N'67110', N'บ้านหวาย', N'Ban Wai', N'6703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670401', N'67120', N'หล่มเก่า', N'Lom Kao', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670402', N'67120', N'นาซำ', N'Na Sam', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670403', N'67120', N'หินฮาว', N'Hin Hao', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670404', N'67120', N'บ้านเนิน', N'Ban Noen', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670405', N'67120', N'ศิลา', N'Sila', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670406', N'67120', N'นาแซง', N'Na Saeng', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670407', N'67120', N'วังบาล', N'Wang Ban', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670408', N'67120', N'นาเกาะ', N'Na Ko', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670409', N'67120', N'ตาดกลอย', N'Tat Kloi', N'6704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670501', N'67130', N'ท่าโรง', N'Tha Rong', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670502', N'67130', N'สระประดู่', N'Sa Pradu', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670503', N'67130', N'สามแยก', N'Sam Yaek', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670504', N'67130', N'โคกปรง', N'Khok Prong', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670505', N'67130', N'น้ำร้อน', N'Nam Ron', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670506', N'67130', N'บ่อรัง', N'Bo Rang', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670507', N'67180', N'พุเตย', N'Phu Toei', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670508', N'67180', N'พุขาม', N'Phu Kham', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670509', N'67180', N'ภูน้ำหยด', N'Phu Nam Yot', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670510', N'67180', N'ซับสมบูรณ์', N'Sap Sombun', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670511', N'67130', N'บึงกระจับ', N'Bueng Krachap', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670512', N'67180', N'วังใหญ่', N'Wang Yai', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670513', N'67130', N'ยางสาว', N'Yang Sao', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670514', N'67180', N'ซับน้อย', N'Sap Noi', N'6705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670601', N'67170', N'ศรีเทพ', N'Si Thep', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670602', N'67170', N'สระกรวด', N'Sa Kruat', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670603', N'67170', N'คลองกระจัง', N'Khlong Krachang', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670604', N'67170', N'นาสนุ่น', N'Na Sanun', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670605', N'67170', N'โคกสะอาด', N'Khok Sa-at', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670606', N'67170', N'หนองย่างทอย', N'Nong Yang Thoi', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670607', N'67170', N'ประดู่งาม', N'Pradu Ngam', N'6706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670701', N'67140', N'กองทูล', N'Kong Thun', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670702', N'67220', N'นาเฉลียง', N'Na Chaliang', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670703', N'67140', N'บ้านโภชน์', N'Ban Phot', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670704', N'67140', N'ท่าแดง', N'Tha Daeng', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670705', N'67140', N'เพชรละคร', N'Phet Lakhon', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670706', N'67140', N'บ่อไทย', N'Bo Thai', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670707', N'67220', N'ห้วยโป่ง', N'Huai Pong', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670708', N'67140', N'วังท่าดี', N'Wang Tha Di', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670709', N'67140', N'บัววัฒนา', N'Bua Watthana', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670710', N'67140', N'หนองไผ่', N'Nong Phai', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670711', N'67140', N'วังโบสถ์', N'Wang Bot', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670712', N'67220', N'ยางงาม', N'Yang Ngam', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670713', N'67140', N'ท่าด้วง', N'Tha Duang', N'6707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670801', N'67160', N'ซับสมอทอด', N'Sap Samo Thot', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670802', N'67160', N'ซับไม้แดง', N'Sap Mai Daeng', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670803', N'67160', N'หนองแจง', N'Nong Chaeng', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670804', N'67160', N'กันจุ', N'Kanchu', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670805', N'67230', N'วังพิกุล', N'Wang Phikun', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670806', N'67160', N'พญาวัง', N'Phaya Wang', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670807', N'67160', N'ศรีมงคล', N'Si Mongkhon', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670808', N'67160', N'สระแก้ว', N'Sa Kaeo', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670809', N'67160', N'บึงสามพัน', N'Bueng Sam Phan', N'6708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670901', N'67260', N'น้ำหนาว', N'Nam Nao', N'6709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670902', N'67260', N'หลักด่าน', N'Lak Dan', N'6709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670903', N'67260', N'วังกวาง', N'Wang Kwang', N'6709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'670904', N'67260', N'โคกมน', N'Khok Mon', N'6709')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671001', N'67240', N'วังโป่ง', N'Wang Pong', N'6710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671002', N'67240', N'ท้ายดง', N'Thai Dong', N'6710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671003', N'67240', N'ซับเปิบ', N'Sap Poep', N'6710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671004', N'67240', N'วังหิน', N'Wang Hin', N'6710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671005', N'67240', N'วังศาล', N'Wang San', N'6710')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671101', N'67270', N'ทุ่งสมอ', N'Thung Samo', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671102', N'67280', N'แคมป์สน', N'Khaem Son', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671103', N'67270', N'เขาค้อ', N'Khao Kho', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671104', N'67270', N'ริมสีม่วง', N'Rim Si Muang', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671105', N'67270', N'สะเดาะพง', N'Sado Phong', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671106', N'67270', N'หนองแม่นา', N'Nong Mae Na', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'671107', N'67280', N'เข็กน้อย', N'Khek Noi', N'6711')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700101', N'70000', N'หน้าเมือง', N'Na Mueang', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700102', N'70000', N'เจดีย์หัก', N'Chedi Hak', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700103', N'70000', N'ดอนตะโก', N'Don Tako', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700104', N'70000', N'หนองกลางนา', N'Nong Klang Na', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700105', N'70000', N'ห้วยไผ่', N'Huai Phai', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700106', N'70000', N'คุ้งน้ำวน', N'Khung Nam Won', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700107', N'70000', N'คุ้งกระถิน', N'Khung Krathin', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700108', N'70000', N'อ่างทอง', N'Ang Thong', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700109', N'70000', N'โคกหม้อ', N'Khok Mo', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700110', N'70000', N'สามเรือน', N'Sam Ruean', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700111', N'70000', N'พิกุลทอง', N'Phikun Thong', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700112', N'70000', N'น้ำพุ', N'Nam Phu', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700113', N'70000', N'ดอนแร่', N'Don Rae', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700114', N'70000', N'หินกอง', N'Hin Kong', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700115', N'70000', N'เขาแร้ง', N'Khao Raeng', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700116', N'70000', N'เกาะพลับพลา', N'Ko Phlapphla', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700117', N'70000', N'หลุมดิน', N'Lum Din', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700118', N'70000', N'บางป่า', N'Bang Pa', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700119', N'70000', N'พงสวาย', N'Phong Sawai', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700120', N'70000', N'คูบัว', N'Khu Bua', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700121', N'70000', N'ท่าราบ', N'Tha Rap', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700122', N'70000', N'บ้านไร่', N'Ban Rai', N'7001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700201', N'70150', N'จอมบึง', N'Chom Bueng', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700202', N'70150', N'ปากช่อง', N'Pak Chong', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700203', N'70150', N'เบิกไพร', N'Boek Phrai', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700204', N'70150', N'ด่านทับตะโก', N'Dan Thap Tako', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700205', N'70150', N'แก้มอ้น', N'Kaem On', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700206', N'70150', N'รางบัว', N'Rang Bua', N'7002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700301', N'70180', N'สวนผึ้ง', N'Suan Phueng', N'7003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700302', N'70180', N'ป่าหวาย', N'Pa Wai', N'7003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700304', N'70180', N'ท่าเคย', N'Tha Khoei', N'7003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700307', N'70180', N'ตะนาวศรี', N'Tanao Si', N'7003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700401', N'70130', N'ดำเนินสะดวก', N'Damnoen Saduak', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700402', N'70210', N'ประสาทสิทธิ์', N'Prasat Sit', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700403', N'70130', N'ศรีสุราษฎร์', N'Si Surat', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700404', N'70130', N'ตาหลวง', N'Ta Luang', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700405', N'70130', N'ดอนกรวย', N'Don Kruai', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700406', N'70130', N'ดอนคลัง', N'Don Khlang', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700407', N'70210', N'บัวงาม', N'Bua Ngam', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700408', N'70130', N'บ้านไร่', N'Ban Rai', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700409', N'70130', N'แพงพวย', N'Phaengphuai', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700410', N'70130', N'สี่หมื่น', N'Si Muen', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700411', N'70130', N'ท่านัด', N'Tha Nat', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700412', N'70130', N'ขุนพิทักษ์', N'Khun Phithak', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700413', N'70130', N'ดอนไผ่', N'Don Phai', N'7004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700501', N'70110', N'บ้านโป่ง', N'Ban Pong', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700502', N'70110', N'ท่าผา', N'Tha Pha', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700503', N'70190', N'กรับใหญ่', N'Krap Yai', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700504', N'70110', N'ปากแรต', N'Pak Raet', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700505', N'70110', N'หนองกบ', N'Nong Kop', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700506', N'70110', N'หนองอ้อ', N'Nong O', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700507', N'70110', N'ดอนกระเบื้อง', N'Don Krabueang', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700508', N'70110', N'สวนกล้วย', N'Suan Kluai', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700509', N'70110', N'นครชุมน์', N'Nakhon Chum', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700510', N'70110', N'บ้านม่วง', N'Ban Muang', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700511', N'70110', N'คุ้งพยอม', N'Khung Phayom', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700512', N'70110', N'หนองปลาหมอ', N'Nong Pla Mo', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700513', N'70110', N'เขาขลุง', N'Khao Khlung', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700514', N'70110', N'เบิกไพร', N'Boek Phrai', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700515', N'70110', N'ลาดบัวขาว', N'Lat Bua Khao', N'7005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700601', N'70160', N'บางแพ', N'Bang Phae', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700602', N'70160', N'วังเย็น', N'Wang Yen', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700603', N'70160', N'หัวโพ', N'Hua Pho', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700604', N'70160', N'วัดแก้ว', N'Wat Kaeo', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700605', N'70160', N'ดอนใหญ่', N'Don Yai', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700606', N'70160', N'ดอนคา', N'Don Kha', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700607', N'70160', N'โพหัก', N'Pho Hak', N'7006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700701', N'70120', N'โพธาราม', N'Photharam', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700702', N'70120', N'ดอนกระเบื้อง', N'Don Krabueang', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700703', N'70120', N'หนองโพ', N'Nong Pho', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700704', N'70120', N'บ้านเลือก', N'Ban Lueak', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700705', N'70120', N'คลองตาคต', N'Khlong Ta Khot', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700706', N'70120', N'บ้านฆ้อง', N'Ban Khong', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700707', N'70120', N'บ้านสิงห์', N'Ban Sing', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700708', N'70120', N'ดอนทราย', N'Don Sai', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700709', N'70120', N'เจ็ดเสมียน', N'Chet Samian', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700710', N'70120', N'คลองข่อย', N'Khlong Khoi', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700711', N'70120', N'ชำแระ', N'Chamrae', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700712', N'70120', N'สร้อยฟ้า', N'Soi Fa', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700713', N'70120', N'ท่าชุมพล', N'Tha Chumphon', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700714', N'70120', N'บางโตนด', N'Bang Tanot', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700715', N'70120', N'เตาปูน', N'Tao Pun', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700716', N'70120', N'นางแก้ว', N'Nang Kaeo', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700717', N'70120', N'ธรรมเสน', N'Thammasen', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700718', N'70120', N'เขาชะงุ้ม', N'Khao Cha-ngum', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700719', N'70120', N'หนองกวาง', N'Nong Kwang', N'7007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700801', N'70140', N'ทุ่งหลวง', N'Thung Luang', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700802', N'70140', N'วังมะนาว', N'Wang Manao', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700803', N'70140', N'ดอนทราย', N'Don Sai', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700804', N'70140', N'หนองกระทุ่ม', N'Nong Krathum', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700805', N'70140', N'ปากท่อ', N'Pak Tho', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700806', N'70140', N'ป่าไก่', N'Pa Kai', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700807', N'70140', N'วัดยางงาม', N'Wat Yang Ngam', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700808', N'70140', N'อ่างหิน', N'Ang Hin', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700809', N'70140', N'บ่อกระดาน', N'Bo Kradan', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700810', N'70140', N'ยางหัก', N'Yang Hak', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700811', N'70140', N'วันดาว', N'Wan Dao', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700812', N'70140', N'ห้วยยางโทน', N'Huai Yang Thon', N'7008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700901', N'70170', N'เกาะศาลพระ', N'Ko San Phra', N'7009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700902', N'70170', N'จอมประทัด', N'Chom Prathat', N'7009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'700903', N'70170', N'วัดเพลง', N'Wat Phleng', N'7009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'701001', N'70180', N'บ้านคา', N'Ban Kha', N'7010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'701002', N'70180', N'บ้านบึง', N'Ban Bueng', N'7010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'701003', N'70180', N'หนองพันจันทร์', N'Nong Phan Chan', N'7010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710101', N'71000', N'บ้านเหนือ', N'Ban Nuea', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710102', N'71000', N'บ้านใต้', N'Ban Tai', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710103', N'71000', N'ปากแพรก', N'Pak Phraek', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710104', N'71000', N'ท่ามะขาม', N'Tha Makham', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710105', N'71000', N'แก่งเสี้ยน', N'Kaeng Sian', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710106', N'71190', N'หนองบัว', N'Nong Bua', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710107', N'71190', N'ลาดหญ้า', N'Lat Ya', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710108', N'71190', N'วังด้ง', N'Wang Dong', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710109', N'71190', N'ช่องสะเดา', N'Chong Sadao', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710110', N'71000', N'หนองหญ้า', N'Nong Ya', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710111', N'71000', N'เกาะสำโรง', N'Ko Samrong', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710113', N'71000', N'บ้านเก่า', N'Ban Kao', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710116', N'71000', N'วังเย็น', N'Wang Yen', N'7101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710201', N'71150', N'ลุ่มสุ่ม', N'Lum Sum', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710202', N'71150', N'ท่าเสา', N'Tha Sao', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710203', N'71150', N'สิงห์', N'Sing', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710204', N'71150', N'ไทรโยค', N'Sai Yok', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710205', N'71150', N'วังกระแจะ', N'Wang Khrachae', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710206', N'71150', N'ศรีมงคล', N'Si Mongkhon', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710207', N'71150', N'บ้องตี้', N'Bongti', N'7102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710301', N'71160', N'บ่อพลอย', N'Bo Phloi', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710302', N'71160', N'หนองกุ่ม', N'Nong Kum', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710303', N'71220', N'หนองรี', N'Nong Ri', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710305', N'71160', N'หลุมรัง', N'Lum Rang', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710308', N'71160', N'ช่องด่าน', N'Chong Dan', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710309', N'71220', N'หนองกร่าง', N'Nong Krang', N'7103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710401', N'71250', N'นาสวน', N'Na Suan', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710402', N'71250', N'ด่านแม่แฉลบ', N'Dan Mae Chalaep', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710403', N'71250', N'หนองเป็ด', N'Nong Pet', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710404', N'71250', N'ท่ากระดาน', N'Tha Kradan', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710405', N'71220', N'เขาโจด', N'Khao Chot', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710406', N'71250', N'แม่กระบุง', N'Mae Krabung', N'7104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710501', N'71120', N'พงตึก', N'Phong Tuek', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710502', N'71120', N'ยางม่วง', N'Yang Muang', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710503', N'71130', N'ดอนชะเอม', N'Don Cha-em', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710504', N'71120', N'ท่าไม้', N'Tha Mai', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710505', N'71130', N'ตะคร้ำเอน', N'Takhram En', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710506', N'71120', N'ท่ามะกา', N'Tha Maka', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710507', N'71130', N'ท่าเรือ', N'Tha Ruea', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710508', N'71120', N'โคกตะบอง', N'Khok Tabong', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710509', N'71120', N'ดอนขมิ้น', N'Don Khamin', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710510', N'71130', N'อุโลกสี่หมื่น', N'Ulok Si Muen', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710511', N'71120', N'เขาสามสิบหาบ', N'Khao Sam Sip Hap', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710512', N'71130', N'พระแท่น', N'Phra Thaen', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710513', N'71120', N'หวายเหนียว', N'Wai Niao', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710514', N'71130', N'แสนตอ', N'Saen To', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710515', N'70190', N'สนามแย้', N'Sanam Yae', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710516', N'71120', N'ท่าเสา', N'Tha Sao', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710517', N'71130', N'หนองลาน', N'Nong lan', N'7105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710601', N'71110', N'ท่าม่วง', N'Tha Muang', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710602', N'71110', N'วังขนาย', N'Wang Khanai', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710603', N'71110', N'วังศาลา', N'Wang Sala', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710604', N'71000', N'ท่าล้อ', N'Tha Lo', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710605', N'71110', N'หนองขาว', N'Nong Khao', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710606', N'71110', N'ทุ่งทอง', N'Thung Thong', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710607', N'71110', N'เขาน้อย', N'Khao Noi', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710608', N'71110', N'ม่วงชุม', N'Muang Chum', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710609', N'71110', N'บ้านใหม่', N'Ban Mai', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710610', N'71110', N'พังตรุ', N'Phang Tru', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710611', N'71130', N'ท่าตะคร้อ', N'Tha Takro', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710612', N'71110', N'รางสาลี่', N'Rang Sali', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710613', N'71110', N'หนองตากยา', N'Nong Tak Ya', N'7106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710701', N'71180', N'ท่าขนุน', N'Tha Khanun', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710702', N'71180', N'ปิล๊อก', N'Pilok', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710703', N'71180', N'หินดาด', N'Hin Dat', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710704', N'71180', N'ลิ่นถิ่น', N'Linthin', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710705', N'71180', N'ชะแล', N'Chalae', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710706', N'71180', N'ห้วยเขย่ง', N'Huai Khayeng', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710707', N'71180', N'สหกรณ์นิคม', N'Sahakon Nikhom', N'7107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710801', N'71240', N'หนองลู', N'Nong Lu', N'7108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710802', N'71240', N'ปรังเผล', N'Prang Phle', N'7108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710803', N'71240', N'ไล่โว่', N'Laiwo', N'7108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710901', N'71140', N'พนมทวน', N'Phanom Thuan', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710902', N'71140', N'หนองโรง', N'Nong Rong', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710903', N'71140', N'ทุ่งสมอ', N'Thung Samo', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710904', N'71140', N'ดอนเจดีย์', N'Don Chedi', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710905', N'71140', N'พังตรุ', N'Phang Tru', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710906', N'71170', N'รางหวาย', N'Rang Wai', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710911', N'71140', N'หนองสาหร่าย', N'Nong Sarai', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'710912', N'71140', N'ดอนตาเพชร', N'Don Ta Phet', N'7109')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711001', N'71210', N'เลาขวัญ', N'Lao Khwan', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711002', N'71210', N'หนองโสน', N'Nong Sano', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711003', N'71210', N'หนองประดู่', N'Nong Pradu', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711004', N'71210', N'หนองปลิง', N'Nong Pling', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711005', N'71210', N'หนองนกแก้ว', N'Nong Nok Kaeo', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711006', N'71210', N'ทุ่งกระบ่ำ', N'Thung Krabam', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711007', N'71210', N'หนองฝ้าย', N'Nong Fai', N'7110')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711101', N'71260', N'ด่านมะขามเตี้ย', N'Dan Makham Tia', N'7111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711102', N'71260', N'กลอนโด', N'Klon Do', N'7111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711103', N'71260', N'จรเข้เผือก', N'Chorakhe Phueak', N'7111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711104', N'71260', N'หนองไผ่', N'Nong Phai', N'7111')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711201', N'71220', N'หนองปรือ', N'Nong Prue', N'7112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711202', N'71220', N'หนองปลาไหล', N'Nong Pla Lai', N'7112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711203', N'71220', N'สมเด็จเจริญ', N'Somdet Charoen', N'7112')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711301', N'71170', N'ห้วยกระเจา', N'Huai Krachao', N'7113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711302', N'71170', N'วังไผ่', N'Wang Phai', N'7113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711303', N'71170', N'ดอนแสลบ', N'Don Salaep', N'7113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'711304', N'71170', N'สระลงเรือ', N'Sa Long Ruea', N'7113')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720101', N'72000', N'ท่าพี่เลี้ยง', N'Tha Phi Liang', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720102', N'72000', N'รั้วใหญ่', N'Rua Yai', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720103', N'72000', N'ทับตีเหล็ก', N'Thap Ti Lek', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720104', N'72000', N'ท่าระหัด', N'Tha Rahat', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720105', N'72000', N'ไผ่ขวาง', N'Phai Khwang', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720106', N'72000', N'โคกโคเฒ่า', N'Khok Kho Thao', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720107', N'72000', N'ดอนตาล', N'Don Tan', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720108', N'72000', N'ดอนมะสังข์', N'Don Masang', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720109', N'72000', N'พิหารแดง', N'Phihan Daeng', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720110', N'72000', N'ดอนกำยาน', N'Don Kamyan', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720111', N'72000', N'ดอนโพธิ์ทอง', N'Don Pho Thong', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720112', N'72000', N'บ้านโพธิ์', N'Bang Pho', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720113', N'72230', N'สระแก้ว', N'Sa Kaeo', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720114', N'72230', N'ตลิ่งชัน', N'Taling Chan', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720115', N'72210', N'บางกุ้ง', N'Bang Kung', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720116', N'72210', N'ศาลาขาว', N'Sala Khao', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720117', N'72210', N'สวนแตง', N'Suan Taeng', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720118', N'72000', N'สนามชัย', N'Sanam Chai', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720119', N'72000', N'โพธิ์พระยา', N'Pho Phraya', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720120', N'72230', N'สนามคลี', N'Sanam Khli', N'7201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720201', N'72120', N'เขาพระ', N'Khao Phra', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720202', N'72120', N'เดิมบาง', N'Doem Bang', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720203', N'72120', N'นางบวช', N'Nang Buat', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720204', N'72120', N'เขาดิน', N'Khao Din', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720205', N'72120', N'ปากน้ำ', N'Pak Nam', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720206', N'72120', N'ทุ่งคลี', N'Thung Khli', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720207', N'72120', N'โคกช้าง', N'Khok Chang', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720208', N'72120', N'หัวเขา', N'Hua Khao', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720209', N'72120', N'หัวนา', N'Hua Na', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720210', N'72120', N'บ่อกรุ', N'Bo Kru', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720211', N'72120', N'วังศรีราช', N'Wang Si Rat', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720212', N'72120', N'ป่าสะแก', N'Pa Sakae', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720213', N'72120', N'ยางนอน', N'Yang Non', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720214', N'72120', N'หนองกระทุ่ม', N'Nong Krathum', N'7202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720301', N'72180', N'หนองมะค่าโมง', N'Nong Makha Mong', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720302', N'72180', N'ด่านช้าง', N'Dan Chang', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720303', N'72180', N'ห้วยขมิ้น', N'Huai Khamin', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720304', N'72180', N'องค์พระ', N'Ong Phra', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720305', N'72180', N'วังคัน', N'Wang Khan', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720306', N'72180', N'นิคมกระเสียว', N'Nikhom Krasiao', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720307', N'72180', N'วังยาว', N'Wang Yao', N'7203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720401', N'72150', N'โคกคราม', N'Khok Khram', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720402', N'72150', N'บางปลาม้า', N'Bang Pla Ma', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720403', N'72150', N'ตะค่า', N'Takha', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720404', N'72150', N'บางใหญ่', N'Bang Yai', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720405', N'72150', N'กฤษณา', N'Kritsana', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720406', N'72150', N'สาลี', N'Sali', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720407', N'72150', N'ไผ่กองดิน', N'Phai Kong Din', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720408', N'72150', N'องครักษ์', N'Ongkharak', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720409', N'72150', N'จรเข้ใหญ่', N'Chorakhe Yai', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720410', N'72150', N'บ้านแหลม', N'Ban Laem', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720411', N'72150', N'มะขามล้ม', N'Makham Lom', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720412', N'72150', N'วังน้ำเย็น', N'Wang Nam Yen', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720413', N'72150', N'วัดโบสถ์', N'Wat Bot', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720414', N'72150', N'วัดดาว', N'Wat Dao', N'7204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720501', N'72140', N'ศรีประจันต์', N'Si Prachan', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720502', N'72140', N'บ้านกร่าง', N'Ban Krang', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720503', N'72140', N'มดแดง', N'Mot Daeng', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720504', N'72140', N'บางงาม', N'Bang Ngam', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720505', N'72140', N'ดอนปรู', N'Don Pru', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720506', N'72140', N'ปลายนา', N'Plai Na', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720507', N'72140', N'วังหว้า', N'Wang Wa', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720508', N'72140', N'วังน้ำซับ', N'Wang Nam Sap', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720509', N'72140', N'วังยาง', N'Wang Yang', N'7205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720601', N'72170', N'ดอนเจดีย์', N'Don Chedi', N'7206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720602', N'72170', N'หนองสาหร่าย', N'Nong Sarai', N'7206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720603', N'72170', N'ไร่รถ', N'Rai Rot', N'7206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720604', N'72250', N'สระกระโจม', N'Sa Krachom', N'7206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720605', N'72250', N'ทะเลบก', N'Thale Bok', N'7206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720701', N'72110', N'สองพี่น้อง', N'Song Phi Nong', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720702', N'72110', N'บางเลน', N'Bang Len', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720703', N'72110', N'บางตาเถร', N'Bang Ta Then', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720704', N'72110', N'บางตะเคียน', N'Bang Takhian', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720705', N'72110', N'บ้านกุ่ม', N'Ban Kum', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720706', N'72110', N'หัวโพธิ์', N'Hua Pho', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720707', N'72110', N'บางพลับ', N'Bang Phlap', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720708', N'72110', N'เนินพระปรางค์', N'Noen Phra Prang', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720709', N'72110', N'บ้านช้าง', N'Ban Chang', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720710', N'72110', N'ต้นตาล', N'Ton Tan', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720711', N'72110', N'ศรีสำราญ', N'Si Samran', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720712', N'72110', N'ทุ่งคอก', N'Thung Khok', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720713', N'72190', N'หนองบ่อ', N'Nong Bo', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720714', N'72190', N'บ่อสุพรรณ', N'Bo Suphan', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720715', N'72110', N'ดอนมะนาว', N'Don Manao', N'7207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720801', N'72130', N'ย่านยาว', N'Yan Yao', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720802', N'72130', N'วังลึก', N'Wang Luek', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720803', N'72130', N'สามชุก', N'Sam Chuk', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720804', N'72130', N'หนองผักนาก', N'Nong Phak Nak', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720805', N'72130', N'บ้านสระ', N'Ban Sa', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720806', N'72130', N'หนองสะเดา', N'Nong Sadao', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720807', N'72130', N'กระเสียว', N'Krasiao', N'7208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720901', N'72160', N'อู่ทอง', N'U Thong', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720902', N'72220', N'สระยายโสม', N'Sa Yai Som', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720903', N'71170', N'จรเข้สามพัน', N'Chorakhe Sam Phan', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720904', N'72160', N'บ้านดอน', N'Ban Don', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720905', N'72160', N'ยุ้งทะลาย', N'Yung Thalai', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720906', N'72220', N'ดอนมะเกลือ', N'Don Makluea', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720907', N'72160', N'หนองโอ่ง', N'Nong Ong', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720908', N'72160', N'ดอนคา', N'Don Kha', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720909', N'72160', N'พลับพลาไชย', N'Phlapphla Chai', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720910', N'72160', N'บ้านโข้ง', N'Ban Khong', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720911', N'72160', N'เจดีย์', N'Chedi', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720912', N'72220', N'สระพังลาน', N'Sa Phang Lan', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'720913', N'72160', N'กระจัน', N'Krachan', N'7209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721001', N'72240', N'หนองหญ้าไซ', N'Nong Ya Sai', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721002', N'72240', N'หนองราชวัตร', N'Nong Ratchawat', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721003', N'72240', N'หนองโพธิ์', N'Nong Pho', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721004', N'72240', N'แจงงาม', N'Chaeng Ngam', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721005', N'72240', N'หนองขาม', N'Nong Kham', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'721006', N'72240', N'ทัพหลวง', N'Thap Luang', N'7210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730101', N'73000', N'พระปฐมเจดีย์', N'Phra Pathom Chedi', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730102', N'73000', N'บางแขม', N'Bang Khaem', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730103', N'73000', N'พระประโทน', N'Phra Prathon', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730104', N'73000', N'ธรรมศาลา', N'Thammasala', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730105', N'73000', N'ตาก้อง', N'Ta Kong', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730106', N'73000', N'มาบแค', N'Map Khae', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730107', N'73000', N'สนามจันทร์', N'Sanam Chan', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730108', N'73000', N'ดอนยายหอม', N'Don Yai Hom', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730109', N'73000', N'ถนนขาด', N'Thanon Khat', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730110', N'73000', N'บ่อพลับ', N'Bo Phlap', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730111', N'73000', N'นครปฐม', N'Nakhon Pathom', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730112', N'73000', N'วังตะกู', N'Wang Taku', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730113', N'73000', N'หนองปากโลง', N'Nong Pak Long', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730114', N'73000', N'สามควายเผือก', N'Sam Khwai Phueak', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730115', N'73000', N'ทุ่งน้อย', N'Thung Noi', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730116', N'73000', N'หนองดินแดง', N'Nong Din Daeng', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730117', N'73000', N'วังเย็น', N'Wang Yen', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730118', N'73000', N'โพรงมะเดื่อ', N'Phrong Maduea', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730119', N'73000', N'ลำพยา', N'Lam Phaya', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730120', N'73000', N'สระกะเทียม', N'Sra Kathiam', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730121', N'73000', N'สวนป่าน', N'Suan Pan', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730122', N'73000', N'ห้วยจรเข้', N'Huai Chorakhe', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730123', N'73000', N'ทัพหลวง', N'Thap Luang', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730124', N'73000', N'หนองงูเหลือม', N'Nong Ngu Lueam', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730125', N'73000', N'บ้านยาง', N'Ban Yang', N'7301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730201', N'73140', N'ทุ่งกระพังโหม', N'Thung Kraphang Hom', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730202', N'73180', N'กระตีบ', N'Kratip', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730203', N'73140', N'ทุ่งลูกนก', N'Thung Luk Nok', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730204', N'73140', N'ห้วยขวาง', N'Huai Khwang', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730205', N'73140', N'ทุ่งขวาง', N'Thung Khwang', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730206', N'73180', N'สระสี่มุม', N'Sa Si Mum', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730207', N'73140', N'ทุ่งบัว', N'Thung Bua', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730208', N'73140', N'ดอนข่อย', N'Don Khoi', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730209', N'73180', N'สระพัฒนา', N'Sa Phatthana', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730210', N'73140', N'ห้วยหมอนทอง', N'Huai Mon Thong', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730211', N'73180', N'ห้วยม่วง', N'huai Muang', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730212', N'73140', N'กำแพงแสน', N'Kamphaeng Saen', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730213', N'73140', N'รางพิกุล', N'Rang Phikun', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730214', N'73140', N'หนองกระทุ่ม', N'Nong Krathum', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730215', N'73140', N'วังน้ำเขียว', N'Wang Nam Khiao', N'7302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730301', N'73120', N'นครชัยศรี', N'Nakhon Chai Si', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730302', N'73120', N'บางกระเบา', N'Bang Krabao', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730303', N'73120', N'วัดแค', N'Wat Khae', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730304', N'73120', N'ท่าตำหนัก', N'Tha Tamnak', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730305', N'73120', N'บางแก้ว', N'Bang Kaeo', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730306', N'73120', N'ท่ากระชับ', N'Tha Krachap', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730307', N'73120', N'ขุนแก้ว', N'Khun Kaeo', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730308', N'73120', N'ท่าพระยา', N'Tha Phraya', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730309', N'73120', N'พะเนียด', N'Phaniat', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730310', N'73120', N'บางระกำ', N'Bang Rakam', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730311', N'73120', N'โคกพระเจดีย์', N'Khok Phra Chedi', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730312', N'73120', N'ศรีษะทอง', N'Sisa Thong', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730313', N'73120', N'แหลมบัว', N'Laem Bua', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730314', N'73120', N'ศรีมหาโพธิ์', N'Si Maha Pho', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730315', N'73120', N'สัมปทวน', N'Sampathuan', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730316', N'73120', N'วัดสำโรง', N'Wat Samrong', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730317', N'73120', N'ดอนแฝก', N'Don Faek', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730318', N'73120', N'ห้วยพลู', N'Huai Phlu', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730319', N'73120', N'วัดละมุด', N'Wat Lamut', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730320', N'73120', N'บางพระ', N'Bang Phra', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730321', N'73120', N'บางแก้วฟ้า', N'Bang Kaeo Fa', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730322', N'73120', N'ลานตากฟ้า', N'Lan Tak Fa', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730323', N'73120', N'งิ้วราย', N'Ngio Rai', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730324', N'73120', N'ไทยาวาส', N'Thaiyawat', N'7303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730401', N'73150', N'สามง่าม', N'Sam Ngam', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730402', N'73150', N'ห้วยพระ', N'Huai Phra', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730403', N'73150', N'ลำเหย', N'Lam Hoei', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730404', N'73150', N'ดอนพุทรา', N'Don Phutsa', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730405', N'73150', N'บ้านหลวง', N'Ban Luang', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730406', N'73150', N'ดอนรวก', N'Don Ruak', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730407', N'73150', N'ห้วยด้วน', N'Huai Duan', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730408', N'73150', N'ลำลูกบัว', N'Lam Luk Bua', N'7304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730501', N'73130', N'บางเลน', N'Bang Len', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730502', N'73130', N'บางปลา', N'Bang Pla', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730503', N'73190', N'บางหลวง', N'Bang Luang', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730504', N'73130', N'บางภาษี', N'Bang Phasi', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730505', N'73130', N'บางระกำ', N'Bang Rakam', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730506', N'73130', N'บางไทรป่า', N'Bang Sai Pa', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730507', N'73190', N'หินมูล', N'Hin Mun', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730508', N'73130', N'ไทรงาม', N'Sai Ngam', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730509', N'73130', N'ดอนตูม', N'Don Tum', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730510', N'73130', N'นิลเพชร', N'Nin Phet', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730511', N'73130', N'บัวปากท่า', N'Bua Pak Tha', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730512', N'73130', N'คลองนกกระทุง', N'Khlong Nok Krathung', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730513', N'73130', N'นราภิรมย์', N'Naraphirom', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730514', N'73130', N'ลำพญา', N'Lam Phaya', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730515', N'73130', N'ไผ่หูช้าง', N'Phai Hu Chang', N'7305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730601', N'73110', N'ท่าข้าม', N'Tha Kham', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730602', N'73210', N'ทรงคนอง', N'Song Khanong', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730603', N'73110', N'หอมเกร็ด', N'Hom Kret', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730604', N'73210', N'บางกระทึก', N'Bang Krathuek', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730605', N'73210', N'บางเตย', N'Bang Toei', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730606', N'73110', N'สามพราน', N'Sam Phran', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730607', N'73110', N'บางช้าง', N'Bang Chang', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730608', N'73210', N'ไร่ขิง', N'Rai Khing', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730609', N'73110', N'ท่าตลาด', N'Tha Talat', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730610', N'73220', N'กระทุ่มล้ม', N'Krathum Lom', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730611', N'73110', N'คลองใหม่', N'Khlong Mai', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730612', N'73110', N'ตลาดจินดา', N'Talat Chinda', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730613', N'73110', N'คลองจินดา', N'Khlong Chinda', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730614', N'73110', N'ยายชา', N'Yai Cha', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730615', N'73110', N'บ้านใหม่', N'Ban Mai', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730616', N'73160', N'อ้อมใหญ่', N'Om Yai', N'7306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730701', N'73170', N'ศาลายา', N'Salaya', N'7307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730702', N'73170', N'คลองโยง', N'Khlong Yong', N'7307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'730703', N'73170', N'มหาสวัสดิ์', N'Maha Sawat', N'7307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740101', N'74000', N'มหาชัย', N'Maha Chai', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740102', N'74000', N'ท่าฉลอม', N'Tha Chalom', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740103', N'74000', N'โกรกกราก', N'Krokkrak', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740104', N'74000', N'บ้านบ่อ', N'Ban Bo', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740105', N'74000', N'บางโทรัด', N'Bang Tho Rat', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740106', N'74000', N'กาหลง', N'Kalong', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740107', N'74000', N'นาโคก', N'Na Khok', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740108', N'74000', N'ท่าจีน', N'Tha Chin', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740109', N'74000', N'นาดี', N'Na Di', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740110', N'74000', N'ท่าทราย', N'Tha Sai', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740111', N'74000', N'คอกกระบือ', N'Khok Krabue', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740112', N'74000', N'บางน้ำจืด', N'Bang Nam Chuet', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740113', N'74000', N'พันท้ายนรสิงห์', N'Phan Thai Norasing', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740114', N'74000', N'โคกขาม', N'Khok Kham', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740115', N'74000', N'บ้านเกาะ', N'Ban Ko', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740116', N'74000', N'บางกระเจ้า', N'Bang Krachao', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740117', N'74000', N'บางหญ้าแพรก', N'Bang Ya Phraek', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740118', N'74000', N'ชัยมงคล', N'Chai Mongkon', N'7401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740201', N'74110', N'ตลาดกระทุ่มแบน', N'Talad Krathum Baen', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740202', N'74130', N'อ้อมน้อย', N'Om Noi', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740203', N'74110', N'ท่าไม้', N'Tha Mai', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740204', N'74110', N'สวนหลวง', N'Suan Luang', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740205', N'74110', N'บางยาง', N'Bang Yang', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740206', N'74110', N'คลองมะเดื่อ', N'Khlong Maduea', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740207', N'74110', N'หนองนกไข่', N'Nong Nok Khai', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740208', N'74110', N'ดอนไก่ดี', N'Don Kai Di', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740209', N'74110', N'แคราย', N'Khae Rai', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740210', N'74110', N'ท่าเสา', N'Tha Sao', N'7402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740301', N'74120', N'บ้านแพ้ว', N'Ban Phaeo', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740302', N'74120', N'หลักสาม', N'Lak Sam', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740303', N'74120', N'ยกกระบัตร', N'Yokkrabat', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740304', N'74120', N'โรงเข้', N'Rong Khe', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740305', N'74120', N'หนองสองห้อง', N'Nong Song Hong', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740306', N'74120', N'หนองบัว', N'Nong Bua', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740307', N'74120', N'หลักสอง', N'Lak Song', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740308', N'74120', N'เจ็ดริ้ว', N'Chet Rio', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740309', N'74120', N'คลองตัน', N'Khlong Tan', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740310', N'74120', N'อำแพง', N'Amphaeng', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740311', N'74120', N'สวนส้ม', N'Suan Som', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'740312', N'74120', N'เกษตรพัฒนา', N'Kaset Phatthana', N'7403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750101', N'75000', N'แม่กลอง', N'Mae Klong', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750102', N'75000', N'บางขันแตก', N'Bang Khan Taek', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750103', N'75000', N'ลาดใหญ่', N'Lat Yai', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750104', N'75000', N'บ้านปรก', N'Ban Prok', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750105', N'75000', N'บางแก้ว', N'Bang Kaeo', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750106', N'75000', N'ท้ายหาด', N'Thai Hat', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750107', N'75000', N'แหลมใหญ่', N'Laem Yai', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750108', N'75000', N'คลองเขิน', N'Khlong Khoen', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750109', N'75000', N'คลองโคน', N'Khlong Khon', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750110', N'75000', N'นางตะเคียน', N'Nang Takian', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750111', N'75000', N'บางจะเกร็ง', N'Bang Chakreng', N'7501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750201', N'75120', N'กระดังงา', N'Kradangnga', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750202', N'75120', N'บางสะแก', N'Bang Sakae', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750203', N'75120', N'บางยี่รงค์', N'Bang Yi Rong', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750204', N'75120', N'โรงหีบ', N'Rong Hip', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750205', N'75120', N'บางคนที', N'Bang Khonthi', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750206', N'75120', N'ดอนมะโนรา', N'Don Manora', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750207', N'75120', N'บางพรม', N'Bang Phrom', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750208', N'75120', N'บางกุ้ง', N'Bang Kung', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750209', N'75120', N'จอมปลวก', N'Chom Pluak', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750210', N'75120', N'บางนกแขวก', N'Bang Nok Khwaek', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750211', N'75120', N'ยายแพง', N'Yai Phaeng', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750212', N'75120', N'บางกระบือ', N'Bang Krabue', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750213', N'75120', N'บ้านปราโมทย์', N'Ban Pramot', N'7502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750301', N'75110', N'อัมพวา', N'Amphawa', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750302', N'75110', N'สวนหลวง', N'Suan Luang', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750303', N'75110', N'ท่าคา', N'Tha Kha', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750304', N'75110', N'วัดประดู่', N'Wat Pradu', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750305', N'75110', N'เหมืองใหม่', N'Mueang Mai', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750306', N'75110', N'บางช้าง', N'Bang Chang', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750307', N'75110', N'แควอ้อม', N'Khwaae Om', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750308', N'75110', N'ปลายโพงพาง', N'Plai Phongphang', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750309', N'75110', N'บางแค', N'Bang Khae', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750310', N'75110', N'แพรกหนามแดง', N'Phraek Nam Daeng', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750311', N'75110', N'ยี่สาร', N'Yi San', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'750312', N'75110', N'บางนางลี่', N'Bang Nang Li', N'7503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760101', N'76000', N'ท่าราบ', N'Tha Rap', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760102', N'76000', N'คลองกระแชง', N'Khlong Krachaeng', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760103', N'76000', N'บางจาน', N'Bang Chan', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760104', N'76000', N'นาพันสาม', N'Na Phan Sam', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760105', N'76000', N'ธงชัย', N'Thong Chai', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760106', N'76000', N'บ้านกุ่ม', N'Ban Kum', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760107', N'76000', N'หนองโสน', N'Nong Sano', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760108', N'76000', N'ไร่ส้ม', N'Rai Som', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760109', N'76000', N'เวียงคอย', N'Wiang Khoi', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760110', N'76000', N'บางจาก', N'Bang Chak', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760111', N'76000', N'บ้านหม้อ', N'Ban Mo', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760112', N'76000', N'ต้นมะม่วง', N'Ton Mamuang', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760113', N'76000', N'ช่องสะแก', N'Chong Sakae', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760114', N'76000', N'นาวุ้ง', N'Na Wung', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760115', N'76000', N'สำมะโรง', N'Sam Marong', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760116', N'76000', N'โพพระ', N'Pho Phra', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760117', N'76100', N'หาดเจ้าสำราญ', N'Hat Chao Samran', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760118', N'76000', N'หัวสะพาน', N'Hua Saphan', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760119', N'76000', N'ต้นมะพร้าว', N'Ton Maphrao', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760120', N'76000', N'วังตะโก', N'Wang Tako', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760121', N'76000', N'โพไร่หวาน', N'Pho Rai Wan', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760122', N'76000', N'ดอนยาง', N'Don Yang', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760123', N'76000', N'หนองขนาน', N'Nong Khanan', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760124', N'76000', N'หนองพลับ', N'Nong Phlap', N'7601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760201', N'76140', N'เขาย้อย', N'Khao Yoi', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760202', N'76140', N'สระพัง', N'Sa Phang', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760203', N'76140', N'บางเค็ม', N'Bang Khem', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760204', N'76140', N'ทับคาง', N'Thap Khang', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760205', N'76140', N'หนองปลาไหล', N'Nong Pla Lai', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760206', N'76140', N'หนองปรง', N'Nong Prong', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760207', N'76140', N'หนองชุมพล', N'Nong Chumphon', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760208', N'76140', N'ห้วยโรง', N'Huai Rong', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760209', N'76140', N'ห้วยท่าช้าง', N'Huai Tha Chang', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760210', N'76140', N'หนองชุมพลเหนือ', N'Nong Chumphon Nuea', N'7602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760301', N'76160', N'หนองหญ้าปล้อง', N'Nong Ya Plong', N'7603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760302', N'76160', N'ยางน้ำกลัดเหนือ', N'Yang Nam Klat Nuea', N'7603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760303', N'76160', N'ยางน้ำกลัดใต้', N'Yang Nam Klat Tai', N'7603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760304', N'76160', N'ท่าตะคร้อ', N'Tha Ta Khro', N'7603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760401', N'76120', N'ชะอำ', N'Cha-am', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760402', N'76120', N'บางเก่า', N'Bang Kao', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760403', N'76120', N'นายาง', N'Na Yang', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760404', N'76120', N'เขาใหญ่', N'Khao Yai', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760405', N'76120', N'หนองศาลา', N'Nong Sala', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760406', N'76120', N'ห้วยทรายเหนือ', N'Huai Sai Nuea', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760407', N'76120', N'ไร่ใหม่พัฒนา', N'Rai Mai Phatthana', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760408', N'76120', N'สามพระยา', N'Sam Phraya', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760409', N'76120', N'ดอนขุนห้วย', N'Don Khun Huai', N'7604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760501', N'76130', N'ท่ายาง', N'Tha Yang', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760502', N'76130', N'ท่าคอย', N'Tha Khoi', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760503', N'76130', N'ยางหย่อง', N'Yang Yong', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760504', N'76130', N'หนองจอก', N'Nong Chok', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760505', N'76130', N'มาบปลาเค้า', N'Map Pla Khao', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760506', N'76130', N'ท่าไม้รวก', N'Tha Mai Ruak', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760507', N'76130', N'วังไคร้', N'Wang Khrai', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760511', N'76130', N'กลัดหลวง', N'Klat Luang', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760512', N'76130', N'ปึกเตียน', N'Puek Tian', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760513', N'76130', N'เขากระปุก', N'Khao Krapuk', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760514', N'76130', N'ท่าแลง', N'Tha Laeng', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760515', N'76130', N'บ้านในดง', N'Ban Nai Dong', N'7605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760601', N'76150', N'บ้านลาด', N'Ban Lat', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760602', N'76150', N'บ้านหาด', N'Ban Hat', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760603', N'76150', N'บ้านทาน', N'Ban Than', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760604', N'76150', N'ตำหรุ', N'Tamru', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760605', N'76150', N'สมอพลือ', N'Samo Phlue', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760606', N'76150', N'ไร่มะขาม', N'Rai Makham', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760607', N'76150', N'ท่าเสน', N'Tha Sen', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760608', N'76150', N'หนองกระเจ็ด', N'Nong Krachet', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760609', N'76150', N'หนองกะปุ', N'Nong Kapu', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760610', N'76150', N'ลาดโพธิ์', N'Lat Pho', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760611', N'76150', N'สะพานไกร', N'Saphan Krai', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760612', N'76150', N'ไร่โคก', N'Rai Khok', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760613', N'76150', N'โรงเข้', N'Rong Khe', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760614', N'76150', N'ไร่สะท้อน', N'Rai Sathon', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760615', N'76150', N'ห้วยข้อง', N'Huai Khong', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760616', N'76150', N'ท่าช้าง', N'Tha Chang', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760617', N'76150', N'ถ้ำรงค์', N'Tham Rong', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760618', N'76150', N'ห้วยลึก', N'Huai Luek', N'7606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760701', N'76110', N'บ้านแหลม', N'Ban Laem', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760702', N'76110', N'บางขุนไทร', N'Bang Khun Sai', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760703', N'76110', N'ปากทะเล', N'Pak Thale', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760704', N'76110', N'บางแก้ว', N'Bang Kaeo', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760705', N'76100', N'แหลมผักเบี้ย', N'Laem Phak Bia', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760706', N'76110', N'บางตะบูน', N'Bang Tabun', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760707', N'76110', N'บางตะบูนออก', N'Bang Tabun Ok', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760708', N'76110', N'บางครก', N'Bang Khrok', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760709', N'76110', N'ท่าแร้ง', N'Tha Raeng', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760710', N'76110', N'ท่าแร้งออก', N'Tha Raeng Ok', N'7607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760801', N'76170', N'แก่งกระจาน', N'Kaeng Krachan', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760802', N'76170', N'สองพี่น้อง', N'Song Phi Nong', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760803', N'76170', N'วังจันทร์', N'Wang Chan', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760804', N'76170', N'ป่าเด็ง', N'Pa Deng', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760805', N'76170', N'พุสวรรค์', N'Phu Sawan', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'760806', N'76170', N'ห้วยแม่เพรียง', N'Huai Mae Phriang', N'7608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770101', N'77000', N'ประจวบคีรีขันธ์', N'Prachuap Khiri Khan', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770102', N'77000', N'เกาะหลัก', N'Ko Lak', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770103', N'77000', N'คลองวาฬ', N'Khlong Wan', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770104', N'77000', N'ห้วยทราย', N'Huai Sai', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770105', N'77210', N'อ่าวน้อย', N'Ao Noi', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770106', N'77210', N'บ่อนอก', N'Bo Nok', N'7701')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770201', N'77150', N'กุยบุรี', N'Kui Buri', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770202', N'77150', N'กุยเหนือ', N'Kui Nuea', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770203', N'77150', N'เขาแดง', N'Khao Daeng', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770204', N'77150', N'ดอนยายหนู', N'Don Yai Nu', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770206', N'77150', N'สามกระทาย', N'Sam Krathai', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770207', N'77150', N'หาดขาม', N'Hat Kham', N'7702')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770301', N'77130', N'ทับสะแก', N'Thap Sakae', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770302', N'77130', N'อ่างทอง', N'Ang Thong', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770303', N'77130', N'นาหูกวาง', N'Na Hu Kwang', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770304', N'77130', N'เขาล้าน', N'Khao Lan', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770305', N'77130', N'ห้วยยาง', N'Huai Yang', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770306', N'77130', N'แสงอรุณ', N'Saeng Arun', N'7703')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770401', N'77140', N'กำเนิดนพคุณ', N'Kamnoet Nopphakhun', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770402', N'77140', N'พงศ์ประศาสน์', N'Phong Prasat', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770403', N'77230', N'ร่อนทอง', N'Ron Thong', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770404', N'77190', N'ธงชัย', N'Thong Chai', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770405', N'77190', N'ชัยเกษม', N'Chai Kasem', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770406', N'77230', N'ทองมงคล', N'Thong Mongkhon', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770407', N'77140', N'แม่รำพึง', N'Mae Ramphueng', N'7704')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770501', N'77170', N'ปากแพรก', N'Pak Phraek', N'7705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770502', N'77170', N'บางสะพาน', N'Bang Saphan', N'7705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770503', N'77170', N'ทรายทอง', N'Sai Thong', N'7705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770504', N'77170', N'ช้างแรก', N'Chang Raek', N'7705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770505', N'77170', N'ไชยราช', N'Chai Rat', N'7705')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770601', N'77120', N'ปราณบุรี', N'Pran Buri', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770602', N'77120', N'เขาน้อย', N'Khao Noi', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770604', N'77220', N'ปากน้ำปราณ', N'Pak Nam Pran', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770607', N'77120', N'หนองตาแต้ม', N'Nong Ta Taem', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770608', N'77120', N'วังก์พง', N'Wang Phong', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770609', N'77120', N'เขาจ้าว', N'Khao Chao', N'7706')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770701', N'77110', N'หัวหิน', N'Hua Hin', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770702', N'77110', N'หนองแก', N'Nong Kae', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770703', N'77110', N'หินเหล็กไฟ', N'Hin Lek Fai', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770704', N'77110', N'หนองพลับ', N'Nong Phlap', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770705', N'77110', N'ทับใต้', N'Thap Tai', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770706', N'77110', N'ห้วยสัตว์ใหญ่', N'Huai Sat Yai', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770707', N'77110', N'บึงนคร', N'Bueng Nakhon', N'7707')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770801', N'77120', N'สามร้อยยอด', N'Sam Roi Yot', N'7708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770802', N'77180', N'ศิลาลอย', N'Sila Loi', N'7708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770803', N'77180', N'ไร่เก่า', N'Rai Kao', N'7708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770804', N'77180', N'ศาลาลัย', N'Salalai', N'7708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'770805', N'77180', N'ไร่ใหม่', N'Rai Mai', N'7708')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800101', N'80000', N'ในเมือง', N'Nai Mueang', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800102', N'80000', N'ท่าวัง', N'Tha Wang', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800103', N'80000', N'คลัง', N'Khlang', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800106', N'80000', N'ท่าไร่', N'Tha Rai', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800107', N'80000', N'ปากนคร', N'Pak Nakhon', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800108', N'80280', N'นาทราย', N'Na Sai', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800112', N'80280', N'กำแพงเซา', N'Kamphaeng Sao', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800113', N'80000', N'ไชยมนตรี', N'Chai Montri', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800114', N'80000', N'มะม่วงสองต้น', N'Mamuang Song Ton', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800115', N'80000', N'นาเคียน', N'Na Khian', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800116', N'80280', N'ท่างิ้ว', N'Tha Ngio', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800118', N'80000', N'โพธิ์เสด็จ', N'Pho Sadet', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800119', N'80330', N'บางจาก', N'Bang Chak', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800120', N'80000', N'ปากพูน', N'Pak Phun', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800121', N'80000', N'ท่าซัก', N'Tha Sak', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800122', N'80000', N'ท่าเรือ', N'Tha Ruea', N'8001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800201', N'80320', N'พรหมโลก', N'Phrommalok', N'8002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800202', N'80320', N'บ้านเกาะ', N'Ban Ko', N'8002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800203', N'80320', N'อินคีรี', N'In Khiri', N'8002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800204', N'80320', N'ทอนหงส์', N'Thon Hong', N'8002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800205', N'80320', N'นาเรียง', N'Na Riang', N'8002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800301', N'80230', N'เขาแก้ว', N'Khao Kaeo', N'8003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800302', N'80230', N'ลานสกา', N'Lan Saka', N'8003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800303', N'80230', N'ท่าดี', N'Tha Di', N'8003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800304', N'80230', N'กำโลน', N'Kamlon', N'8003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800305', N'80230', N'ขุนทะเล', N'Khun Thale', N'8003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800401', N'80150', N'ฉวาง', N'Chawang', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800403', N'80250', N'ละอาย', N'La-ai', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800404', N'80260', N'นาแว', N'Na Wae', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800405', N'80260', N'ไม้เรียง', N'Mai Riang', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800406', N'80260', N'กะเปียด', N'Kapiat', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800407', N'80260', N'นากะชะ', N'Na Kacha', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800409', N'80260', N'ห้วยปริก', N'Huai Prik', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800410', N'80150', N'ไสหร้า', N'Sai Ra', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800415', N'80260', N'นาเขลียง', N'Na Khliang', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800416', N'80250', N'จันดี', N'Chan Di', N'8004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800501', N'80270', N'พิปูน', N'Phipun', N'8005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800502', N'80270', N'กะทูน', N'Kathun', N'8005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800503', N'80270', N'เขาพระ', N'Khao Phra', N'8005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800504', N'80270', N'ยางค้อม', N'Yang Khom', N'8005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800505', N'80270', N'ควนกลาง', N'Khuan Klang', N'8005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800601', N'80190', N'เชียรใหญ่', N'Chian Yai', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800603', N'80190', N'ท่าขนาน', N'Tha Khanan', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800604', N'80190', N'บ้านกลาง', N'Ban Klang', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800605', N'80190', N'บ้านเนิน', N'Ban Noen', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800606', N'80190', N'ไสหมาก', N'Sai Mak', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800607', N'80190', N'ท้องลำเจียก', N'Thong Lamchiak', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800610', N'80190', N'เสือหึง', N'Suea Hueng', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800611', N'80190', N'การะเกด', N'Karaket', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800612', N'80190', N'เขาพระบาท', N'Khao Phra Bat', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800613', N'80190', N'แม่เจ้าอยู่หัว', N'Mae chao Yu Hua', N'8006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800701', N'80180', N'ชะอวด', N'Cha-uat', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800702', N'80180', N'ท่าเสม็ด', N'Tha Samet', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800703', N'80180', N'ท่าประจะ', N'Tha Pracha', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800704', N'80180', N'เคร็ง', N'Khreng', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800705', N'80180', N'วังอ่าง', N'Wang Ang', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800706', N'80180', N'บ้านตูล', N'Ban Tun', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800707', N'80180', N'ขอนหาด', N'Khon Hat', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800708', N'80180', N'เกาะขันธ์', N'Ko Khan', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800709', N'80180', N'ควนหนองหงษ์', N'Khuan Nong Hong', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800710', N'80180', N'เขาพระทอง', N'Khao Phra Thong', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800711', N'80180', N'นางหลง', N'Nong Long', N'8007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800801', N'80160', N'ท่าศาลา', N'Tha Sala', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800802', N'80160', N'กลาย', N'Klai', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800803', N'80160', N'ท่าขึ้น', N'Tha Khuen', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800804', N'80160', N'หัวตะพาน', N'Hua Taphan', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800806', N'80160', N'สระแก้ว', N'Sa Kaeo', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800807', N'80160', N'โมคลาน', N'Mokkhalan', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800809', N'80160', N'ไทยบุรี', N'Thai Buri', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800810', N'80160', N'ดอนตะโก', N'Don Tako', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800811', N'80160', N'ตลิ่งชัน', N'Taling Chan', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800813', N'80160', N'โพธิ์ทอง', N'Pho Thong', N'8008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800901', N'80110', N'ปากแพรก', N'Pak Phraek', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800902', N'80110', N'ชะมาย', N'Chamai', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800903', N'80110', N'หนองหงส์', N'Nong Hong', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800904', N'80110', N'ควนกรด', N'Khuan Krot', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800905', N'80110', N'นาไม้ไผ่', N'Na Mai Phai', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800906', N'80110', N'นาหลวงเสน', N'Na Luang Sen', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800907', N'80110', N'เขาโร', N'Khao Ro', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800908', N'80310', N'กะปาง', N'Kapang', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800909', N'80110', N'ที่วัง', N'Thi Wang', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800910', N'80110', N'น้ำตก', N'Nam Tok', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800911', N'80110', N'ถ้ำใหญ่', N'Tham Yai', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800912', N'80110', N'นาโพธิ์', N'Na Pho', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'800913', N'80110', N'เขาขาว', N'Khao Khao', N'8009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801001', N'80220', N'นาบอน', N'Na Bon', N'8010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801002', N'80220', N'ทุ่งสง', N'Thung Song', N'8010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801003', N'80220', N'แก้วแสน', N'Kaeo Saen', N'8010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801101', N'80240', N'ท่ายาง', N'Tha Yang', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801102', N'80240', N'ทุ่งสัง', N'Thung Sang', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801103', N'80240', N'ทุ่งใหญ่', N'Thung Yai', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801104', N'80240', N'กุแหระ', N'Kurae', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801105', N'80240', N'ปริก', N'Prik', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801106', N'80240', N'บางรูป', N'Bang Rup', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801107', N'80240', N'กรุงหยัน', N'Krung Yan', N'8011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801201', N'80140', N'ปากพนัง', N'Pak Phanang', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801202', N'80330', N'คลองน้อย', N'Khlong Noi', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801203', N'80140', N'ป่าระกำ', N'Pa Rakam', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801204', N'80330', N'ชะเมา', N'Chamao', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801205', N'80140', N'คลองกระบือ', N'Khlong Krabue', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801206', N'80330', N'เกาะทวด', N'Ko Thuat', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801207', N'80140', N'บ้านใหม่', N'Ban Mai', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801208', N'80140', N'หูล่อง', N'Hu Long', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801209', N'80140', N'แหลมตะลุมพุก', N'Laem Talumphuk', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801210', N'80140', N'ปากพนังฝั่งตะวันตก', N'Pak Phanang Fang Tawan Tok', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801211', N'80140', N'บางศาลา', N'Bang Sala', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801212', N'80140', N'บางพระ', N'Bang Phra', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801213', N'80140', N'บางตะพง', N'Bang Taphong', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801214', N'80140', N'ปากพนังฝั่งตะวันออก', N'Pak Phanang Fang Tawan Ok', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801215', N'80140', N'บ้านเพิง', N'Ban Phoeng', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801216', N'80140', N'ท่าพยา', N'Tha Phaya', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801217', N'80140', N'ปากแพรก', N'Pak Phraek', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801218', N'80140', N'ขนาบนาก', N'Khanap Nak', N'8012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801301', N'80130', N'ร่อนพิบูลย์', N'Ron Phibun', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801302', N'80350', N'หินตก', N'Hin Tok', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801303', N'80350', N'เสาธง', N'Sao Thong', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801304', N'80130', N'ควนเกย', N'Khuan Koei', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801305', N'80130', N'ควนพัง', N'Khuan Phang', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801306', N'80130', N'ควนชุม', N'Khuan Chum', N'8013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801401', N'80120', N'สิชล', N'Sichon', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801402', N'80120', N'ทุ่งปรัง', N'Thung Prang', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801403', N'80120', N'ฉลอง', N'Chalong', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801404', N'80340', N'เสาเภา', N'Sao Phao', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801405', N'80120', N'เปลี่ยน', N'Plian', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801406', N'80120', N'สี่ขีด', N'Si Khit', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801407', N'80340', N'เทพราช', N'Theppharat', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801408', N'80120', N'เขาน้อย', N'Khao Noi', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801409', N'80120', N'ทุ่งใส', N'Thung Sai', N'8014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801501', N'80210', N'ขนอม', N'Khanom', N'8015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801502', N'80210', N'ควนทอง', N'Khuan Thong', N'8015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801503', N'80210', N'ท้องเนียน', N'Thong Nian', N'8015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801601', N'80170', N'หัวไทร', N'Hua Sai', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801602', N'80170', N'หน้าสตน', N'Na Saton', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801603', N'80170', N'ทรายขาว', N'Sai Khao', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801604', N'80170', N'แหลม', N'Laem', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801605', N'80170', N'เขาพังไกร', N'Khao Phang Krai', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801606', N'80170', N'บ้านราม', N'Ban Ram', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801607', N'80170', N'บางนบ', N'Bang Nop', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801608', N'80170', N'ท่าซอม', N'Tha Som', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801609', N'80170', N'ควนชะลิก', N'Khuan Chalik', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801610', N'80170', N'รามแก้ว', N'Ram Kaeo', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801611', N'80170', N'เกาะเพชร', N'Ko Phet', N'8016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801701', N'80360', N'บางขัน', N'Bang Khan', N'8017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801702', N'80360', N'บ้านลำนาว', N'Ban Lam Nao', N'8017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801703', N'80360', N'วังหิน', N'Wang Hin', N'8017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801704', N'80360', N'บ้านนิคม', N'Ban Nikhom', N'8017')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801801', N'80260', N'ถ้ำพรรณรา', N'Tham Phannara', N'8018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801802', N'80260', N'คลองเส', N'Khlong Se', N'8018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801803', N'80260', N'ดุสิต', N'Dusit', N'8018')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801901', N'80180', N'บ้านควนมุด', N'Ban Khuan Mut', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801902', N'80180', N'บ้านชะอวด', N'Ban Cha-uat', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801903', N'80130', N'ควนหนองคว้า', N'Khuan Nong Khwa', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801904', N'80130', N'ทุ่งโพธิ์', N'Thung Pho', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801905', N'80130', N'นาหมอบุญ', N'Na Mo Bun', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'801906', N'80130', N'สามตำบล', N'Sam Tambon', N'8019')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802001', N'80000', N'นาพรุ', N'Na Phru', N'8020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802002', N'80000', N'นาสาร', N'Na San', N'8020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802003', N'80000', N'ท้ายสำเภา', N'Thai Samphao', N'8020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802004', N'80000', N'ช้างซ้าย', N'Chang Sai', N'8020')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802101', N'80160', N'นบพิตำ', N'Nopphitam', N'8021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802102', N'80160', N'กรุงชิง', N'Krung Ching', N'8021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802103', N'80160', N'กะหรอ', N'Kalo', N'8021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802104', N'80160', N'นาเหรง', N'Na Reng', N'8021')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802201', N'80250', N'ช้างกลาง', N'Chang Klang', N'8022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802202', N'80250', N'หลักช้าง', N'Lak Chang', N'8022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802203', N'80250', N'สวนขัน', N'Suan Khan', N'8022')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802301', N'80190', N'เชียรเขา', N'Chian Khao', N'8023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802302', N'80290', N'ดอนตรอ', N'Don Tro', N'8023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802303', N'80190', N'สวนหลวง', N'Suan Luang', N'8023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'802304', N'80290', N'ทางพูน', N'Thang Phun', N'8023')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810101', N'81000', N'ปากน้ำ', N'Pak Nam', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810102', N'81000', N'กระบี่ใหญ่', N'Krabi Yai', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810103', N'81000', N'กระบี่น้อย', N'Krabi Noi', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810105', N'81000', N'เขาคราม', N'Khao Khram', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810106', N'81000', N'เขาทอง', N'Khao Thong', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810111', N'81000', N'ทับปริก', N'Thap Prik', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810115', N'81000', N'ไสไทย', N'Sai Thai', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810116', N'81000', N'อ่าวนาง', N'Ao Nang', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810117', N'81000', N'หนองทะเล', N'Nong Thale', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810118', N'81000', N'คลองประสงค์', N'Khlong Prasong', N'8101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810201', N'81140', N'เขาพนม', N'Khao Phanom', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810202', N'81140', N'เขาดิน', N'Khao Din', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810203', N'80240', N'สินปุน', N'Sin Pun', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810204', N'81140', N'พรุเตียว', N'Phru Tiao', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810205', N'81140', N'หน้าเขา', N'Na Khao', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810206', N'80240', N'โคกหาร', N'Khok Han', N'8102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810301', N'81150', N'เกาะลันตาใหญ่', N'Ko Lanta Yai', N'8103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810302', N'81150', N'เกาะลันตาน้อย', N'Ko Lanta Noi', N'8103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810303', N'81120', N'เกาะกลาง', N'Ko Klang', N'8103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810304', N'81120', N'คลองยาง', N'Khlong Yang', N'8103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810305', N'81150', N'ศาลาด่าน', N'Sala Dan', N'8103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810401', N'81120', N'คลองท่อมใต้', N'Khlong Thom Tai', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810402', N'81120', N'คลองท่อมเหนือ', N'Khlong Thom Nuea', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810403', N'81170', N'คลองพน', N'Khlong Phon', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810404', N'81170', N'ทรายขาว', N'Sai Khao', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810405', N'81120', N'ห้วยน้ำขาว', N'Huai Nam Khao', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810406', N'81120', N'พรุดินนา', N'Phru Din Na', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810407', N'81120', N'เพหลา', N'Phela', N'8104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810501', N'81110', N'อ่าวลึกใต้', N'Ao Luek Tai', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810502', N'81110', N'แหลมสัก', N'Laem Sak', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810503', N'81110', N'นาเหนือ', N'Na Nuea', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810504', N'81110', N'คลองหิน', N'Khlong Hin', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810505', N'81110', N'อ่าวลึกน้อย', N'Ao Luek Noi', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810506', N'81110', N'อ่าวลึกเหนือ', N'Ao Luek Nuea', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810507', N'81110', N'เขาใหญ่', N'Khao Yai', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810508', N'81110', N'คลองยา', N'Khlong Ya', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810509', N'81110', N'บ้านกลาง', N'Ban Klang', N'8105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810601', N'81160', N'ปลายพระยา', N'Plai Phraya', N'8106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810602', N'81160', N'เขาเขน', N'Khao Khen', N'8106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810603', N'81160', N'เขาต่อ', N'Khao To', N'8106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810604', N'81160', N'คีรีวง', N'Khiri Wong', N'8106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810701', N'81190', N'ลำทับ', N'Lam Thap', N'8107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810702', N'81190', N'ดินอุดม', N'Din Udom', N'8107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810703', N'81190', N'ทุ่งไทรทอง', N'Thung Sai Thong', N'8107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810704', N'81190', N'ดินแดง', N'Din Daeng', N'8107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810801', N'81130', N'เหนือคลอง', N'Nuea Khlong', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810802', N'81130', N'เกาะศรีบอยา', N'Ko Siboya', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810803', N'81130', N'คลองขนาน', N'Khlong Khanan', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810804', N'81130', N'คลองเขม้า', N'Khlong Khamao', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810805', N'81130', N'โคกยาง', N'Khok Yang', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810806', N'81130', N'ตลิ่งชัน', N'Taling Chan', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810807', N'81130', N'ปกาสัย', N'Pakasai', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'810808', N'81130', N'ห้วยยูง', N'Huai Yung', N'8108')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820101', N'82000', N'ท้ายช้าง', N'Thai Chang', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820102', N'82000', N'นบปริง', N'Nop Pring', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820103', N'82000', N'ถ้ำน้ำผุด', N'Tham Nam Phut', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820104', N'82000', N'บางเตย', N'Bang Toei', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820105', N'82000', N'ตากแดด', N'Tak Daet', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820106', N'82000', N'สองแพรก', N'Song Phraek', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820107', N'82000', N'ทุ่งคาโงก', N'Thung Kha Ngok', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820108', N'82000', N'เกาะปันหยี', N'Ko Panyi', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820109', N'82000', N'ป่ากอ', N'Pa Ko', N'8201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820201', N'82160', N'เกาะยาวน้อย', N'Ko Yao Noi', N'8202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820202', N'82160', N'เกาะยาวใหญ่', N'Ko yao Yai', N'8202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820203', N'83000', N'พรุใน', N'Phru Nai', N'8202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820301', N'82170', N'กะปง', N'Kapong', N'8203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820302', N'82170', N'ท่านา', N'Tha Na', N'8203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820303', N'82170', N'เหมาะ', N'Mo', N'8203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820304', N'82170', N'เหล', N'Le', N'8203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820305', N'82170', N'รมณีย์', N'Rommani', N'8203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820401', N'82130', N'ถ้ำ', N'Tham', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820402', N'82130', N'กระโสม', N'Krasom', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820403', N'82130', N'กะไหล', N'Kalai', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820404', N'82130', N'ท่าอยู่', N'Tha Yu', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820405', N'82140', N'หล่อยูง', N'Lo Yung', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820406', N'82140', N'โคกกลอย', N'Khok Kloi', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820407', N'82130', N'คลองเคียน', N'Khlong Khian', N'8204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820501', N'82110', N'ตะกั่วป่า', N'Takua Pa', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820502', N'82110', N'บางนายสี', N'Bang Nai Si', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820503', N'82110', N'บางไทร', N'Bang Sai', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820504', N'82190', N'บางม่วง', N'Bang Muang', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820505', N'82110', N'ตำตัว', N'Tam Tua', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820506', N'82110', N'โคกเคียน', N'Khok Khian', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820507', N'82190', N'คึกคัก', N'Khuekkhak', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820508', N'82190', N'เกาะคอเขา', N'Ko Kho Khao', N'8205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820601', N'82150', N'คุระ', N'Khura', N'8206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820602', N'82150', N'บางวัน', N'Bang Wan', N'8206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820603', N'82150', N'เกาะพระทอง', N'Ko Phra Thong', N'8206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820605', N'82150', N'แม่นางขาว', N'Mae Nang Khao', N'8206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820701', N'82180', N'ทับปุด', N'Thap Put', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820702', N'82180', N'มะรุ่ย', N'Marui', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820703', N'82180', N'บ่อแสน', N'Bo Saen', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820704', N'82180', N'ถ้ำทองหลาง', N'Tham Thonglang', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820705', N'82180', N'โคกเจริญ', N'Khok Charoen', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820706', N'82180', N'บางเหรียง', N'Bang Riang', N'8207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820801', N'82120', N'ท้ายเหมือง', N'Thai Mueang', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820802', N'82120', N'นาเตย', N'Na Toei', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820803', N'82120', N'บางทอง', N'Bang Thong', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820804', N'82120', N'ทุ่งมะพร้าว', N'Thung Maphrao', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820805', N'82120', N'ลำภี', N'Lam Phi', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'820806', N'82210', N'ลำแก่น', N'Lam Kaen', N'8208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830101', N'83000', N'ตลาดใหญ่', N'Talat Yai', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830102', N'83000', N'ตลาดเหนือ', N'Talat Nuea', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830103', N'83000', N'เกาะแก้ว', N'Ko Kaeo', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830104', N'83000', N'รัษฎา', N'Ratsada', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830105', N'83000', N'วิชิต', N'Wichit', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830106', N'83130', N'ฉลอง', N'Chalong', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830107', N'83130', N'ราไวย์', N'Rawai', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830108', N'83100', N'กะรน', N'Karon', N'8301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830201', N'83120', N'กะทู้', N'Kathu', N'8302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830202', N'83150', N'ป่าตอง', N'Pa Tong', N'8302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830203', N'83150', N'กมลา', N'Kamala', N'8302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830301', N'83110', N'เทพกระษัตรี', N'Thep Krasatti', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830302', N'83110', N'ศรีสุนทร', N'Si Sunthon', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830303', N'83110', N'เชิงทะเล', N'Choeng Thale', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830304', N'83110', N'ป่าคลอก', N'Pa Khlok', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830305', N'83110', N'ไม้ขาว', N'Mai Khao', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'830306', N'83110', N'สาคู', N'Sakhu', N'8303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840101', N'84000', N'ตลาด', N'Talat', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840102', N'84000', N'มะขามเตี้ย', N'Makham Tia', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840103', N'84000', N'วัดประดู่', N'Wat Pradu', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840104', N'84100', N'ขุนทะเล', N'Khun Thale', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840105', N'84000', N'บางใบไม้', N'Bang Bai Mai', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840106', N'84000', N'บางชนะ', N'Bang Chana', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840107', N'84000', N'คลองน้อย', N'Khlong Noi', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840108', N'84000', N'บางไทร', N'Bang Sai', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840109', N'84000', N'บางโพธิ์', N'Bang Pho', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840110', N'84000', N'บางกุ้ง', N'Bang Kung', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840111', N'84000', N'คลองฉนาก', N'Khlong Chanak', N'8401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840201', N'84290', N'ท่าทองใหม่', N'Tha Thong Mai', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840202', N'84160', N'ท่าทอง', N'Tha Thong', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840203', N'84160', N'กะแดะ', N'Kadae', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840204', N'84290', N'ทุ่งกง', N'Thung Kong', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840205', N'84160', N'กรูด', N'Krut', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840206', N'84160', N'ช้างซ้าย', N'Chang Sai', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840207', N'84160', N'พลายวาส', N'Phlai Wat', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840208', N'84160', N'ป่าร่อน', N'Pa Ron', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840209', N'84160', N'ตะเคียนทอง', N'Takhian Thong', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840210', N'84160', N'ช้างขวา', N'Chang Khwa', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840211', N'84160', N'ท่าอุแท', N'Tha U-thae', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840212', N'84290', N'ทุ่งรัง', N'Thung Rang', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840213', N'84160', N'คลองสระ', N'Khlong Sa', N'8402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840301', N'84220', N'ดอนสัก', N'Don Sak', N'8403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840302', N'84160', N'ชลคราม', N'Chonlakhram', N'8403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840303', N'84220', N'ไชยคราม', N'Chaiyakhram', N'8403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840304', N'84340', N'ปากแพรก', N'Pak Phraek', N'8403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840401', N'84140', N'อ่างทอง', N'Ang Thong', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840402', N'84140', N'ลิปะน้อย', N'Lipa Noi', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840403', N'84140', N'ตลิ่งงาม', N'Taling Ngam', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840404', N'84140', N'หน้าเมือง', N'Na Mueang', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840405', N'84310', N'มะเร็ต', N'Maret', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840406', N'84320', N'บ่อผุด', N'Bo Phut', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840407', N'84330', N'แม่น้ำ', N'Mae Nam', N'8404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840501', N'84280', N'เกาะพะงัน', N'Ko Pha-ngan', N'8405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840502', N'84280', N'บ้านใต้', N'Ban Tai', N'8405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840503', N'84360', N'เกาะเต่า', N'Ko Tao', N'8405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840601', N'84110', N'ตลาดไชยา', N'Talat Chaiya', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840602', N'84110', N'พุมเรียง', N'Phum Riang', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840603', N'84110', N'เลม็ด', N'Lamet', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840604', N'84110', N'เวียง', N'Wiang', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840605', N'84110', N'ทุ่ง', N'Thung', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840606', N'84110', N'ป่าเว', N'Pa We', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840607', N'84110', N'ตะกรบ', N'Takrop', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840608', N'84110', N'โมถ่าย', N'Mo Thai', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840609', N'84110', N'ปากหมาก', N'Pak Mak', N'8406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840701', N'84170', N'ท่าชนะ', N'Tha Chana', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840702', N'84170', N'สมอทอง', N'Samo Thong', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840703', N'84170', N'ประสงค์', N'Prasong', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840704', N'84170', N'คันธุลี', N'Khan Thuli', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840705', N'84170', N'วัง', N'Wang', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840706', N'84170', N'คลองพา', N'Khlong Pha', N'8407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840801', N'84180', N'ท่าขนอน', N'Tha Khanon', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840802', N'84180', N'บ้านยาง', N'Ban Yang', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840803', N'84180', N'น้ำหัก', N'Nam Hak', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840806', N'84180', N'กะเปา', N'Kapao', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840807', N'84180', N'ท่ากระดาน', N'Tha Kradan', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840808', N'84180', N'ย่านยาว', N'Yan Yao', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840809', N'84180', N'ถ้ำสิงขร', N'Tham Singkhon', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840810', N'84180', N'บ้านทำเนียบ', N'Ban Thamniap', N'8408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840901', N'84230', N'เขาวง', N'Khao Wong', N'8409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840902', N'84230', N'พะแสง', N'Phasaeng', N'8409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840903', N'84230', N'พรุไทย', N'Phru Thai', N'8409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'840904', N'84230', N'เขาพัง', N'Khao Phang', N'8409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841001', N'84250', N'พนม', N'Phanom', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841002', N'84250', N'ต้นยวน', N'Ton Yuan', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841003', N'84250', N'คลองศก', N'Khlong Sok', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841004', N'84250', N'พลูเถื่อน', N'Phlu Thuean', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841005', N'84250', N'พังกาญจน์', N'Phang Kan', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841006', N'84250', N'คลองชะอุ่น', N'Khlong Cha-un', N'8410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841101', N'84150', N'ท่าฉาง', N'Tha Chang', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841102', N'84150', N'ท่าเคย', N'Tha Khoei', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841103', N'84150', N'คลองไทร', N'Khlong Sai', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841104', N'84150', N'เขาถ่าน', N'Khao Than', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841105', N'84150', N'เสวียด', N'Sawiat', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841106', N'84150', N'ปากฉลุย', N'Pak Chalui', N'8411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841201', N'84120', N'นาสาร', N'Na San', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841202', N'84270', N'พรุพี', N'Phru Phi', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841203', N'84120', N'ทุ่งเตา', N'Thung Tao', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841204', N'84120', N'ลำพูน', N'Lamphun', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841205', N'84120', N'ท่าชี', N'Tha Chi', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841206', N'84270', N'ควนศรี', N'Khuan Si', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841207', N'84120', N'ควนสุบรรณ', N'Khuan Suban', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841208', N'84120', N'คลองปราบ', N'Khlong Prap', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841209', N'84120', N'น้ำพุ', N'Nam Phu', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841210', N'84120', N'ทุ่งเตาใหม่', N'Thung Tao Mai', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841211', N'84120', N'เพิ่มพูนทรัพย์', N'Phoem Phun Sap', N'8412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841301', N'84240', N'บ้านนา', N'Ban Na', N'8413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841302', N'84240', N'ท่าเรือ', N'Tha Ruea', N'8413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841303', N'84240', N'ทรัพย์ทวี', N'Sap Thawi', N'8413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841304', N'84240', N'นาใต้', N'Na Tai', N'8413')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841401', N'84260', N'เคียนซา', N'Khian Sa', N'8414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841402', N'84210', N'พ่วงพรมคร', N'Phuang Phrom Khon', N'8414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841403', N'84260', N'เขาตอก', N'Khao Tok', N'8414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841404', N'84260', N'อรัญคามวารี', N'Aranyakham Wari', N'8414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841405', N'84260', N'บ้านเสด็จ', N'Ban Sadet', N'8414')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841501', N'84190', N'เวียงสระ', N'Wiang Sa', N'8415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841502', N'84190', N'บ้านส้อง', N'Ban Song', N'8415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841503', N'84190', N'คลองฉนวน', N'Khlong Chanuan', N'8415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841504', N'84190', N'ทุ่งหลวง', N'Thung Luang', N'8415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841505', N'84190', N'เขานิพันธ์', N'Khao Niphan', N'8415')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841601', N'84210', N'อิปัน', N'I-pan', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841602', N'84210', N'สินปุน', N'Sin Pun', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841603', N'84210', N'บางสวรรค์', N'Bang Sawan', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841604', N'84210', N'ไทรขึง', N'Sai Khueng', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841605', N'84210', N'สินเจริญ', N'Sin Charoen', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841606', N'84210', N'ไทรโสภา', N'Sai Sopha', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841607', N'84210', N'สาคู', N'Sakhu', N'8416')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841701', N'84130', N'ท่าข้าม', N'Tha Kham', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841702', N'84130', N'ท่าสะท้อน', N'Tha Sathon', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841703', N'84130', N'ลีเล็ด', N'Lilet', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841704', N'84130', N'บางมะเดื่อ', N'Bang Maduea', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841705', N'84130', N'บางเดือน', N'Bang Duean', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841706', N'84130', N'ท่าโรงช้าง', N'Tha Rong Chang', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841707', N'84130', N'กรูด', N'Krut', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841708', N'84130', N'พุนพิน', N'Phunphin', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841709', N'84130', N'บางงอน', N'Bang Ngon', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841710', N'84130', N'ศรีวิชัย', N'Si Wichai', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841711', N'84130', N'น้ำรอบ', N'Nam Rop', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841712', N'84130', N'มะลวน', N'Maluan', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841713', N'84130', N'หัวเตย', N'Hua Toei', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841714', N'84130', N'หนองไทร', N'Nong Sai', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841715', N'84130', N'เขาหัวควาย', N'Khao Hua Khwai', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841716', N'84130', N'ตะปาน', N'Tapan', N'8417')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841801', N'84350', N'สองแพรก', N'Song Phraek', N'8418')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841802', N'84350', N'ชัยบุรี', N'Chai Buri', N'8418')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841803', N'84350', N'คลองน้อย', N'Khlong Noi', N'8418')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841804', N'84350', N'ไทรทอง', N'Sai Thong', N'8418')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841901', N'84370', N'ตะกุกใต้', N'Takuk Tai', N'8419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'841902', N'84370', N'ตะกุกเหนือ', N'Takuk Nuea', N'8419')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850101', N'85000', N'เขานิเวศน์', N'Khao Niwet', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850102', N'85000', N'ราชกรูด', N'Ratchakrut', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850103', N'85000', N'หงาว', N'Ngao', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850104', N'85000', N'บางริ้น', N'Bang Rin', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850105', N'85000', N'ปากน้ำ', N'Pak Nam', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850106', N'85000', N'บางนอน', N'Bang Non', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850107', N'85000', N'หาดส้มแป้น', N'Hat Som Paen', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850108', N'85130', N'ทรายแดง', N'Sai Daeng', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850109', N'85000', N'เกาะพยาม', N'Ko Phayam', N'8501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850201', N'85130', N'ละอุ่นใต้', N'La-un Tai', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850202', N'85130', N'ละอุ่นเหนือ', N'La-un Nuea', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850203', N'85130', N'บางพระใต้', N'Bang Phra Tai', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850204', N'85130', N'บางพระเหนือ', N'Bang Phra Nuea', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850205', N'85130', N'บางแก้ว', N'Bang Kaeo', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850206', N'85130', N'ในวงเหนือ', N'Nai Wong Nuea', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850207', N'85130', N'ในวงใต้', N'Nai Wong Tai', N'8502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850301', N'85120', N'ม่วงกลวง', N'Muang Kluang', N'8503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850302', N'85120', N'กะเปอร์', N'Kapoe', N'8503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850303', N'85120', N'เชี่ยวเหลียง', N'Chiao Liang', N'8503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850304', N'85120', N'บ้านนา', N'Ban Na', N'8503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850305', N'85120', N'บางหิน', N'Bang Hin', N'8503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850401', N'85110', N'น้ำจืด', N'Nam Chuet', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850402', N'85110', N'น้ำจืดน้อย', N'Nam Chuet Noi', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850403', N'85110', N'มะมุ', N'Mamu', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850404', N'85110', N'ปากจั่น', N'Pak Chan', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850405', N'85110', N'ลำเลียง', N'Lam Liang', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850406', N'85110', N'จ.ป.ร.', N'Choporo', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850407', N'85110', N'บางใหญ่', N'Bang Yai', N'8504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850501', N'85120', N'นาคา', N'Nakha', N'8505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'850502', N'85120', N'กำพวน', N'Kamphuan', N'8505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860101', N'86000', N'ท่าตะเภา', N'Tha Taphao', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860102', N'86120', N'ปากน้ำ', N'Pak Nam', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860103', N'86000', N'ท่ายาง', N'Tha Yang', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860104', N'86000', N'บางหมาก', N'Bang Mak', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860105', N'86000', N'นาทุ่ง', N'Na Thung', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860106', N'86000', N'นาชะอัง', N'Na Cha-ang', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860107', N'86000', N'ตากแดด', N'Tak Daet', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860108', N'86000', N'บางลึก', N'Bang Luek', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860109', N'86000', N'หาดพันไกร', N'Hat Phan Krai', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860110', N'86000', N'วังไผ่', N'Wang Phai', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860111', N'86190', N'วังใหม่', N'Wang Mai', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860112', N'86190', N'บ้านนา', N'Ban Na', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860113', N'86190', N'ขุนกระทิง', N'Khun Krathing', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860114', N'86100', N'ทุ่งคา', N'Thung Kha', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860115', N'86100', N'วิสัยเหนือ', N'Wisai Nuea', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860116', N'86120', N'หาดทรายรี', N'Hat Sai Ri', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860117', N'86100', N'ถ้ำสิงห์', N'Tham Sing', N'8601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860201', N'86140', N'ท่าแซะ', N'Tha Sae', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860202', N'86140', N'คุริง', N'Khuring', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860203', N'86140', N'สลุย', N'Salui', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860204', N'86140', N'นากระตาม', N'Na Kratam', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860205', N'86190', N'รับร่อ', N'Rap Ro', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860206', N'86140', N'ท่าข้าม', N'Tha Kham', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860207', N'86140', N'หงษ์เจริญ', N'Hong Charoen', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860208', N'86190', N'หินแก้ว', N'Hin Kaeo', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860209', N'86140', N'ทรัพย์อนันต์', N'Sap Anan', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860210', N'86140', N'สองพี่น้อง', N'Song Phi Nong', N'8602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860301', N'86160', N'บางสน', N'Bang Son', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860302', N'86160', N'ทะเลทรัพย์', N'Thale Sap', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860303', N'86230', N'สะพลี', N'Saphli', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860304', N'86160', N'ชุมโค', N'Chum Kho', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860305', N'86210', N'ดอนยาง', N'Don Yang', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860306', N'86210', N'ปากคลอง', N'Pak Khlong', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860307', N'86210', N'เขาไชยราช', N'Khao Chai Rat', N'8603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860401', N'86110', N'หลังสวน', N'Lang Suan', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860402', N'86110', N'ขันเงิน', N'Khan Ngoen', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860403', N'86110', N'ท่ามะพลา', N'Tha Maphla', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860404', N'86110', N'นาขา', N'Na Kha', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860405', N'86110', N'นาพญา', N'Na Phaya', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860406', N'86110', N'บ้านควน', N'Ban Khuan', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860407', N'86110', N'บางมะพร้าว', N'Bang Maphrao', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860408', N'86150', N'บางน้ำจืด', N'Bang Nam Chuet', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860409', N'86150', N'ปากน้ำ', N'Pak Nam', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860410', N'86110', N'พ้อแดง', N'Pho Daeng', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860411', N'86110', N'แหลมทราย', N'Laem Sai', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860412', N'86110', N'วังตะกอ', N'Wang Tako', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860413', N'86110', N'หาดยาย', N'Hat yai', N'8604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860501', N'86170', N'ละแม', N'Lamae', N'8605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860502', N'86170', N'ทุ่งหลวง', N'Thung Luang', N'8605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860503', N'86170', N'สวนแตง', N'Suan Taeng', N'8605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860504', N'86170', N'ทุ่งคาวัด', N'Thung Kha Wat', N'8605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860601', N'86180', N'พะโต๊ะ', N'Phato', N'8606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860602', N'86180', N'ปากทรง', N'Pak Song', N'8606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860603', N'86180', N'ปังหวาน', N'Pang Wan', N'8606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860604', N'86180', N'พระรักษ์', N'Phra Rak', N'8606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860701', N'86130', N'นาโพธิ์', N'Na Pho', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860702', N'86130', N'สวี', N'Sawi', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860703', N'86130', N'ทุ่งระยะ', N'Thung Raya', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860704', N'86130', N'ท่าหิน', N'Tha Hin', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860705', N'86130', N'ปากแพรก', N'Pak Phraek', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860706', N'86130', N'ด่านสวี', N'Dan Sawi', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860707', N'86130', N'ครน', N'Khron', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860708', N'86130', N'วิสัยใต้', N'Wisai Tai', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860709', N'86130', N'นาสัก', N'Na Sak', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860710', N'86130', N'เขาทะลุ', N'Khao Thalu', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860711', N'86130', N'เขาค่าย', N'Khao Khai', N'8607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860801', N'86220', N'ปากตะโก', N'Pak Tako', N'8608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860802', N'86220', N'ทุ่งตะไคร', N'Thung Takhrai', N'8608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860803', N'86220', N'ตะโก', N'Tako', N'8608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'860804', N'86220', N'ช่องไม้แก้ว', N'Chong Mai Kaeo', N'8608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900101', N'90000', N'บ่อยาง', N'Bo Yang', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900102', N'90000', N'เขารูปช้าง', N'Khao Rup Chang', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900103', N'90000', N'เกาะแต้ว', N'Ko Taeo', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900104', N'90100', N'พะวง', N'Phawong', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900105', N'90000', N'ทุ่งหวัง', N'Thung Wang', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900106', N'90100', N'เกาะยอ', N'Ko Yo', N'9001')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900201', N'90190', N'จะทิ้งพระ', N'Chathing Phra', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900202', N'90190', N'กระดังงา', N'Kradang-nga', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900203', N'90190', N'สนามชัย', N'Sanam Chai', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900204', N'90190', N'ดีหลวง', N'Di Luang', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900205', N'90190', N'ชุมพล', N'Chumphon', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900206', N'90190', N'คลองรี', N'Khlong Ri', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900207', N'90190', N'คูขุด', N'Khu Khut', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900208', N'90190', N'ท่าหิน', N'Tha Hin', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900209', N'90190', N'วัดจันทร์', N'Wat Chan', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900210', N'90190', N'บ่อแดง', N'Bo Daeng', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900211', N'90190', N'บ่อดาน', N'Bo Dan', N'9002')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900301', N'90130', N'บ้านนา', N'Ban Na', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900302', N'90130', N'ป่าชิง', N'Pa Ching', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900303', N'90130', N'สะพานไม้แก่น', N'Saphan Mai Kaen', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900304', N'90130', N'สะกอม', N'Sakom', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900305', N'90130', N'นาหว้า', N'Na Wa', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900306', N'90130', N'นาทับ', N'Na Thap', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900307', N'90130', N'น้ำขาว', N'Nam Khao', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900308', N'90130', N'ขุนตัดหวาย', N'Khun Tat Wai', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900309', N'90130', N'ท่าหมอไทร', N'Tha Mo Sai', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900310', N'90130', N'จะโหนง', N'Chanong', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900311', N'90130', N'คู', N'Khu', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900312', N'90130', N'แค', N'Khae', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900313', N'90130', N'คลองเปียะ', N'Khlong Pia', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900314', N'90130', N'ตลิ่งชัน', N'Taling Chan', N'9003')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900401', N'90160', N'นาทวี', N'Na Thawi', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900402', N'90160', N'ฉาง', N'Chang', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900403', N'90160', N'นาหมอศรี', N'Na Mo Si', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900404', N'90160', N'คลองทราย', N'Khlong Sai', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900405', N'90160', N'ปลักหนู', N'Plak Nu', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900406', N'90160', N'ท่าประดู่', N'Tha Pradu', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900407', N'90160', N'สะท้อน', N'Sathon', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900408', N'90160', N'ทับช้าง', N'Thap Chang', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900409', N'90160', N'ประกอบ', N'Prakop', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900410', N'90160', N'คลองกวาง', N'Khlong Kwang', N'9004')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900501', N'90150', N'เทพา', N'Thepha', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900502', N'90150', N'ปากบาง', N'Pak Bang', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900503', N'90150', N'เกาะสะบ้า', N'Ko Saba', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900504', N'90260', N'ลำไพล', N'Lam Phlai', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900505', N'90150', N'ท่าม่วง', N'Tha Muang', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900506', N'90260', N'วังใหญ่', N'Wang Yai', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900507', N'90150', N'สะกอม', N'Sakom', N'9005')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900601', N'90210', N'สะบ้าย้อย', N'Saba Yoi', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900602', N'90210', N'ทุ่งพอ', N'Thung Pho', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900603', N'90210', N'เปียน', N'Pian', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900604', N'90210', N'บ้านโหนด', N'Ban Not', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900605', N'90210', N'จะแหน', N'Chanae', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900606', N'90210', N'คูหา', N'Khuha', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900607', N'90210', N'เขาแดง', N'Khao Daeng', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900608', N'90210', N'บาโหย', N'Ba Hoi', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900609', N'90210', N'ธารคีรี', N'Than Khiri', N'9006')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900701', N'90140', N'ระโนด', N'Ranot', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900702', N'90140', N'คลองแดน', N'Khlong Daen', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900703', N'90140', N'ตะเครียะ', N'Takhria', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900704', N'90140', N'ท่าบอน', N'Tha Bon', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900705', N'90140', N'บ้านใหม่', N'Ban Mai', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900706', N'90140', N'บ่อตรุ', N'Bo Tru', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900707', N'90140', N'ปากแตระ', N'Pak Trae', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900708', N'90140', N'พังยาง', N'Phang Yang', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900709', N'90140', N'ระวะ', N'Rawa', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900710', N'90140', N'วัดสน', N'Wat Son', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900711', N'90140', N'บ้านขาว', N'Ban Khwa', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900712', N'90140', N'แดนสงวน', N'Daen Sa-nguan', N'9007')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900801', N'90270', N'เกาะใหญ่', N'Ko Yai', N'9008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900802', N'90270', N'โรง', N'Rong', N'9008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900803', N'90270', N'เชิงแส', N'Choeng Sae', N'9008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900804', N'90270', N'กระแสสินธุ์', N'Krasae Sin', N'9008')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900901', N'90180', N'กำแพงเพชร', N'Kamphaeng Phet', N'9009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900902', N'90180', N'ท่าชะมวง', N'Tha Chamuang', N'9009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900903', N'90180', N'คูหาใต้', N'Khuha Tai', N'9009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900904', N'90180', N'ควนรู', N'Khuan Ru', N'9009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'900909', N'90180', N'เขาพระ', N'Khao Phra', N'9009')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901001', N'90120', N'สะเดา', N'Sadao', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901002', N'90120', N'ปริก', N'Prik', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901003', N'90170', N'พังลา', N'Phang La', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901004', N'90120', N'สำนักแต้ว', N'Samnak Taeo', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901005', N'90240', N'ทุ่งหมอ', N'Thung Mo', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901006', N'90170', N'ท่าโพธิ์', N'Tha Pho', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901007', N'90240', N'ปาดังเบซาร์', N'Padang Besa', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901008', N'90320', N'สำนักขาม', N'Samnak Kham', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901009', N'90170', N'เขามีเกียรติ', N'Khao Mi Kiat', N'9010')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901101', N'90110', N'หาดใหญ่', N'Hat yai', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901102', N'90110', N'ควนลัง', N'Khuan Lang', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901103', N'90110', N'คูเต่า', N'Khu Tao', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901104', N'90110', N'คอหงส์', N'Kho Hong', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901105', N'90110', N'คลองแห', N'Khlong Hae', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901107', N'90110', N'คลองอู่ตะเภา', N'Khlong U Taphao', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901108', N'90110', N'ฉลุง', N'Chalung', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901111', N'90110', N'ทุ่งใหญ่', N'Thung Yai', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901112', N'90110', N'ทุ่งตำเสา', N'Thung Tam Sao', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901113', N'90110', N'ท่าข้าม', N'Tha Kham', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901114', N'90110', N'น้ำน้อย', N'Nam Noi', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901116', N'90250', N'บ้านพรุ', N'Ban Phru', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901118', N'90230', N'พะตง', N'Phatong', N'9011')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901201', N'90310', N'นาหม่อม', N'Na Mom', N'9012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901202', N'90310', N'พิจิตร', N'Phichit', N'9012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901203', N'90310', N'ทุ่งขมิ้น', N'Thung Khamin', N'9012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901204', N'90310', N'คลองหรัง', N'Khlong Rang', N'9012')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901301', N'90220', N'รัตภูมิ', N'Rattaphum', N'9013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901302', N'90220', N'ควนโส', N'Khuan So', N'9013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901303', N'90220', N'ห้วยลึก', N'Huai Luek', N'9013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901304', N'90220', N'บางเหรียง', N'Bang Riang', N'9013')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901401', N'90110', N'บางกล่ำ', N'Bang Klam', N'9014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901402', N'90110', N'ท่าช้าง', N'Tha Chang', N'9014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901403', N'90110', N'แม่ทอม', N'Mae Thom', N'9014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901404', N'90110', N'บ้านหาร', N'Ban Han', N'9014')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901501', N'90280', N'ชิงโค', N'Ching Kho', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901502', N'90280', N'สทิงหม้อ', N'Sathing Mo', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901503', N'90280', N'ทำนบ', N'Thamnop', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901504', N'90330', N'รำแดง', N'Ram Daeng', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901505', N'90330', N'วัดขนุน', N'Wat Khanun', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901506', N'90330', N'ชะแล้', N'Chalae', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901507', N'90330', N'ปากรอ', N'Pak Ro', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901508', N'90330', N'ป่าขาด', N'Pa Khat', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901509', N'90280', N'หัวเขา', N'Hua Khao', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901510', N'90330', N'บางเขียด', N'Bang Khiat', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901511', N'90330', N'ม่วงงาม', N'Muang Ngam', N'9015')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901601', N'90230', N'คลองหอยโข่ง', N'Khlong Hoi Khong', N'9016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901602', N'90230', N'ทุ่งลาน', N'Thung Lan', N'9016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901603', N'90230', N'โคกม่วง', N'Khok Muang', N'9016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'901604', N'90110', N'คลองหลา', N'Khlong La', N'9016')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910101', N'91000', N'พิมาน', N'Phiman', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910102', N'91000', N'คลองขุด', N'Khlong Khut', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910103', N'91000', N'ควนขัน', N'Khuan Khan', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910104', N'91140', N'บ้านควน', N'Ban Khuan', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910105', N'91140', N'ฉลุง', N'Chalung', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910106', N'91000', N'เกาะสาหร่าย', N'Ko Sarai', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910107', N'91000', N'ตันหยงโป', N'Tanyong Po', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910108', N'91000', N'เจ๊ะบิลัง', N'Che Bilang', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910109', N'91000', N'ตำมะลัง', N'Tam Malang', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910110', N'91000', N'ปูยู', N'Puyu', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910111', N'91140', N'ควนโพธิ์', N'Khuan Pho', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910112', N'91140', N'เกตรี', N'Ket Ri', N'9101')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910201', N'91160', N'ควนโดน', N'Khuan Don', N'9102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910202', N'91160', N'ควนสตอ', N'Khuan Sato', N'9102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910203', N'91160', N'ย่านซื่อ', N'Yan Sue', N'9102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910204', N'91160', N'วังประจัน', N'Wang Prachan', N'9102')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910301', N'91130', N'ทุ่งนุ้ย', N'Thung Nui', N'9103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910302', N'91130', N'ควนกาหลง', N'Khuan Kalong', N'9103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910303', N'91130', N'อุใดเจริญ', N'Udai Charoen', N'9103')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910401', N'91150', N'ท่าแพ', N'Tha Phae', N'9104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910402', N'91150', N'แป-ระ', N'Pae-ra', N'9104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910403', N'91150', N'สาคร', N'Sakhon', N'9104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910404', N'91150', N'ท่าเรือ', N'Tha Ruea', N'9104')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910501', N'91110', N'กำแพง', N'Kamphaeng', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910502', N'91110', N'ละงู', N'La-ngu', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910503', N'91110', N'เขาขาว', N'Khao Khao', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910504', N'91110', N'ปากน้ำ', N'Pak Nam', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910505', N'91110', N'น้ำผุด', N'Nam Phut', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910506', N'91110', N'แหลมสน', N'Laem Son', N'9105')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910601', N'91120', N'ทุ่งหว้า', N'Thung Wa', N'9106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910602', N'91120', N'นาทอน', N'Na Thon', N'9106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910603', N'91120', N'ขอนคลาน', N'Khon Khlan', N'9106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910604', N'91120', N'ทุ่งบุหลัง', N'Thung Bu Lang', N'9106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910605', N'91120', N'ป่าแก่บ่อหิน', N'Pa Kae Bo Hin', N'9106')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910701', N'91130', N'ปาล์มพัฒนา', N'Pam Phatthana', N'9107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'910702', N'91130', N'นิคมพัฒนา', N'Nikhom Phatthana', N'9107')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920101', N'92000', N'ทับเที่ยง', N'Thap Thiang', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920104', N'92000', N'นาพละ', N'Na Phala', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920105', N'92000', N'บ้านควน', N'Ban Khuan', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920106', N'92170', N'นาบินหลา', N'Na Bin La', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920107', N'92000', N'ควนปริง', N'Khuan Pring', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920108', N'92170', N'นาโยงใต้', N'Na Yong Tai', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920109', N'92000', N'บางรัก', N'Bang Rak', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920110', N'92000', N'โคกหล่อ', N'Khok Lo', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920113', N'92000', N'นาโต๊ะหมิง', N'Na To Ming', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920114', N'92000', N'หนองตรุด', N'Nong Trut', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920115', N'92000', N'น้ำผุด', N'Nam Phut', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920117', N'92000', N'นาตาล่วง', N'Na Ta Luang', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920118', N'92000', N'บ้านโพธิ์', N'Ban Pho', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920119', N'92190', N'นาท่ามเหนือ', N'Na Tham Nuea', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920120', N'92190', N'นาท่ามใต้', N'Na Tham Tai', N'9201')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920201', N'92110', N'กันตัง', N'Kantang', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920202', N'92110', N'ควนธานี', N'Khuan Thani', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920203', N'92110', N'บางหมาก', N'Bang Mak', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920204', N'92110', N'บางเป้า', N'Bang Pao', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920205', N'92110', N'วังวน', N'Wang Won', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920206', N'92110', N'กันตังใต้', N'Kantang Tai', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920207', N'92110', N'โคกยาง', N'Khok Yang', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920208', N'92110', N'คลองลุ', N'Khlong Lu', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920209', N'92110', N'ย่านซื่อ', N'Yan Sue', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920210', N'92110', N'บ่อน้ำร้อน', N'Bo Nam Ron', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920211', N'92110', N'บางสัก', N'Bang Sak', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920212', N'92110', N'นาเกลือ', N'Na Kluea', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920213', N'92110', N'เกาะลิบง', N'Ko Libong', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920214', N'92110', N'คลองชีล้อม', N'Khlong Chi Lom', N'9202')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920301', N'92140', N'ย่านตาขาว', N'Yan Ta Khao', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920302', N'92140', N'หนองบ่อ', N'Nong Bo', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920303', N'92140', N'นาชุมเห็ด', N'Na Chum Het', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920304', N'92140', N'ในควน', N'Nai Khuan', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920305', N'92140', N'โพรงจระเข้', N'Phrong Chorakhe', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920306', N'92140', N'ทุ่งกระบือ', N'Thung Krabue', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920307', N'92140', N'ทุ่งค่าย', N'Thung Khai', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920308', N'92140', N'เกาะเปียะ', N'Ko Pia', N'9203')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920401', N'92120', N'ท่าข้าม', N'Tha Kham', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920402', N'92180', N'ทุ่งยาว', N'Thung Yao', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920403', N'92180', N'ปะเหลียน', N'Palian', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920404', N'92140', N'บางด้วน', N'Bang Duan', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920407', N'92140', N'บ้านนา', N'Ban Na', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920409', N'92120', N'สุโสะ', N'Suso', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920410', N'92180', N'ลิพัง', N'Liphang', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920411', N'92120', N'เกาะสุกร', N'Ko Sukon', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920412', N'92140', N'ท่าพญา', N'Tha Phaya', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920413', N'92180', N'แหลมสอม', N'Laem Som', N'9204')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920501', N'92150', N'บ่อหิน', N'Bo Hin', N'9205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920502', N'92150', N'เขาไม้แก้ว', N'Khao Mai Kaeo', N'9205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920503', N'92150', N'กะลาเส', N'Kalase', N'9205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920504', N'92150', N'ไม้ฝาด', N'Mai Fat', N'9205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920505', N'92000', N'นาเมืองเพชร', N'Na Mueang Phet', N'9205')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920601', N'92130', N'ห้วยยอด', N'Huai Yot', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920602', N'92130', N'หนองช้างแล่น', N'Nong Chang Laen', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920605', N'92210', N'บางดี', N'Bang Di', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920606', N'92210', N'บางกุ้ง', N'Bang Kung', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920607', N'92130', N'เขากอบ', N'Khao Kop', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920608', N'92130', N'เขาขาว', N'Khao Khao', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920609', N'92130', N'เขาปูน', N'Khao Pun', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920610', N'92190', N'ปากแจ่ม', N'Pak Chaem', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920611', N'92130', N'ปากคม', N'Pak Khom', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920614', N'92130', N'ท่างิ้ว', N'Tha Ngio', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920615', N'92190', N'ลำภูรา', N'Lamphu Ra', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920616', N'92210', N'นาวง', N'Na Wong', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920617', N'92130', N'ห้วยนาง', N'Huai Nang', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920619', N'92130', N'ในเตา', N'Nai Tao', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920620', N'92130', N'ทุ่งต่อ', N'Thung To', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920621', N'92210', N'วังคีรี', N'Wang Khiri', N'9206')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920701', N'92220', N'เขาวิเศษ', N'Khao Wiset', N'9207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920702', N'92220', N'วังมะปราง', N'Wang Maprang', N'9207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920703', N'92220', N'อ่าวตง', N'Ao Tong', N'9207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920704', N'92000', N'ท่าสะบ้า', N'Tha Saba', N'9207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920705', N'92220', N'วังมะปรางเหนือ', N'Wang Maprang Nuea', N'9207')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920801', N'92170', N'นาโยงเหนือ', N'Na Yong Nuea', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920802', N'92170', N'ช่อง', N'Chong', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920803', N'92170', N'ละมอ', N'Lamo', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920804', N'92170', N'โคกสะบ้า', N'Khok Saba', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920805', N'92170', N'นาหมื่นศรี', N'Na Muen Si', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920806', N'92170', N'นาข้าวเสีย', N'Na Khao Sia', N'9208')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920901', N'92160', N'ควนเมา', N'Khuan Mao', N'9209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920902', N'92160', N'คลองปาง', N'Khlong Pang', N'9209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920903', N'92160', N'หนองบัว', N'Nong Bua', N'9209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920904', N'92130', N'หนองปรือ', N'Nong Prue', N'9209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'920905', N'92160', N'เขาไพร', N'Khao Phrai', N'9209')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'921001', N'92120', N'หาดสำราญ', N'Hat Samran', N'9210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'921002', N'92120', N'บ้าหวี', N'Ba Wi', N'9210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'921003', N'92120', N'ตะเสะ', N'Tase', N'9210')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930101', N'93000', N'คูหาสวรรค์', N'Khuha Sawan', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930103', N'93000', N'เขาเจียก', N'Khao Chiak', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930104', N'93000', N'ท่ามิหรำ', N'Tha Miram', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930105', N'93000', N'โคกชะงาย', N'Khok Cha-ngai', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930106', N'93000', N'นาท่อม', N'Na Thom', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930107', N'93000', N'ปรางหมู่', N'Prang Mu', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930108', N'93000', N'ท่าแค', N'Tha Kae', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930109', N'93000', N'ลำปำ', N'Lampam', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930110', N'93000', N'ตำนาน', N'Tamnan', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930111', N'93000', N'ควนมะพร้าว', N'Khuan Maphrao', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930112', N'93000', N'ร่มเมือง', N'Rom Mueang', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930113', N'93000', N'ชัยบุรี', N'Chai Buri', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930114', N'93000', N'นาโหนด', N'Na Not', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930115', N'93000', N'พญาขัน', N'Phaya Khan', N'9301')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930201', N'93180', N'กงหรา', N'Kong Ra', N'9302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930202', N'93000', N'ชะรัด', N'Charat', N'9302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930203', N'93180', N'คลองเฉลิม', N'Khlong Chaloem', N'9302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930204', N'93180', N'คลองทรายขาว', N'Khlong Sai Khao', N'9302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930205', N'93000', N'สมหวัง', N'Som Wang', N'9302')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930301', N'93130', N'เขาชัยสน', N'Khao Chaison', N'9303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930302', N'93130', N'ควนขนุน', N'Khuan Khanun', N'9303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930305', N'93130', N'จองถนน', N'Chong Thanon', N'9303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930306', N'93130', N'หานโพธิ์', N'Han Pho', N'9303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930307', N'93130', N'โคกม่วง', N'Khok Muang', N'9303')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930401', N'93160', N'แม่ขรี', N'Mae Khari', N'9304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930402', N'93160', N'ตะโหมด', N'Tamot', N'9304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930403', N'93160', N'คลองใหญ่', N'Khlong Yai', N'9304')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930501', N'93110', N'ควนขนุน', N'Khuan Khanun', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930502', N'93150', N'ทะเลน้อย', N'Thale Noi', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930504', N'93110', N'นาขยาด', N'Na Khayat', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930505', N'93110', N'พนมวังก์', N'Phanom Wang', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930506', N'93110', N'แหลมโตนด', N'Laem Tanot', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930508', N'93110', N'ปันแต', N'Pan Tae', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930509', N'93110', N'โตนดด้วน', N'Tanot Duan', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930510', N'93110', N'ดอนทราย', N'Don Sai', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930511', N'93150', N'มะกอกเหนือ', N'Makok Nuea', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930512', N'93150', N'พนางตุง', N'Phanang Tung', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930513', N'93110', N'ชะมวง', N'Chamuang', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930516', N'93110', N'แพรกหา', N'Phraek Ha', N'9305')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930601', N'93120', N'ปากพะยูน', N'Pak Phayun', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930602', N'93120', N'ดอนประดู่', N'Don Pradu', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930603', N'93120', N'เกาะนางคำ', N'Ko Nang Kham', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930604', N'93120', N'เกาะหมาก', N'Ko Mak', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930605', N'93120', N'ฝาละมี', N'Falami', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930606', N'93120', N'หารเทา', N'Han Thao', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930607', N'93120', N'ดอนทราย', N'Don Sai', N'9306')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930701', N'93190', N'เขาย่า', N'Khao Ya', N'9307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930702', N'93190', N'เขาปู่', N'Khao Pu', N'9307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930703', N'93190', N'ตะแพน', N'Taphaen', N'9307')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930801', N'93170', N'ป่าบอน', N'Pa Bon', N'9308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930802', N'93170', N'โคกทราย', N'Khok Sai', N'9308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930803', N'93170', N'หนองธง', N'Nong Thong', N'9308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930804', N'93170', N'ทุ่งนารี', N'Thung Nari', N'9308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930806', N'93170', N'วังใหม่', N'Wang Mai', N'9308')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930901', N'93140', N'ท่ามะเดื่อ', N'Tha Maduea', N'9309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930902', N'93140', N'นาปะขอ', N'Na Pakho', N'9309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'930903', N'93140', N'โคกสัก', N'Khok Sak', N'9309')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931001', N'93210', N'ป่าพะยอม', N'Pa Phayom', N'9310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931002', N'93210', N'ลานข่อย', N'Lan Khoi', N'9310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931003', N'93210', N'เกาะเต่า', N'Ko Tao', N'9310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931004', N'93210', N'บ้านพร้าว', N'Ban Phrao', N'9310')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931101', N'93000', N'ชุมพล', N'Chumpon', N'9311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931102', N'93000', N'บ้านนา', N'Ban Na', N'9311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931103', N'93000', N'อ่างทอง', N'Ang Thong', N'9311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'931104', N'93000', N'ลำสินธุ์', N'Lam Sin', N'9311')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940101', N'94000', N'สะบารัง', N'Sabarang', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940102', N'94000', N'อาเนาะรู', N'Anoru', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940103', N'94000', N'จะบังติกอ', N'Chabang Tiko', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940104', N'94000', N'บานา', N'Bana', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940105', N'94000', N'ตันหยงลุโละ', N'Tanyong Lulo', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940106', N'94000', N'คลองมานิง', N'Khlong Maning', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940107', N'94000', N'กะมิยอ', N'Kamiyo', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940108', N'94000', N'บาราโหม', N'Bara Hom', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940109', N'94000', N'ปะกาฮะรัง', N'Paka Harang', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940110', N'94000', N'รูสะมิแล', N'Ru Samilae', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940111', N'94000', N'ตะลุโบะ', N'Talubo', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940112', N'94000', N'บาราเฮาะ', N'Bara Ho', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940113', N'94000', N'ปุยุด', N'Puyut', N'9401')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940201', N'94120', N'โคกโพธิ์', N'Khok Pho', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940202', N'94120', N'มะกรูด', N'Makrut', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940203', N'94120', N'บางโกระ', N'Bang Kro', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940204', N'94120', N'ป่าบอน', N'Pa Bon', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940205', N'94120', N'ทรายขาว', N'Sai Khao', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940206', N'94180', N'นาประดู่', N'Na Pradu', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940207', N'94180', N'ปากล่อ', N'Pak Lo', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940208', N'94180', N'ทุ่งพลา', N'Thung Phala', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940211', N'94120', N'ท่าเรือ', N'Tha Ruea', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940213', N'94120', N'นาเกตุ', N'Na Ket', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940214', N'94180', N'ควนโนรี', N'Khuan Nori', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940215', N'94120', N'ช้างให้ตก', N'Chang Hai Tok', N'9402')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940301', N'94170', N'เกาะเปาะ', N'Ko Po', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940302', N'94170', N'คอลอตันหยง', N'Kholo Tanyong', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940303', N'94170', N'ดอนรัก', N'Don Rak', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940304', N'94170', N'ดาโต๊ะ', N'Dato', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940305', N'94170', N'ตุยง', N'Tuyong', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940306', N'94170', N'ท่ากำชำ', N'Tha Kamcham', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940307', N'94170', N'บ่อทอง', N'Bo Thong', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940308', N'94170', N'บางเขา', N'Bang Khao', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940309', N'94170', N'บางตาวา', N'Bang Tawa', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940310', N'94170', N'ปุโละปุโย', N'Pulo Puyo', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940311', N'94170', N'ยาบี', N'Yabi', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940312', N'94170', N'ลิปะสะโง', N'Lipa Sa-ngo', N'9403')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940401', N'94130', N'ปะนาเระ', N'Panare', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940402', N'94130', N'ท่าข้าม', N'Tha Kham', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940403', N'94130', N'บ้านนอก', N'Ban Nok', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940404', N'94190', N'ดอน', N'Don', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940405', N'94190', N'ควน', N'Khuan', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940406', N'94130', N'ท่าน้ำ', N'Tha Nam', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940407', N'94130', N'คอกกระบือ', N'Khok Krabue', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940408', N'94130', N'พ่อมิ่ง', N'Pho Ming', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940409', N'94130', N'บ้านกลาง', N'Ban Klang', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940410', N'94130', N'บ้านน้ำบ่อ', N'Ban Nam Bo', N'9404')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940501', N'94140', N'มายอ', N'Mayo', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940502', N'94140', N'ถนน', N'Thanon', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940503', N'94140', N'ตรัง', N'Trang', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940504', N'94190', N'กระหวะ', N'Krawa', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940505', N'94140', N'ลุโบะยิไร', N'Lubo yilai', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940506', N'94190', N'ลางา', N'La-nga', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940507', N'94140', N'กระเสาะ', N'Kraso', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940508', N'94140', N'เกาะจัน', N'Ko Chan', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940509', N'94140', N'ปะโด', N'Pado', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940510', N'94140', N'สาคอบน', N'Sakho Bon', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940511', N'94140', N'สาคอใต้', N'Sakho Tai', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940512', N'94140', N'สะกำ', N'Sakam', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940513', N'94140', N'ปานัน', N'Panan', N'9405')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940601', N'94140', N'ตะโละแมะนา', N'Talo Maena', N'9406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940602', N'94140', N'พิเทน', N'Phithen', N'9406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940603', N'94140', N'น้ำดำ', N'Nam Dam', N'9406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940604', N'94140', N'ปากู', N'Paku', N'9406')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940701', N'94110', N'ตะลุบัน', N'Taluban', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940702', N'94110', N'ตะบิ้ง', N'Tabing', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940703', N'94110', N'ปะเสยะวอ', N'Pase Yawo', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940704', N'94110', N'บางเก่า', N'Bang Kao', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940705', N'94110', N'บือเระ', N'Bue Re', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940706', N'94110', N'เตราะบอน', N'Tro Bon', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940707', N'94110', N'กะดุนง', N'Kadunong', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940708', N'94110', N'ละหาร', N'Lahan', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940709', N'94110', N'มะนังดาลำ', N'Manang Dalam', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940710', N'94110', N'แป้น', N'Paen', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940711', N'94190', N'ทุ่งคล้า', N'Thung Khla', N'9407')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940801', N'94220', N'ไทรทอง', N'Sai Thong', N'9408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940802', N'94220', N'ไม้แก่น', N'Mai Kaen', N'9408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940803', N'94220', N'ตะโละไกรทอง', N'Talo Kraithong', N'9408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940804', N'94220', N'ดอนทราย', N'Don Sai', N'9408')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940901', N'94150', N'ตะโละ', N'Talo', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940902', N'94150', N'ตะโละกาโปร์', N'Talo Kapo', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940903', N'94150', N'ตันหยงดาลอ', N'Tanyong Dalo', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940904', N'94190', N'ตันหยงจึงงา', N'Tanyong Chueng-nga', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940905', N'94150', N'ตอหลัง', N'Tolang', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940906', N'94150', N'ตาแกะ', N'Takae', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940907', N'94150', N'ตาลีอายร์', N'Tali-ai', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940908', N'94150', N'ยามู', N'Yamu', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940909', N'94150', N'บางปู', N'Bang Pu', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940910', N'94150', N'หนองแรต', N'Nong Raet', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940911', N'94150', N'ปิยามุมัง', N'Piya Mumang', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940912', N'94150', N'ปุลากง', N'Pulakong', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940913', N'94190', N'บาโลย', N'Baloi', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940914', N'94150', N'สาบัน', N'Saban', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940915', N'94150', N'มะนังยง', N'Manang Yong', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940916', N'94150', N'ราตาปันยัง', N'Rata Panyang', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940917', N'94150', N'จะรัง', N'Charang', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'940918', N'94150', N'แหลมโพธิ์', N'Laem Pho', N'9409')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941001', N'94160', N'ยะรัง', N'Yarang', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941002', N'94160', N'สะดาวา', N'Sadawa', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941003', N'94160', N'ประจัน', N'Prachan', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941004', N'94160', N'สะนอ', N'Sano', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941005', N'94160', N'ระแว้ง', N'Rawaeng', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941006', N'94160', N'ปิตูมุดี', N'Pitu Mudi', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941007', N'94160', N'วัด', N'Wat', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941008', N'94160', N'กระโด', N'Krado', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941009', N'94160', N'คลองใหม่', N'Khlong Mai', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941010', N'94160', N'เมาะมาวี', N'Mo Mawi', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941011', N'94160', N'กอลำ', N'Kolam', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941012', N'94160', N'เขาตูม', N'Khao Tum', N'9410')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941101', N'94230', N'กะรุบี', N'Karubi', N'9411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941102', N'94230', N'ตะโละดือรามัน', N'Talo Due Raman', N'9411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941103', N'94230', N'ปล่องหอย', N'Plong Hoi', N'9411')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941201', N'94180', N'แม่ลาน', N'Mae Lan', N'9412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941202', N'94180', N'ม่วงเตี้ย', N'Muang Tia', N'9412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'941203', N'94180', N'ป่าไร่', N'Pa Rai', N'9412')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950101', N'95000', N'สะเตง', N'Sateng', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950102', N'95000', N'บุดี', N'Budi', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950103', N'95000', N'ยุโป', N'Yupo', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950104', N'95160', N'ลิดล', N'Lidon', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950106', N'95000', N'ยะลา', N'Yala', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950108', N'95000', N'ท่าสาป', N'Tha Sap', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950109', N'95160', N'ลำใหม่', N'Lam Mai', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950110', N'95000', N'หน้าถ้ำ', N'Na Tham', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950111', N'95160', N'ลำพะยา', N'Lam Phaya', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950112', N'95000', N'เปาะเส้ง', N'Po Seng', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950114', N'95160', N'พร่อน', N'Phron', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950115', N'95000', N'บันนังสาเรง', N'Bannang Sareng', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950116', N'95000', N'สะเตงนอก', N'Sateng Nok', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950118', N'95000', N'ตาเซะ', N'Tase', N'9501')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950201', N'95110', N'เบตง', N'Betong', N'9502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950202', N'95110', N'ยะรม', N'Yarom', N'9502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950203', N'95110', N'ตาเนาะแมเราะ', N'Tano Maero', N'9502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950204', N'95110', N'อัยเยอร์เวง', N'Aiyoeweng', N'9502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950205', N'95110', N'ธารน้ำทิพย์', N'Than Nam Thip', N'9502')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950301', N'95130', N'บันนังสตา', N'Bannang Sata', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950302', N'95130', N'บาเจาะ', N'Bacho', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950303', N'95130', N'ตาเนาะปูเต๊ะ', N'Tanao Pute', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950304', N'95130', N'ถ้ำทะลุ', N'Tham Thalu', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950305', N'95130', N'ตลิ่งชัน', N'Taling Chan', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950306', N'95130', N'เขื่อนบางลาง', N'Khuean Bang Lang', N'9503')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950401', N'95150', N'ธารโต', N'Than To', N'9504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950402', N'95150', N'บ้านแหร', N'Ban Rae', N'9504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950403', N'95170', N'แม่หวาด', N'Mae Wat', N'9504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950404', N'95150', N'คีรีเขต', N'Khiri Khet', N'9504')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950501', N'95120', N'ยะหา', N'Yaha', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950502', N'95120', N'ละแอ', N'La-ae', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950503', N'95120', N'ปะแต', N'Patae', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950504', N'95120', N'บาโร๊ะ', N'Baro', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950506', N'95120', N'ตาชี', N'Tashi', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950507', N'95120', N'บาโงยซิแน', N'Ba-ngoi Sinae', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950508', N'95120', N'กาตอง', N'Ka Tong', N'9505')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950601', N'95140', N'กายูบอเกาะ', N'Kayu Boko', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950602', N'95140', N'กาลูปัง', N'Kalupang', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950603', N'95140', N'กาลอ', N'Kalo', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950604', N'95140', N'กอตอตือร๊ะ', N'Koto Tuera', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950605', N'95140', N'โกตาบารู', N'Kota Baru', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950606', N'95140', N'เกะรอ', N'Kero', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950607', N'95140', N'จะกว๊ะ', N'Cha-kwa', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950608', N'95140', N'ท่าธง', N'Tha Thong', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950609', N'95140', N'เนินงาม', N'Noen Ngam', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950610', N'95140', N'บาลอ', N'Balo', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950611', N'95140', N'บาโงย', N'Ba-ngoi', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950612', N'95140', N'บือมัง', N'Buemang', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950613', N'95140', N'ยะต๊ะ', N'Yata', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950614', N'95140', N'วังพญา', N'Wang Phaya', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950615', N'95140', N'อาซ่อง', N'A-song', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950616', N'95140', N'ตะโล๊ะหะลอ', N'Talo Halo', N'9506')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950701', N'95120', N'กาบัง', N'Kabang', N'9507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950702', N'95120', N'บาละ', N'Bala', N'9507')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950801', N'95000', N'กรงปินัง', N'Krong Pinang', N'9508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950802', N'95000', N'สะเอะ', N'Sa-e', N'9508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950803', N'95000', N'ห้วยกระทิง', N'Huai Krathing', N'9508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'950804', N'95000', N'ปุโรง', N'Purong', N'9508')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960101', N'96000', N'บางนาค', N'Bang Nak', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960102', N'96000', N'ลำภู', N'Lamphu', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960103', N'96000', N'มะนังตายอ', N'Manang Tayo', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960104', N'96000', N'บางปอ', N'Bang Po', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960105', N'96000', N'กะลุวอ', N'Kaluwo', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960106', N'96000', N'กะลุวอเหนือ', N'Kaluwo Nuea', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960107', N'96000', N'โคกเคียน', N'Khok Khian', N'9601')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960201', N'96110', N'เจ๊ะเห', N'Chehe', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960202', N'96110', N'ไพรวัน', N'Phraiwan', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960203', N'96110', N'พร่อน', N'Phron', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960204', N'96110', N'ศาลาใหม่', N'Sala Mai', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960205', N'96110', N'บางขุนทอง', N'Bang Khun Thong', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960206', N'96110', N'เกาะสะท้อน', N'Ko Sathon', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960207', N'96110', N'นานาค', N'Na Nak', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960208', N'96110', N'โฆษิต', N'Khosit', N'9602')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960301', N'96170', N'บาเจาะ', N'Bacho', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960302', N'96170', N'ลุโบะสาวอ', N'Lubo Sawo', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960303', N'96170', N'กาเยาะมาตี', N'Kayo Mati', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960304', N'96170', N'ปะลุกาสาเมาะ', N'Paluka Samo', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960305', N'96170', N'บาเระเหนือ', N'Bare Nuea', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960306', N'96170', N'บาเระใต้', N'Bare Tai', N'9603')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960401', N'96180', N'ยี่งอ', N'Yi-ngo', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960402', N'96180', N'ละหาร', N'Lahan', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960403', N'96180', N'จอเบาะ', N'Cho Bo', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960404', N'96180', N'ลุโบะบายะ', N'Lubo Baya', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960405', N'96180', N'ลุโบะบือซา', N'Lubo Buesa', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960406', N'96180', N'ตะปอเยาะ', N'Tapoyo', N'9604')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960501', N'96130', N'ตันหยงมัส', N'Tanyong Mat', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960502', N'96130', N'ตันหยงลิมอ', N'Tanyong Limo', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960506', N'96220', N'บองอ', N'Bo-ngo', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960507', N'96130', N'กาลิซา', N'Kalisa', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960508', N'96130', N'บาโงสะโต', N'Ba-ngo Sato', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960509', N'96130', N'เฉลิม', N'Chaloem', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960510', N'96130', N'มะรือโบตก', N'Marue Botok', N'9605')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960601', N'96150', N'รือเสาะ', N'Rueso', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960602', N'96150', N'สาวอ', N'Sawo', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960603', N'96150', N'เรียง', N'Riang', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960604', N'96150', N'สามัคคี', N'Samakkhi', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960605', N'96150', N'บาตง', N'Batong', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960606', N'96150', N'ลาโละ', N'Lalo', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960607', N'96150', N'รือเสาะออก', N'Rueso Ok', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960608', N'96150', N'โคกสะตอ', N'Khok Sato', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960609', N'96150', N'สุวารี', N'Suwari', N'9606')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960701', N'96210', N'ซากอ', N'Sako', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960702', N'96210', N'ตะมะยูง', N'Tamayung', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960703', N'96210', N'ศรีสาคร', N'Si Sakhon', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960704', N'96210', N'เชิงคีรี', N'Choeng Khiri', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960705', N'96210', N'กาหลง', N'Kalong', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960706', N'96210', N'ศรีบรรพต', N'Si Banphot', N'9607')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960801', N'96160', N'แว้ง', N'Waeng', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960802', N'96160', N'กายูคละ', N'Kayu Khla', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960803', N'96160', N'ฆอเลาะ', N'Kholo', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960804', N'96160', N'โละจูด', N'Lochut', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960805', N'96160', N'แม่ดง', N'Mae Dong', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960806', N'96160', N'เอราวัณ', N'Erawan', N'9608')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960901', N'96190', N'มาโมง', N'Mamong', N'9609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960902', N'96190', N'สุคิริน', N'Sukhirin', N'9609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960903', N'96190', N'เกียร์', N'Kia', N'9609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960904', N'96190', N'ภูเขาทอง', N'Phukhao Thong', N'9609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'960905', N'96190', N'ร่มไทร', N'Rom Sai', N'9609')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961001', N'96120', N'สุไหงโก-ลก', N'Su-ngai Kolok', N'9610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961002', N'96120', N'ปาเสมัส', N'Pasemat', N'9610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961003', N'96120', N'มูโนะ', N'Muno', N'9610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961004', N'96120', N'ปูโยะ', N'Puyo', N'9610')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961101', N'96140', N'ปะลุรู', N'Paluru', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961102', N'96140', N'สุไหงปาดี', N'Su-ngai Padi', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961103', N'96140', N'โต๊ะเด็ง', N'Todeng', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961104', N'96140', N'สากอ', N'Sako', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961105', N'96140', N'ริโก๋', N'Riko', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961106', N'96140', N'กาวะ', N'Kawa', N'9611')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961201', N'96220', N'จะแนะ', N'Chanae', N'9612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961202', N'96220', N'ดุซงญอ', N'Dusongyo', N'9612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961203', N'96220', N'ผดุงมาตร', N'Phadung Mat', N'9612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961204', N'96220', N'ช้างเผือก', N'Chang Phueak', N'9612')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961301', N'96130', N'จวบ', N'Chuap', N'9613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961302', N'96130', N'บูกิต', N'Bukit', N'9613')
GO

INSERT INTO [dbo].[MT_AddressTambon] VALUES (N'961303', N'96130', N'มะรือโบออก', N'Maruebo Ok', N'9613')
GO


-- ----------------------------
-- Table structure for MT_Gender
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_Gender]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_Gender]
GO

CREATE TABLE [dbo].[MT_Gender] (
  [gender_id] varchar(2) COLLATE Thai_100_BIN2  NOT NULL,
  [gender_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [gender_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_Gender] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสเพศ',
'SCHEMA', N'dbo',
'TABLE', N'MT_Gender',
'COLUMN', N'gender_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อเพศ (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MT_Gender',
'COLUMN', N'gender_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อเพศ (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MT_Gender',
'COLUMN', N'gender_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'เพศ',
'SCHEMA', N'dbo',
'TABLE', N'MT_Gender'
GO


-- ----------------------------
-- Records of MT_Gender
-- ----------------------------
INSERT INTO [dbo].[MT_Gender] VALUES (N'01', N'ชาย', N'Male')
GO

INSERT INTO [dbo].[MT_Gender] VALUES (N'02', N'หญิง', N'Female')
GO


-- ----------------------------
-- Table structure for MT_Prefix
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MT_Prefix]') AND type IN ('U'))
	DROP TABLE [dbo].[MT_Prefix]
GO

CREATE TABLE [dbo].[MT_Prefix] (
  [prefix_id] varchar(2) COLLATE Thai_100_BIN2  NOT NULL,
  [prefix_name_th] varchar(255) COLLATE Thai_100_BIN2  NULL,
  [prefix_name_en] varchar(255) COLLATE Thai_100_BIN2  NULL
)
GO

ALTER TABLE [dbo].[MT_Prefix] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'รหัสคำนำหน้านาม',
'SCHEMA', N'dbo',
'TABLE', N'MT_Prefix',
'COLUMN', N'prefix_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อคำนำหน้างาม (ภาษาไทย)',
'SCHEMA', N'dbo',
'TABLE', N'MT_Prefix',
'COLUMN', N'prefix_name_th'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ชื่อคำนำหน้างาม (ภาษาอังกฤษ)',
'SCHEMA', N'dbo',
'TABLE', N'MT_Prefix',
'COLUMN', N'prefix_name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'คำนำหน้าชื่อ',
'SCHEMA', N'dbo',
'TABLE', N'MT_Prefix'
GO


-- ----------------------------
-- Records of MT_Prefix
-- ----------------------------
INSERT INTO [dbo].[MT_Prefix] VALUES (N'01', N'นาย', N'Mr.')
GO

INSERT INTO [dbo].[MT_Prefix] VALUES (N'02', N'นาง', N'Mrs.')
GO

INSERT INTO [dbo].[MT_Prefix] VALUES (N'03', N'นางสาว', N'Miss')
GO


-- ----------------------------
-- View structure for MP_View_Admin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_View_Admin]') AND type IN ('V'))
	DROP VIEW [dbo].[MP_View_Admin]
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
case when dbo.MP_Admin.birthday = convert(date,'1900-01-01') then 0 else convert(int,datediff(day,dbo.MP_Admin.birthday,getdate())/365) end as age,
dbo.MP_Admin.onchange_password
FROM
dbo.MP_Admin
LEFT JOIN dbo.MT_Prefix ON dbo.MP_Admin.prefix_id = dbo.MT_Prefix.prefix_id
LEFT JOIN dbo.MT_Gender ON dbo.MP_Admin.gender_id = dbo.MT_Gender.gender_id
WHERE dbo.MP_Admin.status = 1
GO


-- ----------------------------
-- View structure for MP_View_Seller
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_View_Seller]') AND type IN ('V'))
	DROP VIEW [dbo].[MP_View_Seller]
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


-- ----------------------------
-- View structure for MP_View_Shop
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MP_View_Shop]') AND type IN ('V'))
	DROP VIEW [dbo].[MP_View_Shop]
GO

CREATE VIEW [dbo].[MP_View_Shop] AS SELECT
dbo.MP_Shop.shop_code,
dbo.MP_Shop.shop_name_th,
(case when dbo.MP_Shop.address_no is null then '' else ' เลขที่ ' + dbo.MP_Shop.address_no + ',' end) +
(case when dbo.MP_Shop.building is null then '' else ' อาคาร ' + dbo.MP_Shop.building + ',' end) +
(case when dbo.MP_Shop.moo is null then '' else ' หมู่ที่ ' + convert(varchar,dbo.MP_Shop.moo) + ',' end) +
(case when dbo.MP_Shop.rood is null then '' else ' ถนน ' + convert(varchar,dbo.MP_Shop.rood) + ',' end) +
(case when dbo.MT_AddressTambon.tambon_name_th is null then '' else ' ต.' + convert(varchar,dbo.MT_AddressTambon.tambon_name_th) + ',' end) +
(case when dbo.MT_AddressAmphoe.amphoe_name_th is null then '' else ' อ.' + convert(varchar,dbo.MT_AddressAmphoe.amphoe_name_th) + ',' end) +
(case when dbo.MT_AddressChangwat.changwat_name_th is null then '' else ' จ.' + convert(varchar,dbo.MT_AddressChangwat.changwat_name_th) + ',' end) +
(case when dbo.MP_Shop.zip_code is null then '' else ' ' + convert(varchar,dbo.MP_Shop.zip_code) end)
as addr_name_th,
dbo.MP_Shop.tel

FROM
dbo.MP_Shop
LEFT JOIN dbo.MT_AddressChangwat ON dbo.MP_Shop.changwat_id = dbo.MT_AddressChangwat.changwat_id
LEFT JOIN dbo.MT_AddressAmphoe ON dbo.MP_Shop.amphoe_id = dbo.MT_AddressAmphoe.amphoe_id
LEFT JOIN dbo.MT_AddressTambon ON dbo.MP_Shop.tambon_id = dbo.MT_AddressTambon.tambon_id
GO


-- ----------------------------
-- Primary Key structure for table MP_AddressType
-- ----------------------------
ALTER TABLE [dbo].[MP_AddressType] ADD CONSTRAINT [PK__MP_Addre__5ABF11E5584B93B0] PRIMARY KEY CLUSTERED ([type_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Admin
-- ----------------------------
ALTER TABLE [dbo].[MP_Admin] ADD CONSTRAINT [PK__MP_Selle__780A0A977F60ED59_copy1] PRIMARY KEY CLUSTERED ([admin_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Buyer
-- ----------------------------
ALTER TABLE [dbo].[MP_Buyer] ADD CONSTRAINT [PK__MP_Buyer__BAD171520AD2A005] PRIMARY KEY CLUSTERED ([buyer_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Content
-- ----------------------------
ALTER TABLE [dbo].[MP_Content] ADD CONSTRAINT [PK__MP_Conte__655FE510DFC23B18] PRIMARY KEY CLUSTERED ([content_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Product
-- ----------------------------
ALTER TABLE [dbo].[MP_Product] ADD CONSTRAINT [PK__MP_Produ__52020FDD03317E3D] PRIMARY KEY CLUSTERED ([item_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_ProductCategory
-- ----------------------------
ALTER TABLE [dbo].[MP_ProductCategory] ADD CONSTRAINT [PK__MP_Categ__D54EE9B407020F21] PRIMARY KEY CLUSTERED ([category_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Seller
-- ----------------------------
ALTER TABLE [dbo].[MP_Seller] ADD CONSTRAINT [PK__MP_Selle__780A0A977F60ED59] PRIMARY KEY CLUSTERED ([seller_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_SellerPermanentAddress
-- ----------------------------
ALTER TABLE [dbo].[MP_SellerPermanentAddress] ADD CONSTRAINT [PK__MP_Selle__32E77BFC5A25D0B0] PRIMARY KEY CLUSTERED ([seller_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_SellerPresentAddress
-- ----------------------------
ALTER TABLE [dbo].[MP_SellerPresentAddress] ADD CONSTRAINT [PK__MP_Selle__32E77BFC5A25D0B0_copy1] PRIMARY KEY CLUSTERED ([seller_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Shop
-- ----------------------------
ALTER TABLE [dbo].[MP_Shop] ADD CONSTRAINT [PK__MP_Shop__656617EE50182CCA] PRIMARY KEY CLUSTERED ([shop_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_Technicial
-- ----------------------------
ALTER TABLE [dbo].[MP_Technicial] ADD CONSTRAINT [PK__MP_Techn__C20C01BE3965CE5F] PRIMARY KEY CLUSTERED ([technician_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MP_TechnicianAddress
-- ----------------------------
ALTER TABLE [dbo].[MP_TechnicianAddress] ADD CONSTRAINT [PK__MP_Techn__986D29BB19172658] PRIMARY KEY CLUSTERED ([tech_addr_code])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MT_AddressGeographies
-- ----------------------------
ALTER TABLE [dbo].[MT_AddressGeographies] ADD CONSTRAINT [PK__MT_Addre__E8ADA4D65265B341] PRIMARY KEY CLUSTERED ([geo_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MT_Gender
-- ----------------------------
ALTER TABLE [dbo].[MT_Gender] ADD CONSTRAINT [PK__MP_Gende__9DF18F87F3C7BC89] PRIMARY KEY CLUSTERED ([gender_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table MT_Prefix
-- ----------------------------
ALTER TABLE [dbo].[MT_Prefix] ADD CONSTRAINT [PK__MT_Prefi__CF11A755B8FAEEAF] PRIMARY KEY CLUSTERED ([prefix_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

