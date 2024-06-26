USE [master]
GO
/****** Object:  Database [DiamondStoreV4]    Script Date: 01/07/2024 5:06:13 CH ******/
CREATE DATABASE [DiamondStoreV4]
 
USE [DiamondStoreV4]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[Collection]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[collectionid] [int] IDENTITY(1,1) NOT NULL,
	[collection_name] [varchar](255) NULL,
	[description] [nvarchar](255) NULL,
 CONSTRAINT [PK__Collecti__5BCE26BC3B30C6E8] PRIMARY KEY CLUSTERED 
(
	[collectionid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollectionProducts]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionProducts](
	[collection_productid] [int] IDENTITY(1,1) NOT NULL,
	[collectionid] [int] NOT NULL,
	[productid] [int] NOT NULL,
 CONSTRAINT [PK__Collecti__691E57F7CEFE5460] PRIMARY KEY CLUSTERED 
(
	[collectionid] ASC,
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[commentid] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](255) NULL,
	[userid] [int] NULL,
	[productid] [int] NULL,
	[create_date] [datetime2](6) NULL,
 CONSTRAINT [PK__Comment__CDA84BC58A446D6B] PRIMARY KEY CLUSTERED 
(
	[commentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Diamond]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[DiamondMount]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiamondMount](
	[mountid] [int] IDENTITY(1,1) NOT NULL,
	[mount_name] [varchar](255) NULL,
	[size] [real] NULL,
	[type] [varchar](255) NULL,
	[material] [varchar](255) NULL,
	[base_price] [numeric](38, 2) NULL,
 CONSTRAINT [PK__DiamondM__9D142254AE45D6F2] PRIMARY KEY CLUSTERED 
(
	[mountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[imageid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NOT NULL,
	[image_url] [varchar](255) NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[imageid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 01/07/2024 5:06:13 CH ******/
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
	[update_date] [datetime2](6) NULL,
 CONSTRAINT [PK__Inventor__306F78A6DB8A7196] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[orderid] [int] IDENTITY(1,1) NOT NULL,
	[customerid] [int] NULL,
	[customer_name] [varchar](255) NULL,
	[phone_number] [varchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[email] [varchar](255) NULL,
	[order_date] [datetime2](6) NULL,
	[status] [varchar](255) NULL,
	[voucherid] [int] NULL,
	[payment_amount] [numeric](38, 2) NULL,
	[payment_status] [bit] NULL,
	[payment_date] [datetime2](6) NULL,
	[payment_method] [nvarchar](255) NULL,
	[delivery_date] [datetime2](6) NULL,
	[delivery_staffid] [int] NULL,
	[cancel_reason] [varchar](255) NULL,
 CONSTRAINT [PK__Order__080E37753E19CA7C] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [varchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[mountid] [int] NULL,
	[components_price] [numeric](38, 2) NULL,
	[labor_fee] [numeric](38, 2) NULL,
	[price] [numeric](38, 2) NULL,
	[status] [varchar](255) NULL,
 CONSTRAINT [PK__Product__2D172D32529B19D5] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiamond]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 01/07/2024 5:06:13 CH ******/
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
	[update_date] [datetime2](6) NULL,
 CONSTRAINT [PK__ProductP__5578FD50DEFF72B5] PRIMARY KEY CLUSTERED 
(
	[product_priceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPromotion]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 01/07/2024 5:06:13 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[promotionid] [int] IDENTITY(1,1) NOT NULL,
	[promotion_name] [varchar](255) NULL,
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
/****** Object:  Table [dbo].[Role]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 01/07/2024 5:06:13 CH ******/
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
	[create_at] [datetime2](6) NULL,
	[update_at] [datetime2](6) NULL,
	[token_password] [varchar](255) NULL,
	[token_create_date] [datetime2](6) NULL,
 CONSTRAINT [PK__User__CBA1B2571A52ECC4] PRIMARY KEY CLUSTERED 
(
	[userid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[VoucherType]    Script Date: 01/07/2024 5:06:13 CH ******/
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
/****** Object:  Table [dbo].[Warranty]    Script Date: 01/07/2024 5:06:13 CH ******/
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
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([collectionid], [collection_name], [description]) VALUES (1, N'Summer', N'For summer')
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description]) VALUES (2, N'Auturm', N'For Auturm')
INSERT [dbo].[Collection] ([collectionid], [collection_name], [description]) VALUES (4, N'Spring', N'Aoharu')
SET IDENTITY_INSERT [dbo].[Collection] OFF
GO
SET IDENTITY_INSERT [dbo].[CollectionProducts] ON 

INSERT [dbo].[CollectionProducts] ([collection_productid], [collectionid], [productid]) VALUES (1, 1, 1)
INSERT [dbo].[CollectionProducts] ([collection_productid], [collectionid], [productid]) VALUES (7, 1, 3)
INSERT [dbo].[CollectionProducts] ([collection_productid], [collectionid], [productid]) VALUES (3, 1, 5)
SET IDENTITY_INSERT [dbo].[CollectionProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (1, N'Ad', 1, 1, CAST(N'2005-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (2, N'Err', 2, 3, CAST(N'2004-02-05T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Diamond] ON 

INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (1, N'Ngoc Luc Bao', N'Natural', N'Round', 3.6, N'D', N'IF', N'Excellent', CAST(10800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (2, N'Khang', N'Lab-Created', N'Princess', 3.6, N'D', N'VSS1', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (3, N'Ruby', N'Natural', N'Oval', 3.6, N'D', N'VSS2', N'Excellent', CAST(8800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (4, N'SuperShine', N'Natural', N'Cushion', 3.6, N'D', N'VS1', N'Excellent', CAST(8200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (5, N'Emerald', N'Natural', N'Emerald', 3.6, N'D', N'VS2', N'Excellent', CAST(7000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (6, N'Diamond 6', N'Lab-Created', N'Asscher', 3.6, N'E', N'IF', N'Excellent', CAST(10500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (7, N'Diamond 7', N'Natural', N'Marquise', 3.6, N'E', N'VVS1', N'Excellent', CAST(9200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (8, N'Diamond 8', N'Natural', N'Radiant', 3.6, N'E', N'VVS2', N'Excellent', CAST(8000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (9, N'Diamond 9', N'Natural', N'Pear', 3.6, N'E', N'VS1', N'Excellent', CAST(7200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (10, N'Diamond 10', N'Natural', N'Heart', 3.6, N'E', N'VS2', N'Excellent', CAST(5000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (11, N'Diamond 11', N'Natural', N'Round', 3.6, N'F', N'IF', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (12, N'Diamond 12', N'Lab-Created', N'Princess', 3.6, N'F', N'VVS1', N'Excellent', CAST(9100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (13, N'Diamond 13', N'Natural', N'Oval', 3.6, N'F', N'VVS2', N'Excellent', CAST(7200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (14, N'Diamond 14', N'Lab-Created', N'Cushion', 3.6, N'F', N'VS1', N'Excellent', CAST(6000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (15, N'Diamond 15', N'Natural', N'Emerald', 3.6, N'F', N'VS2', N'Excellent', CAST(3900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (16, N'Diamond 16', N'Natural', N'Asscher', 3.6, N'J', N'IF', N'Excellent', CAST(8000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (17, N'Diamond 17', N'Natural', N'Marquise', 3.6, N'J', N'VVS1', N'Excellent', CAST(7800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (18, N'Diamond 18', N'Natural', N'Radiant', 3.6, N'J', N'VVS2', N'Excellent', CAST(6500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (19, N'Diamond 19', N'Natural', N'Pear', 3.6, N'J', N'VS1', N'Excellent', CAST(6200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (20, N'Diamond 20', N'Lab-Created', N'Heart', 3.6, N'J', N'VS2', N'Excellent', CAST(5300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (21, N'Diamond 21', N'Natural', N'Round', 4.1, N'D', N'IF', N'Excellent', CAST(20433000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (22, N'Diamond 22', N'Lab-Created', N'Princess', 4.1, N'D', N'VVS1', N'Excellent', CAST(16147000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (23, N'Diamond 23', N'Natural', N'Oval', 4.1, N'D', N'VVS2', N'Excellent', CAST(15289000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (24, N'Diamond 24', N'Lab-Created', N'Cushion', 4.1, N'D', N'VS1', N'Excellent', CAST(12311000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (25, N'Diamond 25', N'Natural', N'Emerald', 4.1, N'D', N'VS2', N'Excellent', CAST(11635000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (26, N'Diamond 26', N'Lab-Created', N'Asscher', 4.1, N'E', N'IF', N'Excellent', CAST(19576000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (27, N'Diamond 27', N'Natural', N'Marquise', 4.1, N'E', N'VVS1', N'Excellent', CAST(15289000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (28, N'Diamond 28', N'Natural', N'Radiant', 4.1, N'E', N'VVS2', N'Excellent', CAST(14432000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (29, N'Diamond 29', N'Natural', N'Pear', 4.1, N'E', N'VS1', N'Excellent', CAST(11635000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (30, N'Diamond 30', N'Natural', N'Heart', 4.1, N'E', N'VS2', N'Excellent', CAST(10913000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (31, N'Diamond 31', N'Natural', N'Round', 4.1, N'F', N'IF', N'Excellent', CAST(18718000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (32, N'Diamond 32', N'Natural', N'Princess', 4.1, N'F', N'VVS1', N'Excellent', CAST(14432000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (33, N'Diamond 33', N'Natural', N'Oval', 4.1, N'F', N'VVS2', N'Excellent', CAST(13575000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (34, N'Diamond 34', N'Natural', N'Cushion', 4.1, N'F', N'VS1', N'Excellent', CAST(10913000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (35, N'Diamond 35', N'Natural', N'Emerald', 4.1, N'F', N'VS2', N'Excellent', CAST(10191000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (36, N'Diamond 36', N'Natural', N'Asscher', 4.1, N'J', N'IF', N'Excellent', CAST(10200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (37, N'Diamond 37', N'Natural', N'Marquise', 4.1, N'J', N'VVS1', N'Excellent', CAST(9800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (38, N'Diamond 38', N'Lab-Created', N'Radiant', 4.1, N'J', N'VVS2', N'Excellent', CAST(9100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (39, N'Diamond 39', N'Natural', N'Pear', 4.1, N'J', N'VS1', N'Excellent', CAST(7100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (40, N'Diamond 40', N'Lab-Created', N'Heart', 4.1, N'J', N'VS2', N'Excellent', CAST(6000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (41, N'Diamond 41', N'Natural', N'Round', 4.5, N'D', N'IF', N'Excellent', CAST(24800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (42, N'Diamond 42', N'Lab-Created', N'Princess', 4.5, N'D', N'VVS1', N'Excellent', CAST(21200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (43, N'Diamond 43', N'Natural', N'Oval', 4.5, N'D', N'VVS2', N'Excellent', CAST(19800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (44, N'Diamond 44', N'Natural', N'Cushion', 4.5, N'D', N'VS1', N'Excellent', CAST(18500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (45, N'Diamond 45', N'Natural', N'Emerald', 4.5, N'D', N'VS2', N'Excellent', CAST(16000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (46, N'Diamond 46', N'Natural', N'Asscher', 4.5, N'E', N'IF', N'Excellent', CAST(22600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (47, N'Diamond 47', N'Natural', N'Marquise', 4.5, N'E', N'VVS1', N'Excellent', CAST(19200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (48, N'Diamond 48', N'Natural', N'Radiant', 4.5, N'E', N'VVS2', N'Excellent', CAST(17500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (49, N'Diamond 49', N'Natural', N'Pear', 4.5, N'E', N'VS1', N'Excellent', CAST(16100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (50, N'Diamond 50', N'Natural', N'Heart', 4.5, N'E', N'VS2', N'Excellent', CAST(14900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (51, N'Diamond 51', N'Natural', N'Round', 4.5, N'F', N'IF', N'Excellent', CAST(21900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (52, N'Diamond 52', N'Natural', N'Princess', 4.5, N'F', N'VVS1', N'Excellent', CAST(18100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (53, N'Diamond 53', N'Natural', N'Oval', 4.5, N'F', N'VVS2', N'Excellent', CAST(16000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (54, N'Diamond 54', N'Natural', N'Cushion', 4.5, N'F', N'VS1', N'Excellent', CAST(14800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (55, N'Diamond 55', N'Natural', N'Emerald', 4.5, N'F', N'VS2', N'Excellent', CAST(12000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (56, N'Diamond 56', N'Natural', N'Asscher', 4.5, N'J', N'IF', N'Excellent', CAST(14000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (57, N'Diamond 57', N'Natural', N'Marquise', 4.5, N'J', N'VVS1', N'Excellent', CAST(13800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (58, N'Diamond 58', N'Natural', N'Radiant', 4.5, N'J', N'VVS2', N'Excellent', CAST(13200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (59, N'Diamond 59', N'Natural', N'Pear', 4.5, N'J', N'VS1', N'Excellent', CAST(12900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (60, N'Diamond 60', N'Natural', N'Heart', 4.5, N'J', N'VS2', N'Excellent', CAST(10500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (61, N'Diamond 61', N'Natural', N'Round', 5, N'D', N'IF', N'Excellent', CAST(39000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (62, N'Diamond 62', N'Natural', N'Princess', 5, N'D', N'VVS1', N'Excellent', CAST(36500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (63, N'Diamond 63', N'Natural', N'Oval', 5, N'D', N'VVS2', N'Excellent', CAST(35000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (64, N'Diamond 64', N'Natural', N'Cushion', 5, N'D', N'VS1', N'Excellent', CAST(32000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (65, N'Diamond 65', N'Natural', N'Emerald', 5, N'D', N'VS2', N'Excellent', CAST(30500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (66, N'Diamond 66', N'Natural', N'Asscher', 5, N'E', N'IF', N'Excellent', CAST(38100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (67, N'Diamond 67', N'Natural', N'Marquise', 5, N'E', N'VVS1', N'Excellent', CAST(35800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (68, N'Diamond 68', N'Lab-Created', N'Radiant', 5, N'E', N'VVS2', N'Excellent', CAST(33000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (69, N'Diamond 69', N'Natural', N'Pear', 5, N'E', N'VS1', N'Excellent', CAST(30100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (70, N'Diamond 70', N'Lab-Created', N'Heart', 5, N'E', N'VS2', N'Excellent', CAST(29000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (71, N'Diamond 71', N'Natural', N'Round', 5, N'F', N'IF', N'Excellent', CAST(32200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (72, N'Diamond 72', N'Natural', N'Princess', 5, N'F', N'VVS1', N'Excellent', CAST(31100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (73, N'Diamond 73', N'Natural', N'Oval', 5, N'F', N'VVS2', N'Excellent', CAST(26000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (74, N'Diamond 74', N'Natural', N'Cushion', 5, N'F', N'VS1', N'Excellent', CAST(23000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (75, N'Diamond 75', N'Natural', N'Emerald', 5, N'F', N'VS2', N'Excellent', CAST(20200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (76, N'Diamond 76', N'Natural', N'Asscher', 5, N'J', N'IF', N'Excellent', CAST(25300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (77, N'Diamond 77', N'Natural', N'Marquise', 5, N'J', N'VVS1', N'Excellent', CAST(23800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (78, N'Diamond 78', N'Natural', N'Radiant', 5, N'J', N'VVS2', N'Excellent', CAST(24500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (79, N'Diamond 79', N'Natural', N'Pear', 5, N'J', N'VS1', N'Excellent', CAST(19900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (80, N'Diamond 80', N'Lab-Created', N'Heart', 5, N'J', N'VS2', N'Excellent', CAST(18000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (81, N'Diamond 81', N'Natural', N'Round', 5.4, N'D', N'IF', N'Excellent', CAST(79200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (82, N'Diamond 82', N'Lab-Created', N'Princess', 5.4, N'D', N'VVS1', N'Excellent', CAST(75200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (83, N'Diamond 83', N'Natural', N'Oval', 5.4, N'D', N'VVS2', N'Excellent', CAST(69900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (84, N'Diamond 84', N'Lab-Created', N'Cushion', 5.4, N'D', N'VS1', N'Excellent', CAST(62900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (85, N'Diamond 85', N'Natural', N'Emerald', 5.4, N'D', N'VS2', N'Excellent', CAST(54800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (86, N'Diamond 86', N'Lab-Created', N'Asscher', 5.4, N'E', N'IF', N'Excellent', CAST(68800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (87, N'Diamond 87', N'Natural', N'Marquise', 5.4, N'E', N'VVS1', N'Excellent', CAST(66300000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (88, N'Diamond 88', N'Natural', N'Radiant', 5.4, N'E', N'VVS2', N'Excellent', CAST(64600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (89, N'Diamond 89', N'Natural', N'Pear', 5.4, N'E', N'VS1', N'Excellent', CAST(58000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (90, N'Diamond 90', N'Natural', N'Heart', 5.4, N'E', N'VS2', N'Excellent', CAST(53500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (91, N'Diamond 91', N'Natural', N'Round', 5.4, N'F', N'IF', N'Excellent', CAST(59200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (92, N'Diamond 92', N'Natural', N'Princess', 5.4, N'F', N'VVS1', N'Excellent', CAST(56500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (93, N'Diamond 93', N'Natural', N'Oval', 5.4, N'F', N'VVS2', N'Excellent', CAST(49800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (94, N'Diamond 94', N'Lab-Created', N'Cushion', 5.4, N'F', N'VS1', N'Excellent', CAST(45100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (95, N'Diamond 95', N'Natural', N'Emerald', 5.4, N'F', N'VS2', N'Excellent', CAST(42600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (96, N'Diamond 96', N'Natural', N'Asscher', 5.4, N'J', N'IF', N'Excellent', CAST(36900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (97, N'Diamond 97', N'Natural', N'Marquise', 5.4, N'J', N'VVS1', N'Excellent', CAST(34100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (98, N'Diamond 98', N'Natural', N'Radiant', 5.4, N'J', N'VVS2', N'Excellent', CAST(32600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (99, N'Diamond 99', N'Natural', N'Pear', 5.4, N'J', N'VS1', N'Excellent', CAST(29500000.00 AS Numeric(38, 2)))
GO
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (100, N'Diamond 100', N'Lab-Created', N'Heart', 5.4, N'J', N'VS2', N'Excellent', CAST(27600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (101, N'Diamond 101', N'Natural', N'Round', 6, N'D', N'IF', N'Excellent', CAST(121800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (102, N'Diamond 102', N'Natural', N'Princess', 6, N'D', N'VVS1', N'Excellent', CAST(119200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (103, N'Diamond 103', N'Natural', N'Oval', 6, N'D', N'VVS2', N'Excellent', CAST(108600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (104, N'Diamond 104', N'Natural', N'Cushion', 6, N'D', N'VS1', N'Excellent', CAST(78800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (105, N'Diamond 105', N'Natural', N'Emerald', 6, N'D', N'VS2', N'Excellent', CAST(75200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (106, N'Diamond 106', N'Natural', N'Asscher', 6, N'E', N'IF', N'Excellent', CAST(119600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (107, N'Diamond 107', N'Natural', N'Marquise', 6, N'E', N'VVS1', N'Excellent', CAST(118500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (108, N'Diamond 108', N'Natural', N'Radiant', 6, N'E', N'VVS2', N'Excellent', CAST(106600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (109, N'Diamond 109', N'Natural', N'Pear', 6, N'E', N'VS1', N'Excellent', CAST(76200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (110, N'Diamond 110', N'Lab-Created', N'Heart', 6, N'E', N'VS2', N'Excellent', CAST(73000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (111, N'Diamond 111', N'Natural', N'Round', 6, N'F', N'IF', N'Excellent', CAST(118100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (112, N'Diamond 112', N'Lab-Created', N'Princess', 6, N'F', N'VVS1', N'Excellent', CAST(116000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (113, N'Diamond 113', N'Natural', N'Oval', 6, N'F', N'VVS2', N'Excellent', CAST(102000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (114, N'Diamond 114', N'Natural', N'Cushion', 6, N'F', N'VS1', N'Excellent', CAST(74400000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (115, N'Diamond 115', N'Natural', N'Emerald', 6, N'F', N'VS2', N'Excellent', CAST(71500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (116, N'Diamond 116', N'Natural', N'Asscher', 6, N'J', N'IF', N'Excellent', CAST(75500000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (117, N'Diamond 117', N'Natural', N'Marquise', 6, N'J', N'VVS1', N'Excellent', CAST(70800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (118, N'Diamond 118', N'Natural', N'Radiant', 6, N'J', N'VVS2', N'Excellent', CAST(69900000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (119, N'Diamond 119', N'Natural', N'Pear', 6, N'J', N'VS1', N'Excellent', CAST(62200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (120, N'Diamond 120', N'Lab-Created', N'Heart', 6, N'J', N'VS2', N'Excellent', CAST(58000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (121, N'Diamond 121', N'Natural', N'Round', 6.8, N'D', N'IF', N'Excellent', CAST(340000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (122, N'Diamond 122', N'Lab-Created', N'Princess', 6.8, N'D', N'VVS1', N'Excellent', CAST(338000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (123, N'Diamond 123', N'Natural', N'Oval', 6.8, N'D', N'VVS2', N'Excellent', CAST(326000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (124, N'Diamond 124', N'Lab-Created', N'Cushion', 6.8, N'D', N'VS1', N'Excellent', CAST(315800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (125, N'Diamond 125', N'Natural', N'Emerald', 6.8, N'D', N'VS2', N'Excellent', CAST(300600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (126, N'Diamond 126', N'Lab-Created', N'Asscher', 6.8, N'E', N'IF', N'Excellent', CAST(338000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (127, N'Diamond 127', N'Natural', N'Marquise', 6.8, N'E', N'VVS1', N'Excellent', CAST(330000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (128, N'Diamond 128', N'Natural', N'Radiant', 6.8, N'E', N'VVS2', N'Excellent', CAST(325200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (129, N'Diamond 129', N'Natural', N'Pear', 6.8, N'E', N'VS1', N'Excellent', CAST(311600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (130, N'Diamond 130', N'Natural', N'Heart', 6.8, N'E', N'VS2', N'Excellent', CAST(292000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (131, N'Diamond 131', N'Natural', N'Round', 6.8, N'F', N'IF', N'Excellent', CAST(299600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (132, N'Diamond 132', N'Natural', N'Princess', 6.8, N'F', N'VVS1', N'Excellent', CAST(295000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (133, N'Diamond 133', N'Natural', N'Oval', 6.8, N'F', N'VVS2', N'Excellent', CAST(291100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (134, N'Diamond 134', N'Natural', N'Cushion', 6.8, N'F', N'VS1', N'Excellent', CAST(284000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (135, N'Diamond 135', N'Natural', N'Emerald', 6.8, N'F', N'VS2', N'Excellent', CAST(282000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (136, N'Diamond 136', N'Natural', N'Asscher', 6.8, N'J', N'IF', N'Excellent', CAST(140000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (137, N'Diamond 137', N'Natural', N'Marquise', 6.8, N'J', N'VVS1', N'Excellent', CAST(138000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (138, N'Diamond 138', N'Natural', N'Radiant', 6.8, N'J', N'VVS2', N'Excellent', CAST(136100000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (139, N'Diamond 139', N'Natural', N'Pear', 6.8, N'J', N'VS1', N'Excellent', CAST(134000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (140, N'Diamond 140', N'Lab-Created', N'Heart', 6.8, N'J', N'VS2', N'Excellent', CAST(112600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (141, N'Diamond 141', N'Natural', N'Round', 7.2, N'D', N'IF', N'Excellent', CAST(450000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (142, N'Diamond 142', N'Lab-Created', N'Princess', 7.2, N'D', N'VVS1', N'Excellent', CAST(430000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (143, N'Diamond 143', N'Natural', N'Oval', 7.2, N'D', N'VVS2', N'Excellent', CAST(418800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (144, N'Diamond 144', N'Lab-Created', N'Cushion', 7.2, N'D', N'VS1', N'Excellent', CAST(416000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (145, N'Diamond 145', N'Natural', N'Emerald', 7.2, N'D', N'VS2', N'Excellent', CAST(415000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (146, N'Diamond 146', N'Natural', N'Asscher', 7.2, N'E', N'IF', N'Excellent', CAST(435000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (147, N'Diamond 147', N'Natural', N'Marquise', 7.2, N'E', N'VVS1', N'Excellent', CAST(415800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (148, N'Diamond 148', N'Natural', N'Radiant', 7.2, N'E', N'VVS2', N'Excellent', CAST(403600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (149, N'Diamond 149', N'Natural', N'Pear', 7.2, N'E', N'VS1', N'Excellent', CAST(401200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (150, N'Diamond 150', N'Natural', N'Heart', 7.2, N'E', N'VS2', N'Excellent', CAST(399600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (151, N'Diamond 151', N'Natural', N'Round', 7.2, N'F', N'IF', N'Excellent', CAST(420200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (152, N'Diamond 152', N'Natural', N'Princess', 7.2, N'F', N'VVS1', N'Excellent', CAST(400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (153, N'Diamond 153', N'Natural', N'Oval', 7.2, N'F', N'VVS2', N'Excellent', CAST(384600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (154, N'Diamond 154', N'Lab-Created', N'Cushion', 7.2, N'F', N'VS1', N'Excellent', CAST(383000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (155, N'Diamond 155', N'Natural', N'Emerald', 7.2, N'F', N'VS2', N'Excellent', CAST(374600000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (156, N'Diamond 156', N'Lab-Created', N'Asscher', 7.2, N'J', N'IF', N'Excellent', CAST(198800000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (157, N'Diamond 157', N'Natural', N'Marquise', 7.2, N'J', N'VVS1', N'Excellent', CAST(196000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (158, N'Diamond 158', N'Lab-Created', N'Radiant', 7.2, N'J', N'VVS2', N'Excellent', CAST(172000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (159, N'Diamond 159', N'Natural', N'Pear', 7.2, N'J', N'VS1', N'Excellent', CAST(168000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (160, N'Diamond 160', N'Natural', N'Heart', 7.2, N'J', N'VS2', N'Excellent', CAST(166200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (161, N'Diamond 161', N'Natural', N'Round', 8.1, N'D', N'IF', N'Excellent', CAST(1850000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (162, N'Diamond 162', N'Natural', N'Princess', 8.1, N'D', N'VVS1', N'Excellent', CAST(1680000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (163, N'Diamond 163', N'Natural', N'Oval', 8.1, N'D', N'VVS2', N'Excellent', CAST(1420000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (164, N'Diamond 164', N'Lab-Created', N'Cushion', 8.1, N'D', N'VS1', N'Excellent', CAST(1100000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (165, N'Diamond 165', N'Natural', N'Emerald', 8.1, N'D', N'VS2', N'Excellent', CAST(980000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (166, N'Diamond 166', N'Lab-Created', N'Asscher', 8.1, N'E', N'IF', N'Excellent', CAST(1650000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (167, N'Diamond 167', N'Natural', N'Marquise', 8.1, N'E', N'VVS1', N'Excellent', CAST(1480000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (168, N'Diamond 168', N'Natural', N'Radiant', 8.1, N'E', N'VVS2', N'Excellent', CAST(1220000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (169, N'Diamond 169', N'Natural', N'Pear', 8.1, N'E', N'VS1', N'Excellent', CAST(960000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (170, N'Diamond 170', N'Natural', N'Heart', 8.1, N'E', N'VS2', N'Excellent', CAST(910000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (171, N'Diamond 171', N'Natural', N'Round', 8.1, N'F', N'IF', N'Excellent', CAST(1450000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (172, N'Diamond 172', N'Natural', N'Princess', 8.1, N'F', N'VVS1', N'Excellent', CAST(1280000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (173, N'Diamond 173', N'Natural', N'Oval', 8.1, N'F', N'VVS2', N'Excellent', CAST(1020000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (174, N'Diamond 174', N'Lab-Created', N'Cushion', 8.1, N'F', N'VS1', N'Excellent', CAST(760000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (175, N'Diamond 175', N'Natural', N'Emerald', 8.1, N'F', N'VS2', N'Excellent', CAST(710000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (176, N'Diamond 176', N'Natural', N'Asscher', 8.1, N'J', N'IF', N'Excellent', CAST(430000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (177, N'Diamond 177', N'Natural', N'Marquise', 8.1, N'J', N'VVS1', N'Excellent', CAST(429000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (178, N'Diamond 178', N'Natural', N'Radiant', 8.1, N'J', N'VVS2', N'Excellent', CAST(380000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (179, N'Diamond 179', N'Natural', N'Pear', 8.1, N'J', N'VS1', N'Excellent', CAST(352000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (180, N'Diamond 180', N'Lab-Created', N'Heart', 8.1, N'J', N'VS2', N'Excellent', CAST(330000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (181, N'Diamond 181', N'Natural', N'Round', 9, N'D', N'IF', N'Excellent', CAST(4800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (182, N'Diamond 182', N'Lab-Created', N'Princess', 9, N'D', N'VVS1', N'Excellent', CAST(2800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (183, N'Diamond 183', N'Natural', N'Oval', 9, N'D', N'VVS2', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (184, N'Diamond 184', N'Natural', N'Cushion', 9, N'D', N'VS1', N'Excellent', CAST(2200000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (185, N'Diamond 185', N'Natural', N'Emerald', 9, N'D', N'VS2', N'Excellent', CAST(1900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (186, N'Diamond 186', N'Natural', N'Asscher', 9, N'E', N'IF', N'Excellent', CAST(2900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (187, N'Diamond 187', N'Natural', N'Marquise', 9, N'E', N'VVS1', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (188, N'Diamond 188', N'Lab-Created', N'Radiant', 9, N'E', N'VVS2', N'Excellent', CAST(2400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (189, N'Diamond 189', N'Natural', N'Pear', 9, N'E', N'VS1', N'Excellent', CAST(2000000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (190, N'Diamond 190', N'Natural', N'Heart', 9, N'E', N'VS2', N'Excellent', CAST(1800000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (191, N'Diamond 191', N'Natural', N'Round', 9, N'F', N'IF', N'Excellent', CAST(2700000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (192, N'Diamond 192', N'Lab-Created', N'Princess', 9, N'F', N'VVS1', N'Excellent', CAST(2400000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (193, N'Diamond 193', N'Natural', N'Oval', 9, N'F', N'VVS2', N'Excellent', CAST(2200000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (194, N'Diamond 194', N'Natural', N'Cushion', 9, N'F', N'VS1', N'Excellent', CAST(1900000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (195, N'Diamond 195', N'Natural', N'Emerald', 9, N'F', N'VS2', N'Excellent', CAST(1600000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (196, N'Diamond 196', N'Natural', N'Asscher', 9, N'J', N'IF', N'Excellent', CAST(879000000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (197, N'Diamond 197', N'Natural', N'Marquise', 9, N'J', N'VVS1', N'Excellent', CAST(850200000.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (198, N'Diamond 198', N'Natural', N'Radiant', 9, N'J', N'VVS2', N'Excellent', CAST(839900032.00 AS Numeric(38, 2)))
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (199, N'Diamond 199', N'Natural', N'Pear', 9, N'J', N'VS1', N'Excellent', CAST(793299968.00 AS Numeric(38, 2)))
GO
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (200, N'Diamond 200', N'Lab-Created', N'Heart', 9, N'J', N'VS2', N'Excellent', CAST(742000000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[Diamond] OFF
GO
SET IDENTITY_INSERT [dbo].[DiamondMount] ON 

INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (1, N'Vong kim co', 5.1, N'vong co', N'gold', CAST(120500.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (2, N'Pokemon Watch', 68, N'watch', N'garbage', CAST(100000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (3, N'Vong', 4.7, N'vong co nam', N'woods', CAST(77000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (4, N'Vong kim co', 5.1, N'vong co', N'gold', CAST(123000.00 AS Numeric(38, 2)))
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (5, N'Lac tay sieu lac', 7.1, N'lac tay', N'silver', CAST(50000.00 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[DiamondMount] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (1, 1, CAST(N'2024-06-10' AS Date), N'New', 8, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (2, 2, CAST(N'2024-06-10' AS Date), N'New', 7, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (4, 1, CAST(N'2024-01-12' AS Date), N'Damaged', 2, 0, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (5, 4, CAST(N'2024-02-01' AS Date), N'New', 6, 1, NULL)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (1, NULL, N'Dao Hai Nam', N'0948704134', N'DN', N'ndao9983@gmail.com', CAST(N'2024-06-11T08:43:04.8250000' AS DateTime2), N'Pending', NULL, CAST(0.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-12T00:00:00.0000000' AS DateTime2), N'VNPay', CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (2, 2, N'Nam dep trai vcl', N'0948704134', N'Viet Nam', N'ndao9983@gmail.com', CAST(N'2024-06-11T21:56:06.9000000' AS DateTime2), N'Pending', NULL, CAST(0.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), N'Pay after delivery', CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (3, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T07:45:08.1540000' AS DateTime2), N'Pending', NULL, CAST(571500.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-14T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-14T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (4, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T07:58:38.1670000' AS DateTime2), N'Delivered', NULL, CAST(1446770.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (5, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T08:00:12.5840000' AS DateTime2), N'Delivered', NULL, CAST(1446770.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (6, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T12:57:10.0700000' AS DateTime2), N'Delivered', NULL, CAST(574425.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (7, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T13:23:46.0240000' AS DateTime2), N'Cancelled', NULL, CAST(1060425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (8, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:08:30.6430000' AS DateTime2), N'Cancelled', NULL, CAST(1222425.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (9, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:10:11.8990000' AS DateTime2), N'Shipping', NULL, CAST(1546425.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-21T13:11:55.8370000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (10, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:12:01.0020000' AS DateTime2), N'Pending', NULL, CAST(1546425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (11, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:13:06.2200000' AS DateTime2), N'Pending', NULL, CAST(1546425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (12, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), N'Cancelled', NULL, CAST(1546425.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), N'vnpay', CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (13, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:23:23.7700000' AS DateTime2), N'Delivered', NULL, CAST(1384425.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-16T15:25:07.1000000' AS DateTime2), N'vnpay', CAST(N'2024-06-16T15:29:42.9520000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (14, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:31:55.9780000' AS DateTime2), N'Delivered', NULL, CAST(1060425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', CAST(N'2024-06-16T15:34:37.3820000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (15, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T17:21:54.2580000' AS DateTime2), N'Pending', NULL, CAST(1060425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (16, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T17:29:11.7830000' AS DateTime2), N'Cancelled', 8, CAST(954382.50 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, N'Bom hàng')
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (17, NULL, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-17T21:12:33.4070000' AS DateTime2), N'Pending', 8, CAST(808582.50 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (18, 10, N'Phuong', N'0909123123', N'FPT', N'thp13062018@gmail.com', CAST(N'2024-06-17T21:15:13.3700000' AS DateTime2), N'Pending', NULL, CAST(898425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (19, 1, N'Phuong', N'0909123123', N'FPT', N'max1@gmail.com', CAST(N'2024-06-19T00:18:16.4030000' AS DateTime2), N'Pending', NULL, CAST(898425.00 AS Numeric(38, 2)), 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (20, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-22T01:32:45.1880000' AS DateTime2), N'Delivered', NULL, CAST(761635.00 AS Numeric(38, 2)), 1, CAST(N'2024-06-22T01:40:47.7240000' AS DateTime2), N'COD', CAST(N'2024-06-22T01:40:47.7240000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (21, 7, N'Nam', N'0909678678', N'Bien Hoa', N'max6@gmail.com', CAST(N'2024-07-01T16:19:10.4340000' AS DateTime2), N'Pending', NULL, CAST(134942130.11 AS Numeric(38, 2)), 1, CAST(N'2024-07-01T16:56:10.8880000' AS DateTime2), N'VNPay', NULL, NULL, NULL)
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
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (43, 21, 1, 3, CAST(35409601.41 AS Numeric(38, 2)))
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (44, 21, 4, 1, CAST(28713325.88 AS Numeric(38, 2)))
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (1, N'Vong VIP', N'Vong sieu vip', 2, CAST(29500000.00 AS Numeric(38, 2)), CAST(8000.00 AS Numeric(38, 2)), CAST(35409601.41 AS Numeric(38, 2)), N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (2, N'Hoa tai ruby 192', N'Sieu cap', 1, CAST(44120500.00 AS Numeric(38, 2)), CAST(12000.00 AS Numeric(38, 2)), CAST(48987075.63 AS Numeric(38, 2)), N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (3, N'Nhan tri gia 0 dong', N'Nhan vo gia', 2, CAST(100000.00 AS Numeric(38, 2)), CAST(5000.00 AS Numeric(38, 2)), CAST(136499.99 AS Numeric(38, 2)), N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (4, N'Nhan kim cuong siep cap vip pro', N'Nhan dep', 1, CAST(26320500.00 AS Numeric(38, 2)), CAST(22000.00 AS Numeric(38, 2)), CAST(28713325.88 AS Numeric(38, 2)), N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (5, N'Nhan kim cuong xin', N'Nhan xau', 3, CAST(77000.00 AS Numeric(38, 2)), CAST(20000.00 AS Numeric(38, 2)), CAST(0.00 AS Numeric(38, 2)), N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (6, N'Vong kim cuong xan lan', N'Vong sang choi', 4, CAST(36523000.00 AS Numeric(38, 2)), CAST(10000.00 AS Numeric(38, 2)), CAST(40551630.52 AS Numeric(38, 2)), N'InStock')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDiamond] ON 

INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (1, 1, 2, N'Main', 3)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (2, 2, 3, N'Side', 5)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (8, 4, 4, N'Side', 2)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (9, 4, 2, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (10, 6, 5, N'Main', 1)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (11, 6, 2, N'Side', 3)
SET IDENTITY_INSERT [dbo].[ProductDiamond] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPrice] ON 

INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (3, 3, CAST(0.00 AS Numeric(38, 2)), 0, CAST(0.00 AS Numeric(38, 2)), NULL)
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (4, 1, CAST(127000.00 AS Numeric(38, 2)), 1.2, CAST(0.00 AS Numeric(38, 2)), CAST(N'2024-06-05T23:56:59.6540000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (6, 3, CAST(110000.00 AS Numeric(38, 2)), 1.2, CAST(132000.00 AS Numeric(38, 2)), CAST(N'2024-06-06T00:16:36.2980000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (8, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136500.00 AS Numeric(38, 2)), CAST(N'2024-06-06T00:22:50.4130000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (9, 1, CAST(135000.00 AS Numeric(38, 2)), 1.2, CAST(162000.00 AS Numeric(38, 2)), CAST(N'2024-06-06T13:14:19.1360000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (13, 4, CAST(320000.00 AS Numeric(38, 2)), 1.09, CAST(348800.00 AS Numeric(38, 2)), CAST(N'2024-06-06T13:50:57.6690000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (15, 4, CAST(317000.00 AS Numeric(38, 2)), 1.09, CAST(345530.00 AS Numeric(38, 2)), CAST(N'2024-06-06T18:43:40.6870000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (16, 2, CAST(356000.00 AS Numeric(38, 2)), 1.11, CAST(395160.00 AS Numeric(38, 2)), CAST(N'2024-06-10T13:42:46.1280000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (17, 6, CAST(255000.00 AS Numeric(38, 2)), 1.11, CAST(283050.00 AS Numeric(38, 2)), CAST(N'2024-06-11T14:19:09.1790000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (19, 2, CAST(433000.00 AS Numeric(38, 2)), 1.11, CAST(480630.00 AS Numeric(38, 2)), CAST(N'2024-06-11T14:20:43.6050000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (20, 2, CAST(517500.00 AS Numeric(38, 2)), 1.11, CAST(574425.00 AS Numeric(38, 2)), CAST(N'2024-06-11T14:25:30.0680000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (21, 4, CAST(401500.00 AS Numeric(38, 2)), 1.09, CAST(437635.00 AS Numeric(38, 2)), CAST(N'2024-06-11T14:25:30.0800000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (22, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409601.41 AS Numeric(38, 2)), CAST(N'2024-07-01T16:03:32.9730000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (23, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987075.63 AS Numeric(38, 2)), CAST(N'2024-07-01T16:03:33.0130000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (24, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.99 AS Numeric(38, 2)), CAST(N'2024-07-01T16:03:33.0310000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (25, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713325.88 AS Numeric(38, 2)), CAST(N'2024-07-01T16:03:33.0440000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (26, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551630.52 AS Numeric(38, 2)), CAST(N'2024-07-01T16:03:33.0710000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (27, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409601.41 AS Numeric(38, 2)), CAST(N'2024-07-01T16:07:29.0680000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (28, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987075.63 AS Numeric(38, 2)), CAST(N'2024-07-01T16:07:29.0960000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (29, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.99 AS Numeric(38, 2)), CAST(N'2024-07-01T16:07:29.1090000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (30, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713325.88 AS Numeric(38, 2)), CAST(N'2024-07-01T16:07:29.1230000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (31, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551630.52 AS Numeric(38, 2)), CAST(N'2024-07-01T16:07:29.1480000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (32, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409601.41 AS Numeric(38, 2)), CAST(N'2024-07-01T16:12:31.1690000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (33, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987075.63 AS Numeric(38, 2)), CAST(N'2024-07-01T16:12:31.1950000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (34, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.99 AS Numeric(38, 2)), CAST(N'2024-07-01T16:12:31.2070000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (35, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713325.88 AS Numeric(38, 2)), CAST(N'2024-07-01T16:12:31.2240000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (36, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551630.52 AS Numeric(38, 2)), CAST(N'2024-07-01T16:12:31.2450000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (37, 1, CAST(29508000.00 AS Numeric(38, 2)), 1.2, CAST(35409601.41 AS Numeric(38, 2)), CAST(N'2024-07-01T16:15:33.6730000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (38, 2, CAST(44132500.00 AS Numeric(38, 2)), 1.11, CAST(48987075.63 AS Numeric(38, 2)), CAST(N'2024-07-01T16:15:33.7120000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (39, 3, CAST(105000.00 AS Numeric(38, 2)), 1.3, CAST(136499.99 AS Numeric(38, 2)), CAST(N'2024-07-01T16:15:33.7280000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (40, 4, CAST(26342500.00 AS Numeric(38, 2)), 1.09, CAST(28713325.88 AS Numeric(38, 2)), CAST(N'2024-07-01T16:15:33.7420000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (41, 6, CAST(36533000.00 AS Numeric(38, 2)), 1.11, CAST(40551630.52 AS Numeric(38, 2)), CAST(N'2024-07-01T16:15:33.7700000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ProductPrice] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPromotion] ON 

INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (3, 2, 1, 0.08, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (4, 2, 2, 0.08, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (5, 2, 3, 0.2, NULL, NULL, 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (6, 1, 1, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (7, 1, 2, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (8, 1, 3, 0.05, CAST(N'2003-01-01' AS Date), CAST(N'2003-02-01' AS Date), 0)
INSERT [dbo].[ProductPromotion] ([product_promotionid], [promotionid], [productid], [discount], [start_date], [end_date], [is_active]) VALUES (9, 2, 4, 0.05, CAST(N'2004-02-29' AS Date), CAST(N'2004-03-01' AS Date), 0)
SET IDENTITY_INSERT [dbo].[ProductPromotion] OFF
GO
SET IDENTITY_INSERT [dbo].[Promotion] ON 

INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (1, N'Giam gia 22/1', N'Sinh nhat thang lol nao do', CAST(N'2003-01-01' AS Date), CAST(N'2003-02-02' AS Date), 0)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (2, N'Le 30/2', N'Ngay ko ton tai', CAST(N'2004-02-29' AS Date), CAST(N'2004-03-02' AS Date), 1)
INSERT [dbo].[Promotion] ([promotionid], [promotion_name], [description], [start_date], [end_date], [is_active]) VALUES (3, N'Quoc te nguoi lon', N'Tre con tang 15%', CAST(N'2019-08-12' AS Date), CAST(N'2020-06-03' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Promotion] OFF
GO
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (2, N'Manager')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (3, N'Sales Staff')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (4, N'Delivery Staff')
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (5, N'Member')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (1, N'Nam', N'$2a$10$tKaCxFL5oRhFCJhSrWBapedYm07cbSkIXLdfem6OOabPt98qE1Ekm', N'0909123123', 4, CAST(N'2003-01-01' AS Date), N'max1@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23T13:55:57.0450000' AS DateTime2), CAST(N'2024-05-28T07:29:41.2030000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (2, N'kieto', N'$2a$10$NeuAyxXPDCKRX0R6kQwmROwjF4KCgf9Oi.BH2g9f6WpOZU//XjFcK', N'090912312a', 4, CAST(N'2003-01-01' AS Date), N'max2@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23T13:56:12.8390000' AS DateTime2), CAST(N'2024-05-28T09:10:01.5000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (4, N'max', N'$2a$10$6v4v3uODIFudtGWrso4DuOgUw4i7NVvdUdTxkZlutiighGY3C.Ffm', N'090912313', 3, CAST(N'2002-01-01' AS Date), N'max3@gmail.com', N'male', 6202, N'active', N'system account', CAST(N'2024-05-23T22:57:02.7950000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (5, N'Adu', N'$2a$10$3txjHL3scN6cJMyz/m.Lxe80KZIZcdjUeR06pU3aZ/O2P/koh2L86', N'0909123123', 5, CAST(N'2003-01-01' AS Date), N'max5@gmail.com', N'unknown', 0, N'Active', N'system account', CAST(N'2024-05-23T23:38:15.2920000' AS DateTime2), CAST(N'2024-05-23T23:39:47.7900000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (6, N'max', N'$2a$10$iKkDL1oE5LxA80MjIsDN5OL.BjfAuVHQmC5NQmJYS07lRBjZjjWwe', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max4@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-25T00:03:49.5560000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (7, N'max', N'$2a$10$SmEY8J2PIK8voJPqnd3fx.0.fmSlFgrtb9Owf.gQFnJNxo4I.2WR.', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max6@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-28T07:06:01.1970000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (8, N'max', N'$2a$10$1K15NVTUeEcOy67N0otbQuvq3c7tuQFPu7Z4kKiET61B3UfC0AU4.', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max7@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-04T11:28:38.8890000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (9, N'max', N'$2a$10$4pDDdH41RPeEaANERxKp6e8CUDXMM/1B6DQRtotry/eWLnYRB6xL6', N'0909123123', 1, CAST(N'2003-10-01' AS Date), N'max8@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-11T13:17:38.7260000' AS DateTime2), CAST(N'2024-06-17T13:48:33.9140000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (10, N'max', N'$2a$10$vbpn29z8j0y3.mqBlazQSeizLkmslEvF.a1poYuxmQrNOLMhVPq0W', N'0909123786', 2, CAST(N'2003-10-01' AS Date), N'thp13062018@gmail.com', N'male', 6106, N'active', N'system account', CAST(N'2024-06-13T12:33:15.9530000' AS DateTime2), CAST(N'2024-06-17T13:57:46.5040000' AS DateTime2), N'e13c4185-78c2-428f-861a-0bfa80e4f41b43a76ba2-5da5-4f23-a1cf-3e7a0d6d1f9f', CAST(N'2024-06-13T12:43:22.3500000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (1, 4, N'Voucher super mới', 60, NULL, CAST(N'2024-03-15' AS Date), 0.1, 2, N'Expired')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (2, 5, N'Voucher super mới', 60, NULL, CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (3, 4, N'Voucher mới', 30, NULL, CAST(N'2024-08-15' AS Date), 0.05, 1, N'Used')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (4, NULL, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (6, NULL, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (7, 4, N'Voucher super mới', 60, CAST(N'2024-05-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
INSERT [dbo].[Voucher] ([voucherid], [memberid], [description], [discount_length], [start_date], [end_date], [discount], [voucher_typeid], [status]) VALUES (8, 10, N'Voucher super mới', 60, CAST(N'2024-06-16' AS Date), CAST(N'2024-08-15' AS Date), 0.1, 2, N'Active')
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[VoucherType] ON 

INSERT [dbo].[VoucherType] ([voucher_typeid], [description], [discount], [discount_length], [point_needed], [is_active]) VALUES (1, N'Voucher mới', 0.05, 30, 1000, 0)
INSERT [dbo].[VoucherType] ([voucher_typeid], [description], [discount], [discount_length], [point_needed], [is_active]) VALUES (2, N'Voucher super mới', 0.1, 60, 3000, 1)
SET IDENTITY_INSERT [dbo].[VoucherType] OFF
GO
SET IDENTITY_INSERT [dbo].[Warranty] ON 

INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (1, 1, N'1 month', CAST(N'2003-02-10' AS Date), CAST(N'2003-03-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (2, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (3, 1, N'5 months', CAST(N'2024-02-10' AS Date), CAST(N'2024-09-10' AS Date), N'Is_active')
INSERT [dbo].[Warranty] ([warrantyid], [order_detailid], [warranty_length], [start_date], [end_date], [status]) VALUES (5, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
SET IDENTITY_INSERT [dbo].[Warranty] OFF
GO
/****** Object:  Index [UQ__Certific__F8234849222324D1]    Script Date: 01/07/2024 5:06:13 CH ******/
ALTER TABLE [dbo].[Certificate] ADD UNIQUE NONCLUSTERED 
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
ALTER TABLE [dbo].[CollectionProducts]  WITH CHECK ADD  CONSTRAINT [FK__Collectio__produ__1E6F845E] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CollectionProducts] CHECK CONSTRAINT [FK__Collectio__produ__1E6F845E]
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

