USE [master]
GO
/****** Object:  Database [DiamondStoreV4]    Script Date: 22/06/2024 1:11:25 CH ******/
CREATE DATABASE [DiamondStoreV4]

USE [DiamondStoreV4]
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Diamond]    Script Date: 22/06/2024 1:11:25 CH ******/
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
	[base_price] [real] NULL,
 CONSTRAINT [PK__Diamond__F8234848FECF0288] PRIMARY KEY CLUSTERED 
(
	[diamondid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiamondMount]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Image]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Inventory]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Order]    Script Date: 22/06/2024 1:11:25 CH ******/
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
	[payment_amount] [real] NULL,
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
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 22/06/2024 1:11:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[order_detailid] [int] IDENTITY(1,1) NOT NULL,
	[orderid] [int] NOT NULL,
	[productid] [int] NULL,
	[quantity] [int] NULL,
	[price] [real] NULL,
 CONSTRAINT [PK__OrderDet__1CCC5D4D4DBC274E] PRIMARY KEY CLUSTERED 
(
	[order_detailid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 22/06/2024 1:11:25 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[productid] [int] IDENTITY(1,1) NOT NULL,
	[productname] [varchar](255) NULL,
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
/****** Object:  Table [dbo].[ProductDiamond]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[ProductPrice]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[ProductPromotion]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Promotion]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Role]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Voucher]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[VoucherType]    Script Date: 22/06/2024 1:11:25 CH ******/
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
/****** Object:  Table [dbo].[Warranty]    Script Date: 22/06/2024 1:11:25 CH ******/
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
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (1, N'Ad', 1, 1, CAST(N'2005-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([commentid], [content], [userid], [productid], [create_date]) VALUES (2, N'Err', 2, 3, CAST(N'2004-02-05T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Diamond] ON 

INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (1, N'Ngoc Luc Bao', N'Natural', N'Round', 3.7, N'V', N'SS', N'A', 100000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (2, N'Khang', N'Lab-Created', N'Square', 1.2, N'SL', N'BB', N'E', 9000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (3, N'Ruby', N'Natural', N'Round', 3.8, N'S', N'RT', N'C', 77000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (4, N'SuperShine', N'Natural', NULL, 3.8, N'G', N'I1', N'Good', 125000)
INSERT [dbo].[Diamond] ([diamondid], [diamond_name], [origin], [shape], [carat_weight], [color], [clarity], [cut], [base_price]) VALUES (5, N'Emerald', N'Natural', N'Round', 3.2, N'D', N'RT', N'C', 95000)
SET IDENTITY_INSERT [dbo].[Diamond] OFF
GO
SET IDENTITY_INSERT [dbo].[DiamondMount] ON 

INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (1, N'Vong kim co', 5.1, N'vong co', N'gold', 120500)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (2, N'Pokemon Watch', 68, N'watch', N'garbage', 100000)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (3, N'Vong', 4.7, N'vong co nam', N'woods', 77000)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (4, N'Vong kim co', 5.1, N'vong co', N'gold', 123000)
INSERT [dbo].[DiamondMount] ([mountid], [mount_name], [size], [type], [material], [base_price]) VALUES (5, N'Lac tay sieu lac', 7.1, N'lac tay', N'silver', 50000)
SET IDENTITY_INSERT [dbo].[DiamondMount] OFF
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (1, 1, CAST(N'2024-06-10' AS Date), N'New', 11, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (2, 2, CAST(N'2024-06-10' AS Date), N'New', 7, 1, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (4, 1, CAST(N'2024-01-12' AS Date), N'Damaged', 2, 0, NULL)
INSERT [dbo].[Inventory] ([locationid], [productid], [purchase_date], [condition], [quantity], [available], [update_date]) VALUES (5, 4, CAST(N'2024-02-01' AS Date), N'New', 7, 0, NULL)
SET IDENTITY_INSERT [dbo].[Inventory] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (1, NULL, N'Dao Hai Nam', N'0948704134', N'DN', N'ndao9983@gmail.com', CAST(N'2024-06-11T08:43:04.8250000' AS DateTime2), N'Pending', NULL, 0, 1, CAST(N'2024-06-12T00:00:00.0000000' AS DateTime2), N'VNPay', CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (2, 2, N'Nam dep trai vcl', N'0948704134', N'Viet Nam', N'ndao9983@gmail.com', CAST(N'2024-06-11T21:56:06.9000000' AS DateTime2), N'Pending', NULL, 0, 1, CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), N'Pay after delivery', CAST(N'2024-06-11T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (3, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T07:45:08.1540000' AS DateTime2), N'Pending', NULL, 571500, 1, CAST(N'2024-06-14T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-14T00:00:00.0000000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (4, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T07:58:38.1670000' AS DateTime2), N'Delivered', NULL, 1446770, 0, NULL, N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (5, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T08:00:12.5840000' AS DateTime2), N'Delivered', NULL, 1446770, 0, NULL, N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (6, 4, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T12:57:10.0700000' AS DateTime2), N'Delivered', NULL, 574425, 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (7, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T13:23:46.0240000' AS DateTime2), N'Cancelled', NULL, 1060425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (8, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:08:30.6430000' AS DateTime2), N'Cancelled', NULL, 1222425, 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (9, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:10:11.8990000' AS DateTime2), N'Shipping', NULL, 1546425, 1, CAST(N'2024-06-15T00:00:00.0000000' AS DateTime2), N'vnpay', CAST(N'2024-06-21T13:11:55.8370000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (10, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:12:01.0020000' AS DateTime2), N'Pending', NULL, 1546425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (11, NULL, N'Kiet', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-14T23:13:06.2200000' AS DateTime2), N'Pending', NULL, 1546425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (12, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), N'Cancelled', NULL, 1546425, 1, CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), N'vnpay', CAST(N'2024-06-16T15:19:28.8580000' AS DateTime2), NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (13, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:23:23.7700000' AS DateTime2), N'Delivered', NULL, 1384425, 1, CAST(N'2024-06-16T15:25:07.1000000' AS DateTime2), N'vnpay', CAST(N'2024-06-16T15:29:42.9520000' AS DateTime2), 1, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (14, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T15:31:55.9780000' AS DateTime2), N'Delivered', NULL, 1060425, 0, NULL, N'vnpay', CAST(N'2024-06-16T15:34:37.3820000' AS DateTime2), 2, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (15, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T17:21:54.2580000' AS DateTime2), N'Pending', NULL, 1060425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (16, 10, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-16T17:29:11.7830000' AS DateTime2), N'Cancelled', 8, 954382.5, 0, NULL, N'vnpay', NULL, NULL, N'Bom hàng')
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (17, NULL, N'Phuong', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-17T21:12:33.4070000' AS DateTime2), N'Pending', 8, 808582.5, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (18, 10, N'Phuong', N'0909123123', N'FPT', N'thp13062018@gmail.com', CAST(N'2024-06-17T21:15:13.3700000' AS DateTime2), N'Pending', NULL, 898425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (19, 1, N'Phuong', N'0909123123', N'FPT', N'max1@gmail.com', CAST(N'2024-06-19T00:18:16.4030000' AS DateTime2), N'Pending', NULL, 898425, 0, NULL, N'vnpay', NULL, NULL, NULL)
INSERT [dbo].[Order] ([orderid], [customerid], [customer_name], [phone_number], [address], [email], [order_date], [status], [voucherid], [payment_amount], [payment_status], [payment_date], [payment_method], [delivery_date], [delivery_staffid], [cancel_reason]) VALUES (20, NULL, N'Nam', N'0909123123', N'FPT', N'kieto123@gmail.com', CAST(N'2024-06-22T01:32:45.1880000' AS DateTime2), N'Delivered', NULL, 761635, 1, CAST(N'2024-06-22T01:40:47.7240000' AS DateTime2), N'COD', CAST(N'2024-06-22T01:40:47.7240000' AS DateTime2), 2, NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (1, 1, 2, 2, 790320)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (2, 2, 3, 2, 273000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (5, 3, 1, 1, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (6, 3, 3, 3, 136500)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (7, 4, 1, 1, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (8, 4, 3, 3, 136500)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (9, 4, 4, 2, 437635)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (10, 5, 1, 1, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (11, 5, 3, 3, 136500)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (12, 5, 4, 2, 437635)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (13, 6, 1, 0, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (14, 6, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (15, 7, 1, 3, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (16, 7, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (17, 8, 1, 4, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (18, 8, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (19, 9, 1, 6, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (20, 9, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (21, 10, 1, 6, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (22, 10, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (23, 11, 1, 6, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (24, 11, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (25, 12, 1, 6, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (26, 12, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (27, 13, 1, 5, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (28, 13, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (29, 14, 1, 3, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (30, 14, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (31, 15, 1, 3, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (32, 15, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (33, 16, 1, 3, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (34, 16, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (35, 17, 1, 2, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (36, 17, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (37, 18, 1, 2, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (38, 18, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (39, 19, 1, 2, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (40, 19, 2, 1, 574425)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (41, 20, 1, 2, 162000)
INSERT [dbo].[OrderDetail] ([order_detailid], [orderid], [productid], [quantity], [price]) VALUES (42, 20, 4, 1, 437635)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (1, N'Vong VIP', N'Vong sieu vip', 2, 127000, 8000, 162000, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (2, N'Hoa tai ruby 192', N'Sieu cap', 1, 505500, 12000, 574425, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (3, N'Nhan tri gia 0 dong', N'Nhan vo gia', 2, 100000, 5000, 136500, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (4, N'Nhan kim cuong siep cap vip pro', N'Nhan dep', 1, 379500, 22000, 437635, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (5, N'Nhan kim cuong xin', N'Nhan xau', 3, 77000, 20000, 0, N'InStock')
INSERT [dbo].[Product] ([productid], [productname], [description], [mountid], [components_price], [labor_fee], [price], [status]) VALUES (6, N'Vong kim cuong xan lan', N'Vong sang choi', 4, 245000, 10000, 283050, N'InStock')
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

INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (3, 3, 0, 0, 0, NULL)
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (4, 1, 127000, 1.2, 0, CAST(N'2024-06-05T23:56:59.6540000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (6, 3, 110000, 1.2, 132000, CAST(N'2024-06-06T00:16:36.2980000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (8, 3, 105000, 1.3, 136500, CAST(N'2024-06-06T00:22:50.4130000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (9, 1, 135000, 1.2, 162000, CAST(N'2024-06-06T13:14:19.1360000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (13, 4, 320000, 1.09, 348800, CAST(N'2024-06-06T13:50:57.6690000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (15, 4, 317000, 1.09, 345530, CAST(N'2024-06-06T18:43:40.6870000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (16, 2, 356000, 1.11, 395160, CAST(N'2024-06-10T13:42:46.1280000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (17, 6, 255000, 1.11, 283050, CAST(N'2024-06-11T14:19:09.1790000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (19, 2, 433000, 1.11, 480630, CAST(N'2024-06-11T14:20:43.6050000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (20, 2, 517500, 1.11, 574425, CAST(N'2024-06-11T14:25:30.0680000' AS DateTime2))
INSERT [dbo].[ProductPrice] ([product_priceid], [productid], [cost_price], [markup_rate], [selling_price], [update_date]) VALUES (21, 4, 401500, 1.09, 437635, CAST(N'2024-06-11T14:25:30.0800000' AS DateTime2))
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
INSERT [dbo].[User] ([userid], [full_name], [password], [phone_number], [roleid], [dob], [email], [gender], [point_accumulation], [status], [type_login], [create_at], [update_at], [token_password], [token_create_date]) VALUES (8, N'max', N'$2a$10$.Gm6LZmKsFLGDphDTz0K7.wGHFKglAgtwxMsNJYuRarCXsgfa7Qku', N'0909123123', 5, CAST(N'2004-01-01' AS Date), N'max7@gmail.com', N'male', 0, N'active', N'system account', CAST(N'2024-06-04T11:28:38.8890000' AS DateTime2), NULL, NULL, NULL)
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
/****** Object:  Index [UQ__Certific__F8234849222324D1]    Script Date: 22/06/2024 1:11:25 CH ******/
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

