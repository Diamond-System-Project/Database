USE [master]
GO
/****** Object:  Database [DiamondStoreV3]    Script Date: 10/06/2024 9:44:22 CH ******/
CREATE DATABASE [DiamondStoreV4]
 
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
	[issued_date] [datetime2](6) NULL,
 CONSTRAINT [PK__Certific__A15DB286BBDC6154] PRIMARY KEY CLUSTERED 
(
	[certificateid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[Diamond]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diamond](
	[diamondid] [int] IDENTITY(1,1) NOT NULL,
	[diamond_name] [varchar](255) NULL,
	[image_url] [varchar](255) NULL,
	[origin] [varchar](255) NULL,
	[shape] [varchar](255) NULL,
	[carat_weight] [real] NULL,
	[color] [varchar](255) NULL,
	[clarity] [varchar](255) NULL,
	[cut] [varchar](255) NULL,
	[base_price] [real] NULL,
 CONSTRAINT [PK__Diamond__F8234848FECF0288] PRIMARY KEY CLUSTERED 
(
	[diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiamondMount]    Script Date: 10/06/2024 9:44:22 CH ******/
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
	[base_price] [real] NULL,
 CONSTRAINT [PK__DiamondM__9D142254AE45D6F2] PRIMARY KEY CLUSTERED 
(
	[mountid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[locationid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NOT NULL,
	[purchase_date] [datetime2](6) NULL,
	[condition] [nvarchar](50) NULL,
	[quantity] [int] NULL,
	[available] [bit] NULL,
	[update_date] [datetime2](6) NULL,
 CONSTRAINT [PK__Inventor__306F78A6DB8A7196] PRIMARY KEY CLUSTERED 
(
	[locationid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/06/2024 9:44:22 CH ******/
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
	[order_date] [datetime2](6) NULL,
	[status] [varchar](255) NULL,
	[voucherid] [int] NULL,
	[payment_amount] [real] NULL,
	[payment_date] [datetime2](6) NULL,
	[payment_method] [varchar](255) NULL,
	[delivery_date] [datetime2](6) NULL,
	[delivery_staffid] [int] NULL,
 CONSTRAINT [PK__Order__080E37753E19CA7C] PRIMARY KEY CLUSTERED 
(
	[orderid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_detailid] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NULL,
	[productid] [int] NULL,
	[quantity] [int] NULL,
	[total_price] [real] NULL,
 CONSTRAINT [PK__OrderDet__1CCC5D4D4DBC274E] PRIMARY KEY CLUSTERED 
(
	[order_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [varchar](255) NULL,
	[image_url] [varchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[mountid] [int] NULL,
	[components_price] [real] NULL,
	[labor_fee] [real] NULL,
	[price] [real] NULL,
	[status] [varchar](255) NULL,
 CONSTRAINT [PK__Product__2D172D32529B19D5] PRIMARY KEY CLUSTERED 
(
	[productid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiamond]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPrice](
	[product_priceid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
	[cost_price] [real] NULL,
	[markup_rate] [real] NULL,
	[selling_price] [real] NULL,
	[update_date] [datetime2](6) NULL,
 CONSTRAINT [PK__ProductP__5578FD50DEFF72B5] PRIMARY KEY CLUSTERED 
(
	[product_priceid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPromotion]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 10/06/2024 9:44:22 CH ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[voucherid] [int] IDENTITY(1,1) NOT NULL,
	[memberid] [int] NULL,
	[description] [nvarchar](100) NULL,
	[discount_length] [int] NULL,
	[start_date] [datetime2](6) NULL,
	[end_date] [datetime2](6) NULL,
	[discount] [float] NULL,
	[voucher_typeid] [int] NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK__Voucher__F5328DD131F7EDF5] PRIMARY KEY CLUSTERED 
(
	[voucherid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoucherType]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoucherType](
	[voucher_typeid] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](100) NULL,
	[discount] [float] NULL,
	[discount_length] [int] NULL,
	[point_needed] [int] NULL,
 CONSTRAINT [PK__VoucherT__3D4E18BE149F57C8] PRIMARY KEY CLUSTERED 
(
	[voucher_typeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warranty]    Script Date: 10/06/2024 9:44:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warranty](
	[warrantyid] [int] IDENTITY(1,1) NOT NULL,
	[productid] [int] NULL,
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
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (1, N'Ad', 1, 1, CAST(N'2005-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (2, N'Err', 2, 3, CAST(N'2004-02-05T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Diamond] ON 

INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [image_url], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (1, N'Ngoc Luc Bao', NULL, N'Natural', N'Round', 3.7, N'V', N'SS', N'A', 100000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [image_url], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (2, N'Khang', NULL, N'Lab-Created', N'Square', 1.2, N'SL', N'BB', N'E', 9000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [image_url], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (3, N'Ruby', N'null', N'Natural', N'Round', 3.8, N'S', N'RT', N'C', 77000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [image_url], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (4, N'SuperShine', N'null', N'Natural', NULL, 3.8, N'G', N'I1', N'Good', 125000)
SET IDENTITY_INSERT [dbo].[Diamond] OFF
GO
SET IDENTITY_INSERT [dbo].[DiamondMount] ON 

INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (1, N'Ring Aloha', 4.6, N'ring', N'gold', 36000)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (2, N'Pokemon Watch', 68, N'watch', N'garbage', 100000)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (3, N'Vong', 4.7, N'vong co nam', N'woods', 77000)
SET IDENTITY_INSERT [dbo].[DiamondMount] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productid], [productname], [image_url], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (1, N'Vong VIP', NULL, N'Vong sieu vip', 2, 127000, 8000, 162000, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [image_url], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (2, N'Hoa tai ruby 192', NULL, N'Sieu cap', 1, 344000, 12000, 395160, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [image_url], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (3, N'Nhan tri gia 0 dong', NULL, N'Nhan vo gia', 2, 100000, 5000, 136500, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [image_url], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (4, N'Nhan kim cuong siep cap vip pro', NULL, N'Nhan dep', 1, 295000, 22000, 345530, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [image_url], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (5, N'Nhan kim cuong xin', NULL, N'Nhan xau', 3, 77000, 20000, 0, N'InStock')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductDiamond] ON 

INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (1, 1, 2, N'Main', 3)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (2, 2, 3, N'Side', 4)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (8, 4, 4, N'Side', 2)
INSERT [dbo].[ProductDiamond] ([product_diamondid], [productid], [diamondid], [type], [quantity]) VALUES (9, 4, 2, N'Main', 1)
SET IDENTITY_INSERT [dbo].[ProductDiamond] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductPrice] ON 

INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (3, 3, 0, 0, 0, NULL)
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (4, 1, 127000, 1.2, 0, CAST(N'2024-06-05T23:56:59.6540000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (6, 3, 110000, 1.2, 132000, CAST(N'2024-06-06T00:16:36.2980000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (8, 3, 105000, 1.3, 136500, CAST(N'2024-06-06T00:22:50.4130000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (9, 1, 135000, 1.2, 162000, CAST(N'2024-06-06T13:14:19.1360000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (13, 4, 320000, 1.09, 348800, CAST(N'2024-06-06T13:50:57.6690000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (15, 4, 317000, 1.09, 345530, CAST(N'2024-06-06T18:43:40.6870000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (16, 2, 356000, 1.11, 395160, CAST(N'2024-06-10T13:42:46.1280000' AS DateTime2))
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
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (1, NULL)
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (2, NULL)
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (3, NULL)
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (4, NULL)
INSERT [dbo].[Role] ([roleid], [role_name]) VALUES (5, N'Member')
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (1, N'Nam', N'$2a$10$tKaCxFL5oRhFCJhSrWBapedYm07cbSkIXLdfem6OOabPt98qE1Ekm', N'0909123123', 5, CAST(N'2003-01-01' AS Date), N'max1@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23T13:55:57.0450000' AS DateTime2), CAST(N'2024-05-28T07:29:41.2030000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (2, N'kieto', N'$2a$10$NeuAyxXPDCKRX0R6kQwmROwjF4KCgf9Oi.BH2g9f6WpOZU//XjFcK', N'090912312a', 5, CAST(N'2003-01-01' AS Date), N'max2@gmail.com', N'unknown', 0, N'active', N'system account', CAST(N'2024-05-23T13:56:12.8390000' AS DateTime2), CAST(N'2024-05-28T09:10:01.5000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (4, N'max', N'$2a$10$6v4v3uODIFudtGWrso4DuOgUw4i7NVvdUdTxkZlutiighGY3C.Ffm', N'090912313', 5, CAST(N'2002-01-01' AS Date), N'max3@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-23T22:57:02.7950000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (5, N'Adu', N'$2a$10$3txjHL3scN6cJMyz/m.Lxe80KZIZcdjUeR06pU3aZ/O2P/koh2L86', N'0909123123', 5, CAST(N'2003-01-01' AS Date), N'max5@gmail.com', N'unknown', 0, N'banned', N'system account', CAST(N'2024-05-23T23:38:15.2920000' AS DateTime2), CAST(N'2024-05-23T23:39:47.7900000' AS DateTime2), NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (6, N'max', N'$2a$10$iKkDL1oE5LxA80MjIsDN5OL.BjfAuVHQmC5NQmJYS07lRBjZjjWwe', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max4@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-25T00:03:49.5560000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (7, N'max', N'$2a$10$SmEY8J2PIK8voJPqnd3fx.0.fmSlFgrtb9Owf.gQFnJNxo4I.2WR.', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max6@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-05-28T07:06:01.1970000' AS DateTime2), NULL, NULL, NULL)
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (8, N'max', N'$2a$10$.Gm6LZmKsFLGDphDTz0K7.wGHFKglAgtwxMsNJYuRarCXsgfa7Qku', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max7@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-04T11:28:38.8890000' AS DateTime2), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Warranty] ON 

INSERT [dbo].[Warranty] ([warrantyid], [productid], [warranty_length], [start_date], [end_date], [status]) VALUES (1, 1, N'1 month', CAST(N'2003-02-10' AS Date), CAST(N'2003-03-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [productid], [warranty_length], [start_date], [end_date], [status]) VALUES (2, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
INSERT [dbo].[Warranty] ([warrantyid], [productid], [warranty_length], [start_date], [end_date], [status]) VALUES (3, 3, N'5 months', CAST(N'2024-02-10' AS Date), CAST(N'2024-09-10' AS Date), N'Is_active')
INSERT [dbo].[Warranty] ([warrantyid], [productid], [warranty_length], [start_date], [end_date], [status]) VALUES (5, 2, N'4 months', CAST(N'2003-02-10' AS Date), CAST(N'2003-07-10' AS Date), N'Inactive')
SET IDENTITY_INSERT [dbo].[Warranty] OFF
GO
ALTER TABLE [dbo].[Certificate]  WITH CHECK ADD  CONSTRAINT [FK__Certifica__diamo__5DCAEF64] FOREIGN KEY([diamondid])
REFERENCES [dbo].[Diamond] ([diamondid])
GO
ALTER TABLE [dbo].[Certificate] CHECK CONSTRAINT [FK__Certifica__diamo__5DCAEF64]
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
ALTER TABLE [dbo].[Warranty]  WITH CHECK ADD  CONSTRAINT [FK__Warranty__produc__59FA5E80] FOREIGN KEY([productid])
REFERENCES [dbo].[Product] ([productid])
GO
ALTER TABLE [dbo].[Warranty] CHECK CONSTRAINT [FK__Warranty__produc__59FA5E80]
GO
USE [master]
GO
ALTER DATABASE [DiamondStoreV3] SET  READ_WRITE 
GO
