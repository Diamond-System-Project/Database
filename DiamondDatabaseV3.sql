CREATE DATABASE DiamondStoreV3

CREATE TABLE [User] (
  [userid] int PRIMARY KEY,
  [full_name] nvarchar(100),
  [password] varchar(60),
  [phone_number] varchar(10),
  [roleid] int,
  [dob] datetime2(6),
  [email] varchar(100),
  [gender] nvarchar(20),
  [point_accumulation] int,
  [status] nvarchar(20),
  [type_login] nvarchar(10),
  [create_at] datetime2(6),
  [update_at] datetime2(6)
)
GO

CREATE TABLE [Role] (
  [roleid] int PRIMARY KEY,
  [role_name] varchar(20)
)
GO

CREATE TABLE [Diamond] (
  [diamondid] int PRIMARY KEY,
  [diamond_name] nvarchar(100),
  [image_url] varchar(max),
  [origin] nvarchar(50),
  [carat_weight] float,
  [color] varchar(20),
  [clarity] varchar(20),
  [cut] varchar(20),
  [type] nvarchar(50),
  [base_price] float
)
GO

CREATE TABLE [ProductDiamond] (
  [product_diamondid] int PRIMARY KEY,
  [productid] int,
  [diamondid] int,
  [type] nvarchar(50),
  [quantity] int
)
GO

CREATE TABLE [DiamondMount] (
  [mountid] int PRIMARY KEY,
  [mount_name] nvarchar(50),
  [size] float,
  [type] nvarchar(50),
  [material] nvarchar(50),
  [base_price] float
)
GO

CREATE TABLE [Product] (
  [productid] int PRIMARY KEY,
  [productname] nvarchar(100),
  [image_url] varchar(max),
  [description] nvarchar(255),
  [mountid] int,
  [components_price] float,
  [labor_fee] float,
  [price] float,
  [status] nvarchar(20)
)
GO

CREATE TABLE [ProductPrice] (
  [product_priceid] int PRIMARY KEY,
  [productid] int,
  [cost_price] float,
  [markup_rate] float,
  [selling_price] float,
  [update_date] datetime2(6)
)
GO

CREATE TABLE [Order] (
  [orderid] int PRIMARY KEY,
  [customerid] int,
  [customer_name] nvarchar(50),
  [phone_number] varchar(10),
  [address] nvarchar(100),
  [email] varchar(100),
  [order_date] datetime2(6),
  [status] nvarchar(20),
  [voucherid] int,
  [payment_amount] float,
  [payment_date] datetime2(6),
  [payment_method] nvarchar(50),
  [delivery_date] datetime2(6),
  [delivery_staffid] int
)
GO

CREATE TABLE [OrderDetail] (
  [order_detailid] int PRIMARY KEY,
  [orderid] int,
  [productid] int,
  [quantity] int,
  [total_price] float
)
GO

CREATE TABLE [Warranty] (
  [warrantyid] int PRIMARY KEY,
  [productid] int,
  [warranty_length] nvarchar(20),
  [start_date] datetime2(6),
  [end_date] datetime2(6),
  [status] nvarchar(20)
)
GO

CREATE TABLE [Certificate] (
  [certificateid] int PRIMARY KEY,
  [diamondid] int,
  [number] int,
  [description] nvarchar(255),
  [shape_cut] nvarchar(50),
  [measurements] varchar(50),
  [polish] nvarchar(50),
  [symmetry] nvarchar(50),
  [issuer] nvarchar(100),
  [issued_date] datetime
)
GO

CREATE TABLE [Inventory] (
  [locationid] int PRIMARY KEY,
  [componentid] int,
  [component_type] nvarchar(50),
  [purchase_date] datetime2(6),
  [condition] nvarchar(50),
  [quantity] int,
  [available] bit,
  [update_date] datetime2(6)
)
GO

CREATE TABLE [Promotion] (
  [promotionid] int PRIMARY KEY,
  [promotion_name] nvarchar(100),
  [description] nvarchar(255),
  [start_date] datetime2(6),
  [end_date] datetime2(6),
  [is_active] bit
)
GO

CREATE TABLE [ProductPromotion] (
  [product_promotionid] int PRIMARY KEY,
  [promotionid] int,
  [productid] int,
  [discount] float,
  [start_date] datetime2(6),
  [end_date] datetime2(6),
  [is_active] bit
)
GO

CREATE TABLE [Comment] (
  [commentid] int PRIMARY KEY,
  [content] nvarchar(255),
  [userid] int,
  [productid] int,
  [create_date] datetime2(6)
)
GO

CREATE TABLE [Voucher] (
  [voucherid] int PRIMARY KEY,
  [memberid] int,
  [description] nvarchar(100),
  [discount_length] int,
  [start_date] datetime2(6),
  [end_date] datetime2(6),
  [discount] float,
  [voucher_typeid] int,
  [is_active] bit
)
GO

CREATE TABLE [VoucherType] (
  [voucher_typeid] int PRIMARY KEY,
  [description] nvarchar(100),
  [discount] float,
  [discount_length] int,
  [point_needed] int
)
GO

ALTER TABLE [User] ADD FOREIGN KEY ([roleid]) REFERENCES [Role] ([roleid])
GO

ALTER TABLE [Voucher] ADD FOREIGN KEY ([memberid]) REFERENCES [User] ([userid])
GO

ALTER TABLE [Comment] ADD FOREIGN KEY ([userid]) REFERENCES [User] ([userid])
GO

ALTER TABLE [Comment] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [Product] ADD FOREIGN KEY ([mountid]) REFERENCES [DiamondMount] ([mountid])
GO

ALTER TABLE [Certificate] ADD FOREIGN KEY ([diamondid]) REFERENCES [Diamond] ([diamondid])
GO

ALTER TABLE [Warranty] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([customerid]) REFERENCES [User] ([userid])
GO

ALTER TABLE [OrderDetail] ADD FOREIGN KEY ([orderid]) REFERENCES [Order] ([orderid])
GO

ALTER TABLE [OrderDetail] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [ProductPromotion] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [ProductPromotion] ADD FOREIGN KEY ([promotionid]) REFERENCES [Promotion] ([promotionid])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([delivery_staffid]) REFERENCES [User] ([userid])
GO

ALTER TABLE [Order] ADD FOREIGN KEY ([voucherid]) REFERENCES [Voucher] ([voucherid])
GO

ALTER TABLE [Inventory] ADD FOREIGN KEY ([componentid]) REFERENCES [Diamond] ([diamondid])
GO

ALTER TABLE [Inventory] ADD FOREIGN KEY ([componentid]) REFERENCES [DiamondMount] ([mountid])
GO

ALTER TABLE [ProductPrice] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [ProductDiamond] ADD FOREIGN KEY ([productid]) REFERENCES [Product] ([productid])
GO

ALTER TABLE [ProductDiamond] ADD FOREIGN KEY ([diamondid]) REFERENCES [Diamond] ([diamondid])
GO

ALTER TABLE [Voucher] ADD FOREIGN KEY ([voucher_typeid]) REFERENCES [VoucherType] ([voucher_typeid])
GO
