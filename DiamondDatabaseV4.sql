USE [master]
GO
/****** Object:  Database [DiamondStoreV4]    Script Date: 17/07/2024 10:44:55 CH ******/
CREATE DATABASE [DiamondStoreV4]
 
USE [DiamondStoreV4]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[certificateid] [int] IDENTITY(1,1) NOT NULL,
	[diamondid] [int] NULL,
	[number] [int] NULL,
	[description] [nvarchar](255) NULL,
	[shape_cut] [varchar](255) NULL,
	[measurements] [varchar](255) NULL,
	[polish] [varchar](255) NULL,
	[symmetry] [varchar](255) NULL,
	[issuer] [varchar](255) NULL,
	[issued_date] [date] NULL,
 CONSTRAINT [PK__Certific__A15DB286BBDC6154] PRIMARY KEY CLUSTERED 
(
	[certificateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[collectionid] [int] IDENTITY(1,1) NOT NULL,
	[collection_name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[img_url] [varchar](255) NULL,
 CONSTRAINT [PK__Collecti__5BCE26BC3B30C6E8] PRIMARY KEY CLUSTERED 
(
	[collectionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollectionProducts]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionProducts](
	[collectionid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[collection_productid] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[collectionid] ASC,
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentid] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[userid] [int] NULL,
	[productid] [int] NULL,
	[create_date] [date] NULL,
 CONSTRAINT [PK__Comment__CDA84BC58A446D6B] PRIMARY KEY CLUSTERED 
(
	[commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diamond]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diamond](
	[diamondid] [int] IDENTITY(1,1) NOT NULL,
	[diamond_name] [varchar](255) NULL,
	[origin] [varchar](255) NULL,
	[shape] [varchar](255) NULL,
	[carat_weight] [real] NULL,
	[color] [varchar](255) NULL,
	[clarity] [varchar](255) NULL,
	[cut] [varchar](255) NULL,
	[base_price] [numeric](38, 2) NULL,
 CONSTRAINT [PK__Diamond__F8234848FECF0288] PRIMARY KEY CLUSTERED 
(
	[diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiamondMount]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiamondMount](
	[mountid] [int] IDENTITY(1,1) NOT NULL,
	[mount_name] [nvarchar](255) NULL,
	[size] [real] NULL,
	[type] [nvarchar](255) NULL,
	[material] [nvarchar](255) NULL,
	[base_price] [numeric](38, 2) NULL,
 CONSTRAINT [PK__DiamondM__9D142254AE45D6F2] PRIMARY KEY CLUSTERED 
(
	[mountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[imageid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[image_url] [varchar](255) NULL,
 CONSTRAINT [PK__Image__336F9F7D60806EC8] PRIMARY KEY CLUSTERED 
(
	[imageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[locationid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NOT NULL,
	[purchase_date] [date] NULL,
	[condition] [varchar](255) NULL,
	[quantity] [int] NULL,
	[available] [bit] NULL,
	[update_date] [date] NULL,
 CONSTRAINT [PK__Inventor__306F78A6DB8A7196] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[customer_name] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[order_date] [date] NULL,
	[status] [varchar](255) NULL,
	[voucherid] [int] NULL,
	[payment_amount] [numeric](38, 2) NULL,
	[payment_date] [date] NULL,
	[payment_method] [varchar](255) NULL,
	[delivery_date] [date] NULL,
	[delivery_staffid] [int] NULL,
	[cancel_reason] [varchar](255) NULL,
	[payment_status] [bit] NULL,
 CONSTRAINT [PK__Order__080E37753E19CA7C] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_detailid] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NULL,
	[quantity] [int] NULL,
	[price] [numeric](38, 2) NULL,
 CONSTRAINT [PK__OrderDet__1CCC5D4D4DBC274E] PRIMARY KEY CLUSTERED 
(
	[order_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[mountid] [int] NULL,
	[components_price] [numeric](38, 2) NULL,
	[labor_fee] [numeric](38, 2) NULL,
	[price] [numeric](38, 2) NULL,
	[status] [varchar](255) NULL,
	[img_url] [varchar](255) NULL,
 CONSTRAINT [PK__Product__2D172D32529B19D5] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiamond]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDiamond](
	[product_diamondid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[diamondid] [int] NULL,
	[type] [varchar](255) NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK__ProductD__B1538E00841ACD60] PRIMARY KEY CLUSTERED 
(
	[product_diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrice](
	[product_priceid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[cost_price] [numeric](38, 2) NULL,
	[markup_rate] [real] NULL,
	[selling_price] [numeric](38, 2) NULL,
	[update_date] [date] NULL,
 CONSTRAINT [PK__ProductP__5578FD50DEFF72B5] PRIMARY KEY CLUSTERED 
(
	[product_priceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPromotion]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPromotion](
	[product_promotionid] [int] IDENTITY(1,1) NOT NULL,
	[promotionid] [int] NULL,
	[productid] [int] NULL,
	[discount] [real] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK__ProductP__B25FB94A8345405D] PRIMARY KEY CLUSTERED 
(
	[product_promotionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[promotionid] [int] IDENTITY(1,1) NOT NULL,
	[promotion_name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK__Promotio__99EA6D164A0AE359] PRIMARY KEY CLUSTERED 
(
	[promotionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[roleid] [int] NOT NULL,
	[role_name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[roleid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[userid] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[roleid] [int] NULL,
	[dob] [date] NULL,
	[email] [varchar](255) NULL,
	[gender] [varchar](255) NULL,
	[point_accumulation] [int] NULL,
	[status] [varchar](255) NULL,
	[type_login] [varchar](255) NULL,
	[create_at] [date] NULL,
	[update_at] [date] NULL,
	[token_password] [varchar](255) NULL,
	[token_create_date] [datetime2](6) NULL,
	[address] [varchar](255) NULL,
 CONSTRAINT [PK__User__CBA1B2571A52ECC4] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucherid] [int] IDENTITY(1,1) NOT NULL,
	[memberid] [int] NULL,
	[description] [nvarchar](255) NULL,
	[discount_length] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[discount] [real] NULL,
	[voucher_typeid] [int] NULL,
	[status] [varchar](255) NULL,
 CONSTRAINT [PK__Voucher__F5328DD131F7EDF5] PRIMARY KEY CLUSTERED 
(
	[voucherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherType]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherType](
	[voucher_typeid] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NULL,
	[discount] [real] NULL,
	[discount_length] [int] NULL,
	[point_needed] [int] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK__VoucherT__3D4E18BE149F57C8] PRIMARY KEY CLUSTERED 
(
	[voucher_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 17/07/2024 10:44:55 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty](
	[warrantyid] [int] IDENTITY(1,1) NOT NULL,
	[order_detailid] [int] NOT NULL,
	[warranty_length] [varchar](255) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[status] [varchar](255) NULL,
 CONSTRAINT [PK__Warranty__05ACB4E90DFF99B2] PRIMARY KEY CLUSTERED 
(
	[warrantyid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Certificate] ON 

INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (1, 1, 1000, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.1 x 3.2 x 2.1', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-05-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (2, 2, 2001, N'Princess cut diamond, very good symmetry', N'Princess', N'6.2 x 4.3 x 3.2', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-05-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (3, 3, 1002, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.3 x 5.4 x 4.3', N'Good', N'Good', N'IGI', CAST(N'2023-05-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (4, 4, 1003, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.4 x 6.5 x 5.4', N'Fair', N'Fair', N'HRD', CAST(N'2023-05-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (5, 5, 1004, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.5 x 7.6 x 6.5', N'Poor', N'Poor', N'GIA', CAST(N'2023-05-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (6, 6, 1005, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.6 x 3.6 x 2.6', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-05-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (7, 7, 1006, N'Princess cut diamond, very good symmetry', N'Princess', N'6.7 x 4.7 x 3.7', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-05-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (8, 8, 1007, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.8 x 5.8 x 4.8', N'Good', N'Good', N'HRD', CAST(N'2023-05-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (9, 9, 1008, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.9 x 6.9 x 5.9', N'Fair', N'Fair', N'GIA', CAST(N'2023-05-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (10, 10, 1009, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.0 x 7.0 x 6.0', N'Poor', N'Poor', N'AGS', CAST(N'2023-05-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (11, 11, 1010, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.1 x 3.2 x 2.1', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-05-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (12, 12, 1011, N'Princess cut diamond, very good symmetry', N'Princess', N'6.2 x 4.3 x 3.2', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-05-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (13, 13, 1012, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.3 x 5.4 x 4.3', N'Good', N'Good', N'IGI', CAST(N'2023-05-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (14, 14, 1013, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.4 x 6.5 x 5.4', N'Fair', N'Fair', N'HRD', CAST(N'2023-05-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (15, 15, 1014, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.5 x 7.6 x 6.5', N'Poor', N'Poor', N'GIA', CAST(N'2023-05-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (16, 16, 1015, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.6 x 3.6 x 2.6', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-05-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (17, 17, 1016, N'Princess cut diamond, very good symmetry', N'Princess', N'6.7 x 4.7 x 3.7', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (18, 18, 1017, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.8 x 5.8 x 4.8', N'Good', N'Good', N'HRD', CAST(N'2023-05-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (19, 19, 1018, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.9 x 6.9 x 5.9', N'Fair', N'Fair', N'GIA', CAST(N'2023-05-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (20, 20, 1019, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.0 x 7.0 x 6.0', N'Poor', N'Poor', N'AGS', CAST(N'2023-05-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (21, 21, 1020, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-06-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (22, 22, 1021, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-06-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (23, 23, 1022, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-06-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (24, 24, 1023, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-06-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (25, 25, 1024, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-06-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (26, 26, 1025, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-06-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (27, 27, 1026, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-06-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (28, 28, 1027, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-06-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (29, 29, 1028, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-06-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (30, 30, 1029, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-06-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (31, 31, 1030, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-06-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (32, 32, 1031, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-06-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (33, 33, 1032, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-06-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (34, 34, 1033, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-06-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (35, 35, 1034, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-06-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (36, 36, 1035, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-06-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (37, 37, 1036, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-06-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (38, 38, 1037, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-06-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (39, 39, 1038, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-06-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (40, 40, 1039, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-06-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (41, 41, 1040, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.1 x 3.2 x 2.1', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-07-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (42, 42, 1041, N'Princess cut diamond, very good symmetry', N'Princess', N'6.2 x 4.3 x 3.2', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-07-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (43, 43, 1042, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.3 x 5.4 x 4.3', N'Good', N'Good', N'IGI', CAST(N'2023-07-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (44, 44, 1043, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.4 x 6.5 x 5.4', N'Fair', N'Fair', N'HRD', CAST(N'2023-07-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (45, 45, 1044, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.5 x 7.6 x 6.5', N'Poor', N'Poor', N'GIA', CAST(N'2023-07-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (46, 46, 1045, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.6 x 3.6 x 2.6', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-07-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (47, 47, 1046, N'Princess cut diamond, very good symmetry', N'Princess', N'6.7 x 4.7 x 3.7', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-07-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (48, 48, 1047, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.8 x 5.8 x 4.8', N'Good', N'Good', N'HRD', CAST(N'2023-07-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (49, 49, 1048, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.9 x 6.9 x 5.9', N'Fair', N'Fair', N'GIA', CAST(N'2023-07-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (50, 50, 1049, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.0 x 7.0 x 6.0', N'Poor', N'Poor', N'AGS', CAST(N'2023-07-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (51, 51, 1050, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.1 x 3.2 x 2.1', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-07-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (52, 52, 1051, N'Princess cut diamond, very good symmetry', N'Princess', N'6.2 x 4.3 x 3.2', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-07-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (53, 53, 1052, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.3 x 5.4 x 4.3', N'Good', N'Good', N'IGI', CAST(N'2023-07-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (54, 54, 1053, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.4 x 6.5 x 5.4', N'Fair', N'Fair', N'HRD', CAST(N'2023-07-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (55, 55, 1054, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.5 x 7.6 x 6.5', N'Poor', N'Poor', N'GIA', CAST(N'2023-07-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (56, 56, 1055, N'Round brilliant cut diamond, excellent polish', N'Round', N'5.6 x 3.6 x 2.6', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-07-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (57, 57, 1056, N'Princess cut diamond, very good symmetry', N'Princess', N'6.7 x 4.7 x 3.7', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-07-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (58, 58, 1057, N'Emerald cut diamond, good polish and symmetry', N'Emerald', N'7.8 x 5.8 x 4.8', N'Good', N'Good', N'HRD', CAST(N'2023-07-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (59, 59, 1058, N'Asscher cut diamond, fair polish and symmetry', N'Asscher', N'8.9 x 6.9 x 5.9', N'Fair', N'Fair', N'GIA', CAST(N'2023-07-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (60, 60, 1059, N'Oval cut diamond, poor polish and symmetry', N'Oval', N'9.0 x 7.0 x 6.0', N'Poor', N'Poor', N'AGS', CAST(N'2023-07-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (61, 61, 1060, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-08-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (62, 62, 1061, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-08-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (63, 63, 1062, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (64, 64, 1063, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-08-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (65, 65, 1064, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-08-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (66, 66, 1065, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-08-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (67, 67, 1066, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-08-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (68, 68, 1067, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-08-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (69, 69, 1068, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-08-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (70, 70, 1069, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-08-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (71, 71, 1070, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-08-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (72, 72, 1071, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-08-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (73, 73, 1072, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-08-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (74, 74, 1073, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-08-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (75, 75, 1074, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-08-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (76, 76, 1075, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-08-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (77, 77, 1076, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-08-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (78, 78, 1077, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-08-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (79, 79, 1078, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-08-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (80, 80, 1079, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-08-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (81, 81, 1080, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-09-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (82, 82, 1081, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-09-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (83, 83, 1082, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-09-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (84, 84, 1083, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-09-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (85, 85, 1084, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-09-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (86, 86, 1085, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-09-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (87, 87, 1086, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-09-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (88, 88, 1087, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-09-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (89, 89, 1088, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-09-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (90, 90, 1089, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-09-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (91, 91, 1090, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-09-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (92, 92, 1091, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-09-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (93, 93, 1092, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-09-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (94, 94, 1093, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-09-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (95, 95, 1094, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-09-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (96, 96, 1095, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-09-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (97, 97, 1096, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-09-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (98, 98, 1097, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-09-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (99, 99, 1098, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-09-19' AS Date))
GO
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (100, 100, 1099, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-09-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (101, 101, 1100, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-10-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (102, 102, 1101, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-10-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (103, 103, 1102, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-10-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (104, 104, 1103, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-10-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (105, 105, 1104, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-10-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (106, 106, 1105, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-10-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (107, 107, 1106, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-10-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (108, 108, 1107, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-10-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (109, 109, 1108, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-10-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (110, 110, 1109, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-10-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (111, 111, 1110, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-10-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (112, 112, 1111, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-10-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (113, 113, 1112, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-10-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (114, 114, 1113, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-10-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (115, 115, 1114, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-10-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (116, 116, 1115, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-10-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (117, 117, 1116, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-10-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (118, 118, 1117, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-10-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (119, 119, 1118, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-10-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (120, 120, 1119, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-10-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (121, 121, 1120, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-11-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (122, 122, 1121, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-11-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (123, 123, 1122, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-11-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (124, 124, 1123, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-11-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (125, 125, 1124, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-11-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (126, 126, 1125, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-11-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (127, 127, 1126, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-11-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (128, 128, 1127, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-11-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (129, 129, 1128, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-11-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (130, 130, 1129, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (131, 131, 1130, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-11-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (132, 132, 1131, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-11-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (133, 133, 1132, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-11-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (134, 134, 1133, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-11-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (135, 135, 1134, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-11-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (136, 136, 1135, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-11-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (137, 137, 1136, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-11-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (138, 138, 1137, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-11-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (139, 139, 1138, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-11-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (140, 140, 1139, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-11-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (141, 141, 1140, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-12-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (142, 142, 1141, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-12-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (143, 143, 1142, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-12-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (144, 144, 1143, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-12-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (145, 145, 1144, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-12-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (146, 146, 1145, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-12-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (147, 147, 1146, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-12-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (148, 148, 1147, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-12-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (149, 149, 1148, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-12-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (150, 150, 1149, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-12-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (151, 151, 1150, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-12-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (152, 152, 1151, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-12-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (153, 153, 1152, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-12-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (154, 154, 1153, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-12-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (155, 155, 1154, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-12-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (156, 156, 1155, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-12-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (157, 157, 1156, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-12-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (158, 158, 1157, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (159, 159, 1158, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-12-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (160, 160, 1159, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-12-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (161, 161, 1160, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2023-12-21' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (162, 162, 1161, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2023-12-22' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (163, 163, 1162, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2023-12-23' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (164, 164, 1163, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2023-12-24' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (165, 165, 1164, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2023-12-25' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (166, 166, 1165, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2023-12-26' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (167, 167, 1166, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2023-12-27' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (168, 168, 1167, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2023-12-28' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (169, 169, 1168, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2023-12-29' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (170, 170, 1169, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2023-12-30' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (171, 171, 1170, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2024-01-01' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (172, 172, 1171, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2024-01-02' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (173, 173, 1172, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2024-01-03' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (174, 174, 1173, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2024-01-04' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (175, 175, 1174, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2024-01-05' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (176, 176, 1175, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2024-01-06' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (177, 177, 1176, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2024-01-07' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (178, 178, 1177, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2024-01-08' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (179, 179, 1178, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2024-01-09' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (180, 180, 1179, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2024-01-10' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (181, 181, 1180, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2024-01-11' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (182, 182, 1181, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2024-01-12' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (183, 183, 1182, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2024-01-13' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (184, 184, 1183, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2024-01-14' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (185, 185, 1184, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2024-01-15' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (186, 186, 1185, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2024-01-16' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (187, 187, 1186, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2024-01-17' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (188, 188, 1187, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2024-01-18' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (189, 189, 1188, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2024-01-19' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (190, 190, 1189, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2024-01-20' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (191, 191, 1190, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.2 x 3.3 x 2.2', N'Excellent', N'Excellent', N'GIA', CAST(N'2024-01-21' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (192, 192, 1191, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.3 x 4.4 x 3.3', N'Very Good', N'Very Good', N'AGS', CAST(N'2024-01-22' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (193, 193, 1192, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.4 x 5.5 x 4.4', N'Good', N'Good', N'IGI', CAST(N'2024-01-23' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (194, 194, 1193, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.5 x 6.6 x 5.5', N'Fair', N'Fair', N'HRD', CAST(N'2024-01-24' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (195, 195, 1194, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.6 x 7.7 x 6.6', N'Poor', N'Poor', N'GIA', CAST(N'2024-01-25' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (196, 196, 1195, N'Radiant cut diamond, excellent polish and symmetry', N'Radiant', N'5.7 x 3.7 x 2.7', N'Excellent', N'Excellent', N'AGS', CAST(N'2024-01-26' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (197, 197, 1196, N'Cushion cut diamond, very good polish and symmetry', N'Cushion', N'6.8 x 4.8 x 3.8', N'Very Good', N'Very Good', N'IGI', CAST(N'2024-01-27' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (198, 198, 1197, N'Marquise cut diamond, good polish and symmetry', N'Marquise', N'7.9 x 5.9 x 4.9', N'Good', N'Good', N'HRD', CAST(N'2024-01-28' AS Date))
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (199, 199, 1198, N'Pear cut diamond, fair polish and symmetry', N'Pear', N'8.0 x 6.0 x 5.0', N'Fair', N'Fair', N'GIA', CAST(N'2024-01-29' AS Date))
GO
INSERT [dbo].[Certificate] ([certificateid], [diamondid], [number], [description], [shape_cut], [measurements], [polish], [symmetry], [issuer], [issued_date]) VALUES (200, 200, 1199, N'Heart cut diamond, poor polish and symmetry', N'Heart', N'9.1 x 7.1 x 6.1', N'Poor', N'Poor', N'AGS', CAST(N'2024-01-30' AS Date))
SET IDENTITY_INSERT [dbo].[Certificate] OFF
GO
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([collectionid], [collection_name], [description], [img_url]) VALUES (1, N'Summer', N'For Summer', NULL)
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description], [img_url]) VALUES (4, N'Spring', N'For Spring', NULL)
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description], [img_url]) VALUES (5, N'Autumn', N'For Autumn', NULL)
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description], [img_url]) VALUES (6, N'Winter', N'For Winter', NULL)
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description], [img_url]) VALUES (7, N'Valentine', N'For Valentine''s Day', NULL)
SET IDENTITY_INSERT [dbo].[Collection] OFF
GO
SET IDENTITY_INSERT [dbo].[CollectionProducts] ON 

INSERT [dbo].[CollectionProducts] ([collectionid], [productid], [collection_productid]) VALUES (1, 1, 7)
INSERT [dbo].[CollectionProducts] ([collectionid], [productid], [collection_productid]) VALUES (1, 2, 8)
INSERT [dbo].[CollectionProducts] ([collectionid], [productid], [collection_productid]) VALUES (1, 3, 7)
INSERT [dbo].[CollectionProducts] ([collectionid], [productid], [collection_productid]) VALUES (1, 5, 3)
SET IDENTITY_INSERT [dbo].[CollectionProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (1, N'Ad', 1, 1, CAST(N'2005-01-01' AS Date))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (2, N'Err', 2, 3, CAST(N'2004-02-05' AS Date))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (3, N'Hihi', 11, 3, CAST(N'2024-06-17' AS Date))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (4, N'Hihi', 2, 1, CAST(N'2024-06-17' AS Date))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (5, N'Hihi', 11, 1, CAST(N'2024-06-17' AS Date))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (6, N'San pham nay tuyet!', 9, 1, CAST(N'2024-07-12' AS Date))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Diamond] ON 

INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (1, N'Ngoc Luc Bao', N'Natural', N'Round', 3.6, N'D', N'IF', N'Excellent', CAST(10800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (2, N'Khang', N'Lab-Created', N'Marquise', 3.6, N'D', N'VVS1', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (3, N'Ruby', N'Natural', N'Round', 3.6, N'D', N'VVS2', N'Excellent', CAST(8800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (4, N'SuperShine', N'Natural', N'Oval', 3.6, N'D', N'VS1', N'Excellent', CAST(8200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (5, N'Emerald', N'Natural', N'Round', 3.6, N'D', N'VS2', N'Excellent', CAST(7000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (6, N'Midnight Star', N'Lab-Created', N'Asscher', 3.6, N'E', N'IF', N'Excellent', CAST(10500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (7, N'Pure Radiance', N'Natural', N'Marquise', 3.6, N'E', N'VVS1', N'Excellent', CAST(9200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (8, N'Love Diamond', N'Natural', N'Radiant', 3.6, N'E', N'VVS2', N'Excellent', CAST(8000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (9, N'Royal Crown', N' Lab-Created', N'Pear', 3.6, N'E', N'VS1', N'Excellent', CAST(7200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (10, N'White Angel', N'Natural', N'Heart', 3.6, N'E', N'VS2', N'Excellent', CAST(5000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (11, N'Eternal Love', N'Natural', N'Round', 3.6, N'F', N'IF', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (12, N'Beauty Queen', N'Lab-Created', N'Princess', 3.6, N'F', N'VVS1', N'Excellent', CAST(9100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (13, N'Timeless Elegance
', N'Natural', N'Oval', 3.6, N'F', N'VVS2', N'Excellent', CAST(7200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (14, N'Pure White Gem
', N'Lab-Created', N'Cushion', 3.6, N'F', N'VS1', N'Excellent', CAST(6000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (15, N'Sunlight Sparkle
', N'Natural', N'Emerald', 3.6, N'F', N'VS2', N'Excellent', CAST(3900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (16, N'Royal Gem
', N'Natural', N'Asscher', 3.6, N'J', N'IF', N'Excellent', CAST(8000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (17, N'Celestial Pearl', N'Natural', N'Marquise', 3.6, N'J', N'VVS1', N'Excellent', CAST(7800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (18, N'Natural Shine', N'Natural', N'Radiant', 3.6, N'J', N'VVS2', N'Excellent', CAST(6500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (19, N'Heavenly Diamond', N'Natural', N'Pear', 3.6, N'J', N'VS1', N'Excellent', CAST(6200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (20, N'Infinite Bliss', N'Lab-Created', N'Heart', 3.6, N'J', N'VS2', N'Excellent', CAST(5300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (21, N'Angelic Beauty', N'Natural', N'Round', 4.1, N'D', N'IF', N'Excellent', CAST(20433000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (22, N'Celestial Light', N'Lab-Created', N'Princess', 4.1, N'D', N'VVS1', N'Excellent', CAST(16147000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (23, N'Royal Majesty', N'Natural', N'Oval', 4.1, N'D', N'VVS2', N'Excellent', CAST(15289000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (24, N'Purest Heart', N'Lab-Created', N'Cushion', 4.1, N'D', N'VS1', N'Excellent', CAST(12311000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (25, N'Celestial Sparkle', N'Natural', N'Emerald', 4.1, N'D', N'VS2', N'Excellent', CAST(11635000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (26, N'Diamond Dream', N'Lab-Created', N'Asscher', 4.1, N'E', N'IF', N'Excellent', CAST(19576000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (27, N'Shining Star', N'Natural', N'Marquise', 4.1, N'E', N'VVS1', N'Excellent', CAST(15289000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (28, N'Diamond Empress', N'Natural', N'Radiant', 4.1, N'E', N'VVS2', N'Excellent', CAST(14432000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (29, N'Crystal Clear', N'Natural', N'Pear', 4.1, N'E', N'VS1', N'Excellent', CAST(11635000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (30, N'Brilliant Beauty
', N'Natural', N'Heart', 4.1, N'E', N'VS2', N'Excellent', CAST(10913000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (31, N'Shimmering Light
', N'Natural', N'Round', 4.1, N'F', N'IF', N'Excellent', CAST(18718000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (32, N'Eternal Spark', N'Natural', N'Princess', 4.1, N'F', N'VVS1', N'Excellent', CAST(14432000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (33, N'Diamond Delight', N'Natural', N'Oval', 4.1, N'F', N'VVS2', N'Excellent', CAST(13575000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (34, N'Radiant Charm', N'Natural', N'Cushion', 4.1, N'F', N'VS1', N'Excellent', CAST(10913000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (35, N'Sparkling Gem', N'Natural', N'Emerald', 4.1, N'F', N'VS2', N'Excellent', CAST(10191000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (36, N'Enchanted Diamond', N'Natural', N'Asscher', 4.1, N'J', N'IF', N'Excellent', CAST(10200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (37, N'Celestial Glory', N'Natural', N'Marquise', 4.1, N'J', N'VVS1', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (38, N'Timeless Jewel', N'Lab-Created', N'Radiant', 4.1, N'J', N'VVS2', N'Excellent', CAST(9100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (39, N'Diamond Grace', N'Natural', N'Pear', 4.1, N'J', N'VS1', N'Excellent', CAST(7100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (40, N'Sparkling Elegance', N'Lab-Created', N'Heart', 4.1, N'J', N'VS2', N'Excellent', CAST(6000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (41, N'Diamond Radiance', N'Natural', N'Round', 4.5, N'D', N'IF', N'Excellent', CAST(24800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (42, N'Glorious Gem', N'Lab-Created', N'Princess', 4.5, N'D', N'VVS1', N'Excellent', CAST(21200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (43, N'Shining Treasure', N'Natural', N'Oval', 4.5, N'D', N'VVS2', N'Excellent', CAST(19800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (44, N'Enchanted Jewel
', N'Natural', N'Cushion', 4.5, N'D', N'VS1', N'Excellent', CAST(18500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (45, N'Diamond Lumina
', N'Natural', N'Emerald', 4.5, N'D', N'VS2', N'Excellent', CAST(16000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (46, N'Royal Treasure', N'Natural', N'Asscher', 4.5, N'E', N'IF', N'Excellent', CAST(22600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (47, N'Pure Radiance', N'Natural', N'Marquise', 4.5, N'E', N'VVS1', N'Excellent', CAST(19200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (48, N'Timeless Sparkle', N'Natural', N'Radiant', 4.5, N'E', N'VVS2', N'Excellent', CAST(17500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (49, N'Majestic Gem', N'Natural', N'Pear', 4.5, N'E', N'VS1', N'Excellent', CAST(16100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (50, N'Crystal Charm', N'Natural', N'Heart', 4.5, N'E', N'VS2', N'Excellent', CAST(14900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (51, N'Diamond Halo', N'Natural', N'Round', 4.5, N'F', N'IF', N'Excellent', CAST(21900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (52, N'Heavenly Spark', N'Natural', N'Princess', 4.5, N'F', N'VVS1', N'Excellent', CAST(18100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (53, N'Radiant Glow', N'Natural', N'Oval', 4.5, N'F', N'VVS2', N'Excellent', CAST(16000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (54, N'Sparkling Bliss', N'Natural', N'Cushion', 4.5, N'F', N'VS1', N'Excellent', CAST(14800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (55, N'Diamond Shimmer', N'Natural', N'Emerald', 4.5, N'F', N'VS2', N'Excellent', CAST(12000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (56, N'Crystal Radiance', N'Natural', N'Asscher', 4.5, N'J', N'IF', N'Excellent', CAST(14000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (57, N'Celestial Jewel', N'Natural', N'Marquise', 4.5, N'J', N'VVS1', N'Excellent', CAST(13800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (58, N'Diamond Brilliance', N'Natural', N'Radiant', 4.5, N'J', N'VVS2', N'Excellent', CAST(13200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (59, N'Shining Majesty', N'Natural', N'Pear', 4.5, N'J', N'VS1', N'Excellent', CAST(12900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (60, N'Glimmering Gem', N'Natural', N'Heart', 4.5, N'J', N'VS2', N'Excellent', CAST(10500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (61, N'Pure Spark', N'Natural', N'Round', 5, N'D', N'IF', N'Excellent', CAST(39000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (62, N'Royal Shimmer', N'Natural', N'Princess', 5, N'D', N'VVS1', N'Excellent', CAST(36500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (63, N'Crystal Bliss', N'Natural', N'Oval', 5, N'D', N'VVS2', N'Excellent', CAST(35000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (64, N'Diamond Dazzle', N'Natural', N'Cushion', 5, N'D', N'VS1', N'Excellent', CAST(32000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (65, N'Enchanted Radiance', N'Natural', N'Emerald', 5, N'D', N'VS2', N'Excellent', CAST(30500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (66, N'Timeless Glory', N'Natural', N'Asscher', 5, N'E', N'IF', N'Excellent', CAST(38100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (67, N'Sparkling Treasure', N'Natural', N'Marquise', 5, N'E', N'VVS1', N'Excellent', CAST(35800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (68, N'Pure Lumina', N'Lab-Created', N'Radiant', 5, N'E', N'VVS2', N'Excellent', CAST(33000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (69, N'Celestial Glow', N'Natural', N'Pear', 5, N'E', N'VS1', N'Excellent', CAST(30100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (70, N'Diamond Sparkle', N'Lab-Created', N'Heart', 5, N'E', N'VS2', N'Excellent', CAST(29000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (71, N'Majestic Radiance', N'Natural', N'Round', 5, N'F', N'IF', N'Excellent', CAST(32200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (72, N'Crystal Grace', N'Natural', N'Princess', 5, N'F', N'VVS1', N'Excellent', CAST(31100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (73, N'Radiant Majesty
', N'Natural', N'Oval', 5, N'F', N'VVS2', N'Excellent', CAST(26000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (74, N'Shimmering Bliss', N'Natural', N'Cushion', 5, N'F', N'VS1', N'Excellent', CAST(23000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (75, N'Enchanted Spark', N'Natural', N'Emerald', 5, N'F', N'VS2', N'Excellent', CAST(20200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (76, N'Diamond Charm
', N'Natural', N'Asscher', 5, N'J', N'IF', N'Excellent', CAST(25300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (77, N'Royal Brilliance', N'Natural', N'Marquise', 5, N'J', N'VVS1', N'Excellent', CAST(23800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (78, N'Celestial Shimmer', N'Natural', N'Radiant', 5, N'J', N'VVS2', N'Excellent', CAST(24500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (79, N'Timeless Treasure
', N'Natural', N'Pear', 5, N'J', N'VS1', N'Excellent', CAST(19900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (80, N'Pure Delight', N'Lab-Created', N'Heart', 5, N'J', N'VS2', N'Excellent', CAST(18000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (81, N'Diamond Lumina', N'Natural', N'Round', 5.4, N'D', N'IF', N'Excellent', CAST(79200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (82, N'Crystal Majesty
', N'Lab-Created', N'Princess', 5.4, N'D', N'VVS1', N'Excellent', CAST(75200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (83, N'Sparkling Glory
', N'Natural', N'Oval', 5.4, N'D', N'VVS2', N'Excellent', CAST(69900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (84, N'Radiant Gem', N'Lab-Created', N'Cushion', 5.4, N'D', N'VS1', N'Excellent', CAST(62900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (85, N'Shimmering Radiance
', N'Natural', N'Emerald', 5.4, N'D', N'VS2', N'Excellent', CAST(54800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (86, N'Enchanted Majesty', N'Lab-Created', N'Asscher', 5.4, N'E', N'IF', N'Excellent', CAST(68800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (87, N'Timeless Charm', N'Natural', N'Marquise', 5.4, N'E', N'VVS1', N'Excellent', CAST(66300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (88, N'Celestial Grace
', N'Natural', N'Radiant', 5.4, N'E', N'VVS2', N'Excellent', CAST(64600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (89, N'Diamond Shimmer', N'Natural', N'Pear', 5.4, N'E', N'VS1', N'Excellent', CAST(58000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (90, N'Pure Bliss', N'Natural', N'Heart', 5.4, N'E', N'VS2', N'Excellent', CAST(53500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (91, N'Royal Glow', N'Natural', N'Round', 5.4, N'F', N'IF', N'Excellent', CAST(59200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (92, N'Sparkling Majesty
', N'Natural', N'Princess', 5.4, N'F', N'VVS1', N'Excellent', CAST(56500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (93, N'Radiant Sparkle
', N'Natural', N'Oval', 5.4, N'F', N'VVS2', N'Excellent', CAST(49800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (94, N'Enchanted Brilliance
', N'Lab-Created', N'Cushion', 5.4, N'F', N'VS1', N'Excellent', CAST(45100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (95, N'Timeless Bliss', N'Natural', N'Emerald', 5.4, N'F', N'VS2', N'Excellent', CAST(42600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (96, N'Diamond Treasure
', N'Natural', N'Asscher', 5.4, N'J', N'IF', N'Excellent', CAST(36900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (97, N'Celestial Radiance', N'Natural', N'Marquise', 5.4, N'J', N'VVS1', N'Excellent', CAST(34100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (98, N'Pure Shimmer', N'Natural', N'Radiant', 5.4, N'J', N'VVS2', N'Excellent', CAST(32600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (99, N'Royal Spark
', N'Natural', N'Pear', 5.4, N'J', N'VS1', N'Excellent', CAST(29500000.00 AS Numeric(38, 2)))
GO
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (100, N'Crystal Glory', N'Lab-Created', N'Heart', 5.4, N'J', N'VS2', N'Excellent', CAST(27600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (101, N'Sparkling Charm', N'Natural', N'Round', 6, N'D', N'IF', N'Excellent', CAST(121800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (102, N'Enchanted Sparkle', N'Natural', N'Princess', 6, N'D', N'VVS1', N'Excellent', CAST(119200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (103, N'Timeless Radiance', N'Natural', N'Oval', 6, N'D', N'VVS2', N'Excellent', CAST(108600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (104, N'Diamond Glow', N'Natural', N'Cushion', 6, N'D', N'VS1', N'Excellent', CAST(78800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (105, N'Celestial Delight', N'Natural', N'Emerald', 6, N'D', N'VS2', N'Excellent', CAST(75200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (106, N'Pure Majesty', N'Natural', N'Asscher', 6, N'E', N'IF', N'Excellent', CAST(119600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (107, N'Royal Sparkle', N'Natural', N'Marquise', 6, N'E', N'VVS1', N'Excellent', CAST(118500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (108, N'Crystal Brilliance', N'Natural', N'Radiant', 6, N'E', N'VVS2', N'Excellent', CAST(106600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (109, N'Sparkling Radiance', N'Natural', N'Pear', 6, N'E', N'VS1', N'Excellent', CAST(76200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (110, N'Enchanted Glow', N'Lab-Created', N'Heart', 6, N'E', N'VS2', N'Excellent', CAST(73000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (111, N'Timeless Spark', N'Natural', N'Round', 6, N'F', N'IF', N'Excellent', CAST(118100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (112, N'Celestial Charm', N'Lab-Created', N'Princess', 6, N'F', N'VVS1', N'Excellent', CAST(116000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (113, N'Diamond Glory
', N'Natural', N'Oval', 6, N'F', N'VVS2', N'Excellent', CAST(102000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (114, N'Pure Treasure
', N'Natural', N'Cushion', 6, N'F', N'VS1', N'Excellent', CAST(74400000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (115, N'Royal Radiance
', N'Natural', N'Emerald', 6, N'F', N'VS2', N'Excellent', CAST(71500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (116, N'Crystal Shimmer
', N'Natural', N'Asscher', 6, N'J', N'IF', N'Excellent', CAST(75500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (117, N'Sparkling Bliss
', N'Natural', N'Marquise', 6, N'J', N'VVS1', N'Excellent', CAST(70800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (118, N'Enchanted Majesty
', N'Natural', N'Radiant', 6, N'J', N'VVS2', N'Excellent', CAST(69900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (119, N'Timeless Sparkle
', N'Natural', N'Pear', 6, N'J', N'VS1', N'Excellent', CAST(62200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (120, N'Celestial Brilliance
', N'Lab-Created', N'Heart', 6, N'J', N'VS2', N'Excellent', CAST(58000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (121, N'Diamond Charm
', N'Natural', N'Round', 6.8, N'D', N'IF', N'Excellent', CAST(340000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (122, N'Pure Radiance
', N'Lab-Created', N'Princess', 6.8, N'D', N'VVS1', N'Excellent', CAST(338000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (123, N'Royal Glow
', N'Natural', N'Oval', 6.8, N'D', N'VVS2', N'Excellent', CAST(326000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (124, N'Crystal Spark
', N'Lab-Created', N'Cushion', 6.8, N'D', N'VS1', N'Excellent', CAST(315800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (125, N'Sparkling Grace
', N'Natural', N'Emerald', 6.8, N'D', N'VS2', N'Excellent', CAST(300600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (126, N'Enchanted Spark
', N'Lab-Created', N'Asscher', 6.8, N'E', N'IF', N'Excellent', CAST(338000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (127, N'Timeless Radiance
', N'Natural', N'Marquise', 6.8, N'E', N'VVS1', N'Excellent', CAST(330000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (128, N'Celestial Shimmer
', N'Natural', N'Radiant', 6.8, N'E', N'VVS2', N'Excellent', CAST(325200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (129, N'Diamond Majesty
', N'Natural', N'Pear', 6.8, N'E', N'VS1', N'Excellent', CAST(311600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (130, N'Pure Glory
', N'Natural', N'Heart', 6.8, N'E', N'VS2', N'Excellent', CAST(292000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (131, N'Royal Brilliance
', N'Natural', N'Round', 6.8, N'F', N'IF', N'Excellent', CAST(299600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (132, N'Crystal Glow
', N'Natural', N'Princess', 6.8, N'F', N'VVS1', N'Excellent', CAST(295000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (133, N'Sparkling Charm
', N'Natural', N'Oval', 6.8, N'F', N'VVS2', N'Excellent', CAST(291100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (134, N'Enchanted Sparkle
', N'Natural', N'Cushion', 6.8, N'F', N'VS1', N'Excellent', CAST(284000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (135, N'Timeless Bliss
', N'Natural', N'Emerald', 6.8, N'F', N'VS2', N'Excellent', CAST(282000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (136, N'Celestial Radiance
', N'Natural', N'Asscher', 6.8, N'J', N'IF', N'Excellent', CAST(140000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (137, N'Diamond Treasure
', N'Natural', N'Marquise', 6.8, N'J', N'VVS1', N'Excellent', CAST(138000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (138, N'Pure Sparkle
', N'Natural', N'Radiant', 6.8, N'J', N'VVS2', N'Excellent', CAST(136100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (139, N'Royal Grace
', N'Natural', N'Pear', 6.8, N'J', N'VS1', N'Excellent', CAST(134000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (140, N'Crystal Brilliance
', N'Lab-Created', N'Heart', 6.8, N'J', N'VS2', N'Excellent', CAST(112600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (141, N'Sparkling Glow
', N'Natural', N'Round', 7.2, N'D', N'IF', N'Excellent', CAST(450000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (142, N'Enchanted Spark
', N'Lab-Created', N'Princess', 7.2, N'D', N'VVS1', N'Excellent', CAST(430000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (143, N'Timeless Charm
', N'Natural', N'Oval', 7.2, N'D', N'VVS2', N'Excellent', CAST(418800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (144, N'Celestial Majesty
', N'Lab-Created', N'Cushion', 7.2, N'D', N'VS1', N'Excellent', CAST(416000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (145, N'Diamond Sparkle
', N'Natural', N'Emerald', 7.2, N'D', N'VS2', N'Excellent', CAST(415000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (146, N'Pure Bliss
', N'Natural', N'Asscher', 7.2, N'E', N'IF', N'Excellent', CAST(435000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (147, N'Royal Shimmer
', N'Natural', N'Marquise', 7.2, N'E', N'VVS1', N'Excellent', CAST(415800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (148, N'Crystal Radiance
', N'Natural', N'Radiant', 7.2, N'E', N'VVS2', N'Excellent', CAST(403600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (149, N'Sparkling Brilliance
', N'Natural', N'Pear', 7.2, N'E', N'VS1', N'Excellent', CAST(401200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (150, N'Enchanted Glow
', N'Natural', N'Heart', 7.2, N'E', N'VS2', N'Excellent', CAST(399600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (151, N'Timeless Sparkle
', N'Natural', N'Round', 7.2, N'F', N'IF', N'Excellent', CAST(420200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (152, N'Celestial Treasure
', N'Natural', N'Princess', 7.2, N'F', N'VVS1', N'Excellent', CAST(400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (153, N'Diamond Radiance
', N'Natural', N'Oval', 7.2, N'F', N'VVS2', N'Excellent', CAST(384600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (154, N'Pure Grace
', N'Lab-Created', N'Cushion', 7.2, N'F', N'VS1', N'Excellent', CAST(383000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (155, N'Royal Spark
', N'Natural', N'Emerald', 7.2, N'F', N'VS2', N'Excellent', CAST(374600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (156, N'Crystal Charm
', N'Lab-Created', N'Asscher', 7.2, N'J', N'IF', N'Excellent', CAST(198800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (157, N'Sparkling Majesty
', N'Natural', N'Marquise', 7.2, N'J', N'VVS1', N'Excellent', CAST(196000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (158, N'Enchanted Sparkle
', N'Lab-Created', N'Radiant', 7.2, N'J', N'VVS2', N'Excellent', CAST(172000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (159, N'Timeless Glory
', N'Natural', N'Pear', 7.2, N'J', N'VS1', N'Excellent', CAST(168000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (160, N'Celestial Radiance
', N'Natural', N'Heart', 7.2, N'J', N'VS2', N'Excellent', CAST(166200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (161, N'Diamond Glow
', N'Natural', N'Round', 8.1, N'D', N'IF', N'Excellent', CAST(1850000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (162, N'Pure Charm
', N'Natural', N'Princess', 8.1, N'D', N'VVS1', N'Excellent', CAST(1680000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (163, N'Royal Treasure
', N'Natural', N'Oval', 8.1, N'D', N'VVS2', N'Excellent', CAST(1420000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (164, N'Crystal Sparkle
', N'Lab-Created', N'Cushion', 8.1, N'D', N'VS1', N'Excellent', CAST(1100000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (165, N'Sparkling Bliss
', N'Natural', N'Emerald', 8.1, N'D', N'VS2', N'Excellent', CAST(980000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (166, N'Enchanted Radiance
', N'Lab-Created', N'Asscher', 8.1, N'E', N'IF', N'Excellent', CAST(1650000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (167, N'Timeless Majesty
', N'Natural', N'Marquise', 8.1, N'E', N'VVS1', N'Excellent', CAST(1480000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (168, N'Celestial Brilliance
', N'Natural', N'Radiant', 8.1, N'E', N'VVS2', N'Excellent', CAST(1220000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (169, N'Diamond Shimmer
', N'Natural', N'Pear', 8.1, N'E', N'VS1', N'Excellent', CAST(960000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (170, N'Pure Spark
', N'Natural', N'Heart', 8.1, N'E', N'VS2', N'Excellent', CAST(910000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (171, N'Royal Radiance
', N'Natural', N'Round', 8.1, N'F', N'IF', N'Excellent', CAST(1450000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (172, N'Crystal Treasure
', N'Natural', N'Princess', 8.1, N'F', N'VVS1', N'Excellent', CAST(1280000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (173, N'Sparkling Charm
', N'Natural', N'Oval', 8.1, N'F', N'VVS2', N'Excellent', CAST(1020000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (174, N'Enchanted Sparkle
', N'Lab-Created', N'Cushion', 8.1, N'F', N'VS1', N'Excellent', CAST(760000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (175, N'Timeless Bliss
', N'Natural', N'Emerald', 8.1, N'F', N'VS2', N'Excellent', CAST(710000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (176, N'Celestial Glow
', N'Natural', N'Asscher', 8.1, N'J', N'IF', N'Excellent', CAST(430000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (177, N'Diamond Majesty
', N'Natural', N'Marquise', 8.1, N'J', N'VVS1', N'Excellent', CAST(429000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (178, N'Pure Brilliance
', N'Natural', N'Radiant', 8.1, N'J', N'VVS2', N'Excellent', CAST(380000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (179, N'Royal Sparkle
', N'Natural', N'Pear', 8.1, N'J', N'VS1', N'Excellent', CAST(352000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (180, N'Crystal Glory
', N'Lab-Created', N'Heart', 8.1, N'J', N'VS2', N'Excellent', CAST(330000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (181, N'Sparkling Radiance
', N'Natural', N'Round', 9, N'D', N'IF', N'Excellent', CAST(4800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (182, N'Enchanted Charm
', N'Lab-Created', N'Princess', 9, N'D', N'VVS1', N'Excellent', CAST(2800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (183, N'Timeless Spark
', N'Natural', N'Oval', 9, N'D', N'VVS2', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (184, N'Celestial Sparkle
', N'Natural', N'Cushion', 9, N'D', N'VS1', N'Excellent', CAST(2200000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (185, N'Diamond Brilliance
', N'Natural', N'Emerald', 9, N'D', N'VS2', N'Excellent', CAST(1900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (186, N'Pure Radiance
', N'Natural', N'Asscher', 9, N'E', N'IF', N'Excellent', CAST(2900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (187, N'Royal Majesty
', N'Natural', N'Marquise', 9, N'E', N'VVS1', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (188, N'Crystal Glow
', N'Lab-Created', N'Radiant', 9, N'E', N'VVS2', N'Excellent', CAST(2400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (189, N'Sparkling Glory
', N'Natural', N'Pear', 9, N'E', N'VS1', N'Excellent', CAST(2000000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (190, N'Enchanted Spark
', N'Natural', N'Heart', 9, N'E', N'VS2', N'Excellent', CAST(1800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (191, N'Timeless Treasure
', N'Natural', N'Round', 9, N'F', N'IF', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (192, N'Celestial Charm
', N'Lab-Created', N'Princess', 9, N'F', N'VVS1', N'Excellent', CAST(2400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (193, N'Diamond Glow
', N'Natural', N'Oval', 9, N'F', N'VVS2', N'Excellent', CAST(2200000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (194, N'Pure Sparkle
', N'Natural', N'Cushion', 9, N'F', N'VS1', N'Excellent', CAST(1900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (195, N'Royal Brilliance
', N'Natural', N'Emerald', 9, N'F', N'VS2', N'Excellent', CAST(1600000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (196, N'Crystal Radiance
', N'Natural', N'Asscher', 9, N'J', N'IF', N'Excellent', CAST(879000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (197, N'Sparkling Majesty
', N'Natural', N'Marquise', 9, N'J', N'VVS1', N'Excellent', CAST(850200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (198, N'Enchanted Sparkle
', N'Natural', N'Radiant', 9, N'J', N'VVS2', N'Excellent', CAST(839900032.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (199, N'Timeless Grace
', N'Natural', N'Pear', 9, N'J', N'VS1', N'Excellent', CAST(793299968.00 AS Numeric(38, 2)))
GO
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (200, N'Celestial Radiance
', N'Lab-Created', N'Heart', 9, N'J', N'VS2', N'Excellent', CAST(742000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (201, N'Sparkle One', N'Lab-Created', N'Round', 1.2, N'G', N'I1', N'Good', CAST(50000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (202, N'Sparkle Two', N'Lab-Created', N'Round', 1, N'K', N'I2', N'Good', CAST(40000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (203, N'Sparkle Three', N'Lab-Created', N'Emerald', 0.8, N'L', N'I2', N'Good', CAST(38000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (204, N'Sparkle Four', N'Lab-Created', N'Round', 0.5, N'P', N'I3', N'Good', CAST(30000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (205, N'Sparkle Five', N'Lab-Created', N'Emerald', 0.2, N'Y', N'I3', N'Good', CAST(25000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (206, N'Sparkle Six', N'Lab-Created', N'Round', 1.2, N'G', N'I1', N'Good', CAST(50000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (207, N'Sparkle Seven', N'Lab-Created', N'Round', 0.8, N'K', N'I2', N'Good', CAST(40000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (208, N'Sparkle Eight', N'Lab-Created', N'Emerald', 0.5, N'P', N'I2', N'Good', CAST(35000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (209, N'Sparkle Nine', N'Lab-Created', N'Round', 0.3, N'R', N'I3', N'Good', CAST(28000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (210, N'Sparkle Ten', N'Lab-Created', N'Emerald', 0.1, N'U', N'I3', N'Good', CAST(24000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[Diamond] OFF
GO
SET IDENTITY_INSERT [dbo].[DiamondMount] ON 

INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (1, N'Nhẫn Starlight Peak', 5.1, N'Nhẫn', N'Gold', CAST(3000000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (2, N'Vòng cổ Eternal Summit', 6.8, N'Vòng cổ', N'Silver', CAST(1200000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (3, N'Vòng đeo tay Radiant Crest', 4.7, N'Vòng đeo tay', N'White Gold', CAST(1800000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (4, N'Nhẫn Celestial Pinnacle', 5.1, N'Nhẫn', N'Silver', CAST(4800000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (5, N'Vòng cổ Diamond Apex', 7.1, N'Vòng cổ ', N'Silver', CAST(4500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (6, N'Vòng đeo tay Majestic Ascent', 6.2, N'Vòng đeo tay', N'Gold', CAST(2200000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (7, N'Nhẫn Pure Elevation', 5.5, N'Nhẫn', N'Platium', CAST(4500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (8, N'Vòng cổ Royal Ridge', 7, N'Vòng cổ', N'Rose Gold', CAST(9000000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (9, N'Vòng đeo tay Heavenly Spire', 6.7, N'Vòng đeo tay', N'Titanium', CAST(2000000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (10, N'Nhẫn Shimmering Summit', 5.1, N'Nhẫn', N'White Gold', CAST(4500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (11, N'Vòng đeo tay Sparkle Crest', 5.5, N'Vòng đeo tay', N'White gold', CAST(1500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (12, N'Nhẫn Gem Peak', 5.2, N'Nhẫn', N'Silver', CAST(800000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (13, N'Mặt dây chuyền Diamond Summit', 1.6, N'Mặt dây chuyền', N'Rose Gold', CAST(4500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (14, N'Mặt dây chuyền Gemstone Crest', 3.5, N'Mặt dây chuyền', N'Platium', CAST(1000000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (15, N'Mặt dây chuyền Luster Heights', 2.9, N'Mặt dây chuyền', N'Titanium', CAST(1200000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (16, N'Mặt dây chuyền Shimmer Ridge', 3.4, N'Mặt dây chuyền', N'Gold', CAST(3000000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (17, N'Vòng đeo tay Radiance Summit', 6.5, N'Vòng đeo tay', N'Silver', CAST(1300000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (18, N'Nhẫn Opulent Spire', 5.3, N'Nhẫn', N'Rose Gold', CAST(4500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (19, N'Vòng cổ Luminary Crest', 6.4, N'Vòng cổ ', N'Silver', CAST(1500000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (20, N'Mặt dây chuyền Starlight Ascent', 4, N'Mặt dây chuyền', N'Platium', CAST(3000000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[DiamondMount] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (1, 1, CAST(N'2024-06-10' AS Date), N'New', 10, 1, CAST(N'2024-07-12' AS Date))
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (2, 2, CAST(N'2024-06-10' AS Date), N'New', 6, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (4, 1, CAST(N'2024-01-12' AS Date), N'Damaged', 2, 0, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (5, 4, CAST(N'2024-02-01' AS Date), N'New', 8, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (6, 5, CAST(N'2024-07-10' AS Date), N'New', 11, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (7, 6, CAST(N'2024-07-07' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (8, 3, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (9, 7, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (10, 8, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (11, 9, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (12, 10, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (13, 11, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (14, 12, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (15, 13, CAST(N'2024-07-10' AS Date), N'New', 1, 0, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (16, 14, CAST(N'2024-07-10' AS Date), N'New', 1, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (17, 15, CAST(N'2024-07-10' AS Date), N'New', 20, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (18, 16, CAST(N'2024-07-10' AS Date), N'New', 20, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (19, 17, CAST(N'2024-07-10' AS Date), N'New', 20, 1, NULL)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (1, NULL, N'Dao Hai Nam', N'0948704134', N'DN', N'ndao9983@gmail.com', CAST(N'2024-06-11' AS Date), N'Pending', NULL, CAST(0.00 AS Numeric(38, 2)), CAST(N'2024-06-12' AS Date), N'VNPay', CAST(N'2024-06-11' AS Date), NULL, NULL, 0)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (2, 2, N'Nam dep trai vcl', N'0948704134', N'Viet Nam', N'ndao9983@gmail.com', CAST(N'2024-06-11' AS Date), N'Pending', NULL, CAST(0.00 AS Numeric(38, 2)), CAST(N'2024-06-11' AS Date), N'Pay after delivery', CAST(N'2024-06-11' AS Date), NULL, NULL, 0)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (3, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Processing', NULL, CAST(571500.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', CAST(N'2024-06-15' AS Date), 2, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (4, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(1446770.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', CAST(N'2024-06-15' AS Date), 1, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (5, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(1446770.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', CAST(N'2024-06-15' AS Date), 1, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (6, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(574425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', CAST(N'2024-06-15' AS Date), 2, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (7, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(1060425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (8, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(1222425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (9, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Delivered', NULL, CAST(1546425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (10, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Pending', NULL, CAST(1546425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (11, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14' AS Date), N'Pending', NULL, CAST(1546425.00 AS Numeric(38, 2)), CAST(N'2024-06-15' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (12, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16' AS Date), N'Cancelled', NULL, CAST(1546425.00 AS Numeric(38, 2)), CAST(N'2024-06-16' AS Date), N'vnpay', CAST(N'2024-06-16' AS Date), NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (13, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16' AS Date), N'Delivered', NULL, CAST(1384425.00 AS Numeric(38, 2)), CAST(N'2024-06-16' AS Date), N'vnpay', CAST(N'2024-06-16' AS Date), 1, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (14, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16' AS Date), N'Delivered', NULL, CAST(1060425.00 AS Numeric(38, 2)), CAST(N'2024-06-16' AS Date), N'vnpay', CAST(N'2024-06-16' AS Date), 2, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (15, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16' AS Date), N'Pending', NULL, CAST(1060425.00 AS Numeric(38, 2)), CAST(N'2024-06-16' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (16, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16' AS Date), N'Cancelled', 8, CAST(954382.50 AS Numeric(38, 2)), CAST(N'2024-06-16' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (17, 5, N'Hai Nam', N'0912105529', N'FPT', N'nam@gmail.com', CAST(N'2024-06-30' AS Date), N'Deliverying', 7, CAST(1060425.00 AS Numeric(38, 2)), CAST(N'2024-06-30' AS Date), N'Pay after delivery', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (18, 10, N'Phuong', N'0909123123', N'FPT', N'thp13062018@gmail.com', CAST(N'2024-06-17' AS Date), N'Pending', NULL, CAST(898425.00 AS Numeric(38, 2)), CAST(N'2024-06-19' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (19, 1, N'Phuong', N'0909123123', N'FPT', N'max1@gmail.com', CAST(N'2024-06-19' AS Date), N'Pending', NULL, CAST(898425.00 AS Numeric(38, 2)), CAST(N'2024-06-22' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (20, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-22' AS Date), N'Delivered', NULL, CAST(761635.00 AS Numeric(38, 2)), CAST(N'2024-06-22' AS Date), N'COD', CAST(N'2024-06-22' AS Date), 2, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (21, 7, N'Nam', N'0909678678', N'Bien Hoa', N'max6@gmail.com', CAST(N'2024-07-01' AS Date), N'Delivered', NULL, CAST(134942128.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date), N'VNPay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (22, 9, N'Tao ten Nam', N'0978788878', N'To 10, ap 9, Song Ray, Cam My, Dong Nai', N'max8@gmail.com', CAST(N'2024-07-07' AS Date), N'Delivered', NULL, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-09' AS Date), N'vnpay', NULL, NULL, NULL, 1)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason], [payment_status]) VALUES (23, NULL, N'Tien', N'0909678678', N'Bien Hoa', N'tien123@gmail.com', CAST(N'2024-07-10' AS Date), N'Processing', NULL, CAST(13850000.00 AS Numeric(38, 2)), NULL, N'COD', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (1, 1, 2, 2, CAST(790320.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (2, 2, 3, 2, CAST(273000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (5, 3, 1, 1, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (6, 3, 3, 3, CAST(136500.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (7, 4, 1, 1, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (8, 4, 3, 3, CAST(136500.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (9, 4, 4, 2, CAST(437635.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (10, 5, 1, 1, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (11, 5, 3, 3, CAST(136500.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (12, 5, 4, 2, CAST(437635.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (13, 6, 1, 0, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (14, 6, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (15, 7, 1, 3, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (16, 7, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (17, 8, 1, 4, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (18, 8, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (19, 9, 1, 6, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (20, 9, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (21, 10, 1, 6, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (22, 10, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (23, 11, 1, 6, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (24, 11, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (25, 12, 1, 6, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (26, 12, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (27, 13, 1, 5, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (28, 13, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (29, 14, 1, 3, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (30, 14, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (31, 15, 1, 3, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (32, 15, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (33, 16, 1, 3, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (34, 16, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (35, 17, 1, 2, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (36, 17, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (37, 18, 1, 2, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (38, 18, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (39, 19, 1, 2, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (40, 19, 2, 1, CAST(574425.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (41, 20, 1, 2, CAST(162000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (42, 20, 4, 1, CAST(437635.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (43, 21, 1, 3, CAST(35409600.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (44, 21, 4, 1, CAST(28713326.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (45, 22, 2, 1, CAST(5768670.07 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (46, 23, 1, 1, CAST(3650000.00 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (47, 23, 5, 1, CAST(10200000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (1, N'Nhẫn Eternity', N'Ánh sáng vĩnh cửu, biểu tượng của tình yêu và sự thanh lịch trường tồn', 1, CAST(3250000.00 AS Numeric(38, 2)), CAST(8000.00 AS Numeric(38, 2)), CAST(3910000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (2, N'Nhẫn Pure Elegance', N'Ánh sáng lấp lánh tĩnh lặng, gợi lên sự bình yên và tinh tế', 4, CAST(13600000.00 AS Numeric(38, 2)), CAST(12000.00 AS Numeric(38, 2)), CAST(15110000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (3, N'Vòng cổ Royal Grace', N'Ánh sáng dịu dàng, thì thầm của lãng mạn và mê hoặc', 2, CAST(8400000.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(10930000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (4, N'Vòng đeo tay Celestial Halo', N'Vẻ thanh lịch của buổi tối, sự hòa quyện tinh tế của sức quyến rũ lúc hoàng hôn', 6, CAST(10560000.00 AS Numeric(38, 2)), CAST(22000.00 AS Numeric(38, 2)), CAST(11540000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (5, N'Vòng cổ Heavenly Charm', N'Sức quyến rũ thiên đường, nắm bắt ánh sáng lấp lánh của các thiên thể', 8, CAST(14000000.00 AS Numeric(38, 2)), CAST(20000.00 AS Numeric(38, 2)), CAST(15850000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (6, N'Vòng đeo tay Timeless Love', N'Ánh sáng dịu nhẹ, thì thầm của lãng mạn và sức quyến rũ mê hoặc', 9, CAST(26000000.00 AS Numeric(38, 2)), CAST(10000.00 AS Numeric(38, 2)), CAST(28880000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (7, N'Nhẫn Radiant Glow', N'Ánh sáng lấp lánh yên bình, thể hiện sự tĩnh lặng và vẻ thanh lịch tinh tế', 7, CAST(8400000.00 AS Numeric(38, 2)), CAST(20000.00 AS Numeric(38, 2)), CAST(985000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (8, N'Vòng cổ Enchanted Sparkle', N'Vẻ đẹp lộng lẫy hoàng gia, được tô điểm bởi sự rực rỡ và duyên dáng uy nghi', 5, CAST(12300000.00 AS Numeric(38, 2)), CAST(8000.00 AS Numeric(38, 2)), CAST(14160000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (9, N'Nhẫn Moonlight Whisper', N'Ánh sáng nhẹ nhàng, làn gió của lãng mạn và sự quyến rũ mê hoặc', 1, CAST(18289000.00 AS Numeric(38, 2)), CAST(12000.00 AS Numeric(38, 2)), CAST(21050000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (10, N'Vòng cổ Royal Majesty', N'Mê hoặc huyền bí, được trang hoàng bởi sự rực rỡ hoàng gia và thanh danh', 2, CAST(12835000.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(14770000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (11, N'Vòng đeo tay Celestial Starlight', N'Đóa hoa kỳ diệu, phản ánh vẻ đẹp và sự quyến rũ của thiên nhiên', 5, CAST(14300000.00 AS Numeric(38, 2)), CAST(22000.00 AS Numeric(38, 2)), CAST(16480000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (12, N'Vòng cổ Harmony Breeze', N'Dòng chảy hài hòa, nắm bắt sự vuốt ve nhẹ nhàng của làn gió', 8, CAST(21000000.00 AS Numeric(38, 2)), CAST(20000.00 AS Numeric(38, 2)), CAST(24180000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (13, N'Nhẫn Serenity Sparkle', N'Ánh lấp lánh thanh bình, gợi nhớ sự yên bình và sự tinh tế tinh tế', 7, CAST(62500000.00 AS Numeric(38, 2)), CAST(10000.00 AS Numeric(38, 2)), CAST(71890000.00 AS Numeric(38, 2)), N'OutOfStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (14, N'Dây chuyền Sparkling Haven ', N'Sức quyến rũ thiên đường, nắm bắt ánh sáng lấp lánh của các thiên thể', 20, CAST(19000000.00 AS Numeric(38, 2)), CAST(50000.00 AS Numeric(38, 2)), CAST(21910000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (15, N'Dây chuyền Glittering Heights', N'Ánh lấp lánh thanh bình, thể hiện sự tĩnh lặng và vẻ thanh lịch tinh tế', 13, CAST(4690000.00 AS Numeric(38, 2)), CAST(200000.00 AS Numeric(38, 2)), CAST(5630000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (16, N'Dây chuyền Radiant Pinnacle', N'Vẻ đẹp lộng lẫy hoàng gia, được trang hoàng bởi sự rực rỡ hoàng gia và thanh danh', 15, CAST(1350000.00 AS Numeric(38, 2)), CAST(120000.00 AS Numeric(38, 2)), CAST(1700000.00 AS Numeric(38, 2)), N'InStock', NULL)
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status], [img_url]) VALUES (17, N'Day chuyen kim cuong Brant', N'Day chuyen xuat xu tu Brant', 4, CAST(5040000.00 AS Numeric(38, 2)), CAST(10000.00 AS Numeric(38, 2)), CAST(5810000.00 AS Numeric(38, 2)), N'InStock', NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDiamond] ON 

INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (1, 1, 206, N'Side', 5)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (2, 2, 3, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (8, 4, 4, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (9, 4, 207, N'Side', 4)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (10, 6, 5, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (11, 6, 2, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (13, 3, 9, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (14, 5, 10, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (15, 6, 13, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (16, 7, 15, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (17, 8, 17, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (18, 9, 27, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (19, 10, 25, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (20, 11, 37, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (21, 12, 55, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (22, 13, 89, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (23, 14, 45, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (24, 15, 208, N'Side', 5)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (25, 16, 206, N'Side', 3)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (26, 17, 207, N'Side', 6)
SET IDENTITY_INSERT [dbo].[ProductDiamond] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPrice] ON 

INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (3, 3, CAST(0.00 AS Numeric(38, 2)), 0, CAST(0.00 AS Numeric(38, 2)), NULL)
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (4, 1, CAST(127000.00 AS Numeric(38, 2)), 1.2, CAST(0.00 AS Numeric(38, 2)), CAST(N'2024-06-05' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (6, 3, CAST(110000.00 AS Numeric(38, 2)), 1.2, CAST(132000.00 AS Numeric(38, 2)), CAST(N'2024-06-06' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (8, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136500.00 AS Numeric(38, 2)), CAST(N'2024-06-06' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (9, 1, CAST(135000.00 AS Numeric(38, 2)), 1.2, CAST(162000.00 AS Numeric(38, 2)), CAST(N'2024-06-06' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (13, 4, CAST(320000.00 AS Numeric(38, 2)), 1.09, CAST(348800.00 AS Numeric(38, 2)), CAST(N'2024-06-06' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (15, 4, CAST(317000.00 AS Numeric(38, 2)), 1.09, CAST(345530.00 AS Numeric(38, 2)), CAST(N'2024-06-06' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (16, 2, CAST(356000.00 AS Numeric(38, 2)), 1.11, CAST(395160.00 AS Numeric(38, 2)), CAST(N'2024-06-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (17, 6, CAST(255000.00 AS Numeric(38, 2)), 1.11, CAST(283050.00 AS Numeric(38, 2)), CAST(N'2024-06-11' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (19, 2, CAST(433000.00 AS Numeric(38, 2)), 1.11, CAST(480630.00 AS Numeric(38, 2)), CAST(N'2024-06-11' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (20, 2, CAST(517500.00 AS Numeric(38, 2)), 1.11, CAST(574425.00 AS Numeric(38, 2)), CAST(N'2024-06-11' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (21, 4, CAST(401500.00 AS Numeric(38, 2)), 1.09, CAST(437635.00 AS Numeric(38, 2)), CAST(N'2024-06-11' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (22, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409600.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (23, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987076.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (24, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.98 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (25, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713326.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (26, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551632.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (27, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409600.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (28, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987076.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (29, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.98 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (30, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713326.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (31, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551632.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (32, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409600.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (33, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987076.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (34, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.98 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (35, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713326.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (36, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551632.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (37, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409600.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (38, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987076.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (39, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.98 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (40, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713326.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (41, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551632.00 AS Numeric(38, 2)), CAST(N'2024-07-01' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (42, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (43, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (44, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (45, 4, CAST(22281000.00 AS Numeric(38, 2)), 1.09, CAST(24286290.74 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (46, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (47, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (48, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (49, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (50, 4, CAST(22281000.00 AS Numeric(38, 2)), 1.09, CAST(24286290.74 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (51, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (52, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (53, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (54, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (55, 4, CAST(22281000.00 AS Numeric(38, 2)), 1.09, CAST(24286290.74 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (56, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (57, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (58, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (59, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (60, 4, CAST(22281000.00 AS Numeric(38, 2)), 1.09, CAST(24286290.74 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (61, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (62, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (63, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (64, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (65, 4, CAST(22281000.00 AS Numeric(38, 2)), 1.09, CAST(24286290.74 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (66, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-03' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (67, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-08' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (68, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-08' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (69, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-08' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (70, 4, CAST(1092281000.00 AS Numeric(38, 2)), 1.09, CAST(1190586326.46 AS Numeric(38, 2)), CAST(N'2024-07-08' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (71, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-08' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (72, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (73, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (74, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (75, 4, CAST(1092281000.00 AS Numeric(38, 2)), 1.09, CAST(1190586326.46 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (76, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (77, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (78, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (79, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (80, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (81, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (82, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (83, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (84, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (85, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (86, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (87, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (88, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (89, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (90, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (91, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (92, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (93, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (94, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (95, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (96, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (97, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (98, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (99, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (100, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (101, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (102, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (103, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (104, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (105, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (106, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (107, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (108, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-10' AS Date))
GO
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (109, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (110, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (111, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (112, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (113, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (114, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (115, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (116, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (117, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (118, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (119, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (120, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (121, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (122, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (123, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (124, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (125, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (126, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (127, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (128, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (129, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (130, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (131, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (132, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (133, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (134, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (135, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (136, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (137, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (138, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (139, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (140, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (141, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (142, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (143, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (144, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (145, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (146, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (147, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (148, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (149, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (150, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (151, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (152, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (153, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (154, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (155, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (156, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (157, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (158, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (159, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (160, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (161, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (162, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (163, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (164, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (165, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (166, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (167, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (168, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (169, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (170, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (171, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (172, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (173, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (174, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (175, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (176, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (177, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (178, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (179, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (180, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (181, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (182, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (183, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (184, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (185, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (186, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (187, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (188, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (189, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (190, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (191, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (192, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (193, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (194, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (195, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (196, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (197, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (198, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (199, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (200, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (201, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (202, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (203, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (204, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (205, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (206, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (207, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (208, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
GO
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (209, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (210, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (211, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (212, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (213, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (214, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (215, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (216, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (217, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (218, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (219, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (220, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (221, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (222, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (223, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (224, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (225, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (226, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (227, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (228, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (229, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (230, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (231, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (232, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (233, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (234, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (235, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (236, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (237, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (238, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (239, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (240, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (241, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (242, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (243, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (244, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (245, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (246, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (247, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (248, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (249, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (250, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (251, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (252, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (253, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (254, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (255, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (256, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (257, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (258, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (259, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (260, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (261, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (262, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (263, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (264, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (265, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (266, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (267, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (268, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (269, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (270, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (271, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (272, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (273, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (274, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (275, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (276, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (277, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (278, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (279, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (280, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (281, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (282, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (283, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (284, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (285, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (286, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (287, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (288, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (289, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (290, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (291, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (292, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (293, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (294, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (295, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (296, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (297, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (298, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (299, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (300, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (301, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (302, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (303, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (304, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (305, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (306, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (307, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (308, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
GO
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (309, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (310, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (311, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (312, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (313, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (314, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (315, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (316, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (317, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (318, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (319, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (320, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (321, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (322, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (323, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (324, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (325, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (326, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (327, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (328, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (329, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (330, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (331, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (332, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (333, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (334, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (335, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (336, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (337, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (338, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (339, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (340, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (341, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (342, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (343, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (344, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (345, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (346, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (347, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (348, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (349, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (350, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (351, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (352, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (353, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (354, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (355, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (356, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (357, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (358, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (359, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (360, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (361, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (362, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (363, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (364, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (365, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (366, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (367, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (368, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (369, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (370, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (371, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (372, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (373, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (374, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (375, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (376, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (377, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (378, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (379, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (380, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (381, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (382, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (383, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (384, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (385, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (386, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (387, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (388, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (389, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (390, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (391, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (392, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (393, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (394, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-12' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (395, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (396, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (397, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (398, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (399, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (400, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (401, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (402, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (403, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (404, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (405, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (406, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (407, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (408, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
GO
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (409, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (410, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (411, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (412, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (413, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (414, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (415, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (416, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (417, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (418, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (419, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (420, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (421, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (422, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (423, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (424, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (425, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (426, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (427, 1, CAST(3035000.00 AS Numeric(38, 2)), 1.2, CAST(3642000.14 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (428, 2, CAST(5197000.00 AS Numeric(38, 2)), 1.11, CAST(5768670.07 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (429, 3, CAST(1205000.00 AS Numeric(38, 2)), 1.3, CAST(1566499.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (430, 4, CAST(2481000.00 AS Numeric(38, 2)), 1.09, CAST(2704290.08 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (431, 5, CAST(9020000.00 AS Numeric(38, 2)), 1.13, CAST(10192599.96 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (432, 6, CAST(2132000.00 AS Numeric(38, 2)), 1.11, CAST(2366520.03 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (433, 8, CAST(4508000.00 AS Numeric(38, 2)), 1.15, CAST(5184199.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (434, 9, CAST(3012000.00 AS Numeric(38, 2)), 1.15, CAST(3463799.93 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (435, 10, CAST(1205000.00 AS Numeric(38, 2)), 1.15, CAST(1385749.97 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (436, 11, CAST(4522000.00 AS Numeric(38, 2)), 1.15, CAST(5200299.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (437, 12, CAST(9020000.00 AS Numeric(38, 2)), 1.15, CAST(10372999.78 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (438, 13, CAST(4510000.00 AS Numeric(38, 2)), 1.15, CAST(5186499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (439, 14, CAST(3500000.00 AS Numeric(38, 2)), 1.15, CAST(4024999.92 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (440, 15, CAST(4700000.00 AS Numeric(38, 2)), 1.15, CAST(5404999.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (441, 16, CAST(2400000.00 AS Numeric(38, 2)), 1.15, CAST(2759999.94 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (442, 17, CAST(4810000.00 AS Numeric(38, 2)), 1.15, CAST(5531499.89 AS Numeric(38, 2)), CAST(N'2024-07-14' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (443, 1, CAST(3258000.00 AS Numeric(38, 2)), 1.2, CAST(3909600.16 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (444, 2, CAST(13612000.00 AS Numeric(38, 2)), 1.11, CAST(15109320.19 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (445, 3, CAST(8405000.00 AS Numeric(38, 2)), 1.3, CAST(10926499.60 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (446, 4, CAST(10582000.00 AS Numeric(38, 2)), 1.09, CAST(11534380.35 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (447, 5, CAST(14020000.00 AS Numeric(38, 2)), 1.13, CAST(15842599.93 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (448, 6, CAST(26010000.00 AS Numeric(38, 2)), 1.11, CAST(28871100.37 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (449, 8, CAST(12308000.00 AS Numeric(38, 2)), 1.15, CAST(14154199.71 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (450, 9, CAST(18301000.00 AS Numeric(38, 2)), 1.15, CAST(21046149.56 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (451, 10, CAST(12840000.00 AS Numeric(38, 2)), 1.15, CAST(14765999.69 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (452, 11, CAST(14322000.00 AS Numeric(38, 2)), 1.15, CAST(16470299.66 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (453, 12, CAST(21020000.00 AS Numeric(38, 2)), 1.15, CAST(24172999.50 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (454, 13, CAST(62510000.00 AS Numeric(38, 2)), 1.15, CAST(71886498.51 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (455, 14, CAST(19050000.00 AS Numeric(38, 2)), 1.15, CAST(21907499.55 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (456, 15, CAST(4890000.00 AS Numeric(38, 2)), 1.15, CAST(5623499.88 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (457, 16, CAST(1470000.00 AS Numeric(38, 2)), 1.15, CAST(1690499.96 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (458, 17, CAST(5050000.00 AS Numeric(38, 2)), 1.15, CAST(5807499.88 AS Numeric(38, 2)), CAST(N'2024-07-17' AS Date))
SET IDENTITY_INSERT [dbo].[ProductPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPromotion] ON 

INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (3, 2, 1, 0.08, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (4, 2, 2, 0.08, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (5, 2, 3, 0.2, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (6, 1, 1, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (7, 1, 2, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (8, 1, 3, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (9, 2, 4, 0.05, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (10, 9, 1, 0.05, CAST(N'2024-07-10' AS Date), CAST(N'2024-07-20' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (11, 9, 2, 0.05, CAST(N'2024-07-20' AS Date), CAST(N'2024-07-24' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (12, 4, 10, 0.08, CAST(N'2024-07-20' AS Date), CAST(N'2024-07-25' AS Date), 0)
SET IDENTITY_INSERT [dbo].[ProductPromotion] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (1, N'Giam gia 22/1', N'Special Day', CAST(N'2003-01-01' AS Date), CAST(N'2003-02-02' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (2, N'Vietnamese Women''s Day', N'Special Day', CAST(N'2004-02-29' AS Date), CAST(N'2004-03-02' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (3, N'International', N'National', CAST(N'2019-08-12' AS Date), CAST(N'2020-06-03' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (4, N'Summer Sale', N'Big summer discounts', CAST(N'2024-05-01' AS Date), CAST(N'2024-08-31' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (5, N'Black Friday', N'Special Black Friday discounts', CAST(N'2024-07-01' AS Date), CAST(N'2024-07-24' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (6, N'Year End Sale', N'End of the year discounts', CAST(N'2023-12-27' AS Date), CAST(N'2024-01-01' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (7, N'Spring Festival', N'Spring festival, great discounts', CAST(N'2024-04-20' AS Date), CAST(N'2024-06-20' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (8, N'Back to School', N'Back to school season discounts', CAST(N'2024-05-01' AS Date), CAST(N'2024-06-30' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (9, N'Christmas Sale', N'Christmas season discounts', CAST(N'2024-06-15' AS Date), CAST(N'2024-07-25' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (10, N'Valentine''s Special', N'Special Valentines Day discounts', CAST(N'2024-07-10' AS Date), CAST(N'2024-07-14' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (11, N'Mid-Autumn Festival', N'Mid-Autumn Festival special promotions', CAST(N'2024-06-01' AS Date), CAST(N'2024-07-10' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (12, N'New Year Bonanza', N'Special New Year promotions', CAST(N'2024-05-31' AS Date), CAST(N'2024-06-05' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (13, N'Mother''s Day Special', N'Special discounts for Mothers Day', CAST(N'2024-06-05' AS Date), CAST(N'2024-06-12' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (14, N'AAA', N'Customer tang 10%', CAST(N'2024-07-20' AS Date), CAST(N'2024-07-20' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (15, N'AAA', N'Customer tang 10%', CAST(N'2024-07-20' AS Date), CAST(N'2024-07-21' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (3, N'Sales Staff')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (4, N'Delivery Staff')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (5, N'Member')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (1, N'Nam', N'$2a$10$tKaCxFL5oRhFCJhSrWBapedYm07cbSkIXLdfem6OOabPt98qE1Ekm', N'0909123123', 4, CAST(N'2003-01-01' AS Date), N'max1@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23' AS Date), CAST(N'2024-05-28' AS Date), NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (2, N'kieto', N'$2a$10$NeuAyxXPDCKRX0R6kQwmROwjF4KCgf9Oi.BH2g9f6WpOZU//XjFcK', N'0909123124', 4, CAST(N'2003-01-01' AS Date), N'max2@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23' AS Date), CAST(N'2024-05-28' AS Date), NULL, NULL, N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (4, N'max', N'$2a$10$6v4v3uODIFudtGWrso4DuOgUw4i7NVvdUdTxkZlutiighGY3C.Ffm', N'0909123135', 5, CAST(N'2002-01-01' AS Date), N'max3@gmail.com', N'male', 6202, N'active', N'system account', CAST(N'2024-05-23' AS Date), NULL, N'5ab825ba-31bf-49ed-8ed8-1fa77d19334751d4c697-03b1-4b79-9fdf-3ec89f1c8d96', CAST(N'2024-07-08T13:26:23.2870000' AS DateTime2), N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (5, N'max', N'$2a$10$3txjHL3scN6cJMyz/m.Lxe80KZIZcdjUeR06pU3aZ/O2P/koh2L86', N'0909123123', 3, CAST(N'2003-01-01' AS Date), N'max5@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23' AS Date), CAST(N'2024-05-23' AS Date), NULL, NULL, N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (6, N'max', N'$2a$10$iKkDL1oE5LxA80MjIsDN5OL.BjfAuVHQmC5NQmJYS07lRBjZjjWwe', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max4@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-25' AS Date), NULL, N'de56466a-3fb5-43a0-8924-1b9640e9d250bb2d682c-8f86-4454-80c9-7777565aa537', CAST(N'2024-07-08T13:24:35.7270000' AS DateTime2), N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (7, N'max', N'$2a$10$SmEY8J2PIK8voJPqnd3fx.0.fmSlFgrtb9Owf.gQFnJNxo4I.2WR.', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max6@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-28' AS Date), NULL, NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (8, N'max', N'$2a$10$.Gm6LZmKsFLGDphDTz0K7.wGHFKglAgtwxMsNJYuRarCXsgfa7Qku', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max7@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-04' AS Date), NULL, NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (9, N'max', N'$2a$10$4pDDdH41RPeEaANERxKp6e8CUDXMM/1B6DQRtotry/eWLnYRB6xL6', N'0909123786', 5, CAST(N'2003-10-01' AS Date), N'max8@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-11' AS Date), CAST(N'2024-07-12' AS Date), NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (10, N'max', N'$2a$10$pu4i2isn.wKEMHaWmAQkoee2EG4JQiwy7psmX6C5bkP70zdVmsKgq', N'0909123124', 5, CAST(N'2003-10-05' AS Date), N'thp13062018@gmail.com', N'male', 6106, N'active', N'system account', CAST(N'2024-06-13' AS Date), NULL, NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (11, N'Dao Hai Nam', N'$2a$10$yq2FHi94RPDgNIOKnMHB.ejeCbfn0WtHlmqox44Yhx5mKw7KaTkxO', N'0948704134', 2, CAST(N'2003-07-05' AS Date), N'ndao9983@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-17' AS Date), NULL, NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (12, N'Le Thanh Truc', N'$2a$10$8/z80YXsupf/ArSAcqnZA.dKtfTUIYFOXdqSjLGIuc0d01B.3c1Gy', N'0912105253', 5, CAST(N'2003-06-17' AS Date), N'trucdan123@gmail.com', N'female', 0, N'active', N'system account', CAST(N'2024-07-02' AS Date), NULL, NULL, NULL, N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (13, N'Nguyen Hai Nam', N'$2a$10$hqkWF2MKmDn5Eo52eIMtuOQOt4pwc95LE/a5Rh/KtBen.D50tmYxG', N'0902238979', 5, CAST(N'2007-12-14' AS Date), N'nam23@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-02' AS Date), NULL, NULL, NULL, N'184/1A')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (14, N'Le Gia Khang', N'$2a$10$NVWUH/JNVwqXvTAIN8MpKuNPMOw9xP0c7YCFBMkCGidn5lCQqdzye', N'0378020756', 5, CAST(N'2003-12-14' AS Date), N'khanggai@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-02' AS Date), NULL, NULL, NULL, N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (15, N'Admin', N'$2a$10$ukjTv7bjYDsdFGSOlRPE3.ZtAnbAXDngJCv9HvkbduskATT4vFxou', N'0909004805', 1, CAST(N'2003-01-01' AS Date), N'Admin@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-02' AS Date), NULL, NULL, NULL, N'184/1B')
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (16, N'max', N'$2a$10$.a2p.BJ8YRyACHEc8pLZLeyHaqqCr6x6xkLVA0xRojxDTV7s24qo2', N'0909123124', 5, CAST(N'2003-10-05' AS Date), N'max9@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (17, N'max', N'$2a$10$bthykQPPldIJzXB1j0e/WOGLzRFbyTILysqLdhkg9ikSmeVa3636q', N'0909123124', 5, CAST(N'2003-10-05' AS Date), N'max10@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (18, N'max', N'$2a$10$WPrHmr1VCPpG2Jyg7zQbVOAQDWcI7axuVQgq/JfyuIxaiEVXtXqPq', N'0909123124', 5, CAST(N'2024-07-12' AS Date), N'max11@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (19, N'max', N'$2a$10$oEwGHvuPcfS3w7UXu6oePe6eEj1/5HPMtj4vDAX40Uz8jNWbh1.XK', N'0909123124', 5, CAST(N'2003-10-05' AS Date), N'max12@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-12' AS Date), NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date], [address]) VALUES (20, N'max', N'$2a$10$clVFQfrqevO6vThzcr1/T.8fNYmYLjZ4n0cCcsjuG1WMjSn6UEqwW', N'0909123124', 5, CAST(N'2003-10-05' AS Date), N'max13@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-07-12' AS Date), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (1, 4, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (2, 5, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (3, 4, N'Voucher mới', 30, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.05, 1, N'Expired')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (4, 4, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (6, 4, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (7, 4, N'Voucher super mới', 60, CAST(N'2024-05-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (8, 10, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[VoucherType] ON 

INSERT [dbo].[VoucherType] ([voucher_typeid], [description], [discount], [discount_length], [point_needed], [is_active]) VALUES (1, N'Voucher mới', 0.05, 30, 1000, 0)
INSERT [dbo].[VoucherType] ([voucher_typeid], [description], [discount], [discount_length], [point_needed], [is_active]) VALUES (2, N'Voucher đặc biệt', 0.1, 60, 3000, 1)
SET IDENTITY_INSERT [dbo].[VoucherType] OFF
GO
SET IDENTITY_INSERT [dbo].[Warranty] ON 

INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (1, 1, N'1 month', CAST(N'2003-02-10' AS Date), CAST(N'2003-03-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (2, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (3, 1, N'5 months', CAST(N'2024-02-10' AS Date), CAST(N'2024-09-10' AS Date), N'Active')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (5, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
SET IDENTITY_INSERT [dbo].[Warranty] OFF
GO
/****** Object:  Index [UQ__Certific__F82348493D68EAFC]    Script Date: 17/07/2024 10:44:55 CH ******/
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [UQ__Certific__F82348493D68EAFC] UNIQUE NONCLUSTERED 
(
	[diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ__Certific__F823484963C84BCD]    Script Date: 17/07/2024 10:44:55 CH ******/
ALTER TABLE [dbo].[Certificate] ADD  CONSTRAINT [UQ__Certific__F823484963C84BCD] UNIQUE NONCLUSTERED 
(
	[diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK__Certifica__diamo__5DCAEF64] FOREIGN KEY([diamondid])
REFERENCES [dbo].[Diamond] ([diamondid])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK__Certifica__diamo__5DCAEF64]
GO
ALTER TABLE [dbo].[CollectionProducts]  WITH CHECK ADD  CONSTRAINT [FK__Collectio__colle__04E4BC85] FOREIGN KEY([collectionid])
REFERENCES [dbo].[Collection] ([collectionid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CollectionProducts] CHECK CONSTRAINT [FK__Collectio__colle__04E4BC85]
GO
ALTER TABLE [dbo].[CollectionProducts]  WITH CHECK ADD  CONSTRAINT [FK__Collectio__produ__05D8E0BE] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CollectionProducts] CHECK CONSTRAINT [FK__Collectio__produ__05D8E0BE]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK__Comment__product__5812160E] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK__Comment__product__5812160E]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK__Comment__userid__571DF1D5] FOREIGN KEY([userid])
REFERENCES [dbo].[User] ([userid])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK__Comment__userid__571DF1D5]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product1] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product1]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Inventory_Product] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK_Inventory_Product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__customeri__5AEE82B9] FOREIGN KEY([customerid])
REFERENCES [dbo].[User] ([userid])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__customeri__5AEE82B9]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__delivery___6477ECF3] FOREIGN KEY([delivery_staffid])
REFERENCES [dbo].[User] ([userid])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__delivery___6477ECF3]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK__Order__voucherid__6754599E] FOREIGN KEY([voucherid])
REFERENCES [dbo].[Voucher] ([voucherid])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK__Order__voucherid__6754599E]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__order__5BE2A6F2] FOREIGN KEY([orderid])
REFERENCES [dbo].[Order] ([orderid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__order__5BE2A6F2]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__produ__5CD6CB2B] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__produ__5CD6CB2B]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__mountid__59063A47] FOREIGN KEY([mountid])
REFERENCES [dbo].[DiamondMount] ([mountid])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__mountid__59063A47]
GO
ALTER TABLE [dbo].[ProductDiamond]  WITH CHECK ADD  CONSTRAINT [FK__ProductDi__diamo__6D0D32F4] FOREIGN KEY([diamondid])
REFERENCES [dbo].[Diamond] ([diamondid])
GO
ALTER TABLE [dbo].[ProductDiamond] CHECK CONSTRAINT [FK__ProductDi__diamo__6D0D32F4]
GO
ALTER TABLE [dbo].[ProductDiamond]  WITH CHECK ADD  CONSTRAINT [FK__ProductDi__produ__6C190EBB] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[ProductDiamond] CHECK CONSTRAINT [FK__ProductDi__produ__6C190EBB]
GO
ALTER TABLE [dbo].[ProductPrice]  WITH CHECK ADD  CONSTRAINT [FK__ProductPr__produ__6B24EA82] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[ProductPrice] CHECK CONSTRAINT [FK__ProductPr__produ__6B24EA82]
GO
ALTER TABLE [dbo].[ProductPromotion]  WITH CHECK ADD  CONSTRAINT [FK__ProductPr__produ__628FA481] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[ProductPromotion] CHECK CONSTRAINT [FK__ProductPr__produ__628FA481]
GO
ALTER TABLE [dbo].[ProductPromotion]  WITH CHECK ADD  CONSTRAINT [FK__ProductPr__promo__6383C8BA] FOREIGN KEY([promotionid])
REFERENCES [dbo].[Promotion] ([promotionid])
GO
ALTER TABLE [dbo].[ProductPromotion] CHECK CONSTRAINT [FK__ProductPr__promo__6383C8BA]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK__User__roleid__5535A963] FOREIGN KEY([roleid])
REFERENCES [dbo].[Role] ([roleid])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK__User__roleid__5535A963]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK__Voucher__memberi__5629CD9C] FOREIGN KEY([memberid])
REFERENCES [dbo].[User] ([userid])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK__Voucher__memberi__5629CD9C]
GO
ALTER TABLE [dbo].[Voucher]  WITH CHECK ADD  CONSTRAINT [FK__Voucher__voucher__6E01572D] FOREIGN KEY([voucher_typeid])
REFERENCES [dbo].[VoucherType] ([voucher_typeid])
GO
ALTER TABLE [dbo].[Voucher] CHECK CONSTRAINT [FK__Voucher__voucher__6E01572D]
GO
ALTER TABLE [dbo].[Warranty]  WITH CHECK ADD  CONSTRAINT [FK_Warranty_OrderDetail] FOREIGN KEY([order_detailid])
REFERENCES [dbo].[OrderDetail] ([order_detailid])
GO
ALTER TABLE [dbo].[Warranty] CHECK CONSTRAINT [FK_Warranty_OrderDetail]
GO

