
create database WebShop
go

USE [WebShop]
GO

/****** Object:  Table [dbo].[XacNhanDon]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[XacNhanDon]') AND type in (N'U'))
DROP TABLE [dbo].[XacNhanDon]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoaDon]') AND type in (N'U'))
DROP TABLE [dbo].[HoaDon]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GioHang]') AND type in (N'U'))
DROP TABLE [dbo].[GioHang]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contact]') AND type in (N'U'))
DROP TABLE [dbo].[Contact]
GO
/****** Object:  Table [dbo].[ChiTietDon]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ChiTietDon]') AND type in (N'U'))
DROP TABLE [dbo].[ChiTietDon]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/22/2022 12:21:53 AM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gt] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDon]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDon](
	[oder_id] [int] NULL,
	[username] [nvarchar](max) NULL,
	[name_user] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[phone] [nvarchar](50) NULL,
	[img] [nvarchar](max) NULL,
	[name_shoes] [nvarchar](max) NULL,
	[amount] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nchar](11) NULL,
	[message] [ntext] NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[username] [nvarchar](max) NULL,
	[id] [int] NULL,
	[img] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[price] [int] NULL,
	[amount] [int] NULL,
	[total] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[order_id] [int] NULL,
	[username] [nvarchar](max) NULL,
	[sum_amount] [int] NULL,
	[sum_total] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[priceOld] [money] NULL,
	[priceNew] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XacNhanDon]    Script Date: 6/22/2022 12:21:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XacNhanDon](
	[order_id] [int] NULL,
	[username] [nvarchar](max) NULL,
	[sum_amount] [int] NULL,
	[sum_total] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (1, N'Adam', N'123456', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (2, N'Anjolie', N'SNZ6HE', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (4, N'Katell', N'HWV8ZN', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (5, N'Zahir', N'NPX7OF', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (8, N'Micah', N'RVV5SR', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (12, N'Howard', N'TSR5MR', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (13, N'Tana', N'EHS8CM', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (15, N'Echo', N'IGE8TN', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (16, N'Slade', N'OFO6QS', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (18, N'Rowan', N'ZYS9VI', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (19, N'Rafael', N'WZA0IH', 1, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (20, N'Madaline', N'QMW4EN', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (21, N'Vera', N'CZB2VM', 0, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (22, N'Declan', N'ZKE7QZ', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (23, N'Katell', N'SFS0IW', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (24, N'Summer', N'PSQ7LC', NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (25, N'Robin', N'KIS9AF', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (26, N'Dominique', N'IKV0IX', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (27, N'admin', N'123', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (28, N'mra', N'mra', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (35, N'cuthan2k1', N'cuthan2kk1', 1, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (36, N'viet', N'123', 1, 0, N'Doan Van Viet', N'0986548521', N'vietngu@gmail.com', N'HD-HN', N'dep trai nhat xom')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'ADIDAS')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'NIKE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'CONVERSE')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'VANS')
GO
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1023, N'Adam', N'Giay the thao', N'a', N'a', N'girl-xinh-1-480x600.jpg', N'Giay the thao', 1, 1)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1051, N'Adam', N'Giay the thao', N'b', N'a', N'girl-xinh-1-480x600.jpg', N'Giay the thao', 6, 6)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Adam', N'Giay the thao', N'a', N'a', N'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', N'New Men''s Running Shoes', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Adam', N'Giay the thao', N'a', N'a', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', N'New Trend Men Hiking Shoes', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', N'Giày chạy bộ', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', N'Winter Outdoor Waterproof', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', N'Giày đẹp trai', 1, 159)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', N'Men''s Outdoors Waterproof Boots Sports Shoes', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1010, N'Admin', N'Giay the thao', N'21212', N'1212', N'https://canary.contestimg.wish.com/api/webimage/5c9543744578cb33ad0f56cd-large.jpg?cache_buster=ed84658c453c742ad13b9d565566ed06', N'Giày xấu trai', 5, 900)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (107418, N'Adam', N'Vinh', N'Ha noi', N'4', N'./assets/img/adidas/girl-xinh-1-480x600.jpg', N'ADIDAS_11', 10, 1212120)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (107418, N'Adam', N'Vinh', N'Ha noi', N'4', N'./assets/img/adidas/0.jpg', N'abc', 1, 1)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1002, N'cuthan2k1', N'Giay the thao', N'sdsdsd', N'32321', N'./assets/img/adidas/0.jpg', N'ADIDAS_1', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1006, N'Admin', N'', N'', N'', N'./assets/img/adidas/3.jpg', N'ADIDAS_4', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1049, N'cuthan2k1', N'Giay the thao', N'đwd', N'23213', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1031, N'Vinh', N'Giay the thao', N'dsdssfsfdsf', N'213213213', N'./assets/img/adidas/0.jpg', N'ADIDAS_1', 3, 2700000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', N'New Trend Men Hiking Shoes', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1098, N'cuthan2k1', N'Giay the thao', N'đwd', N'3434', N'./assets/img/adidas/3.jpg', N'ADIDAS_4', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1089, N'Admin', N'Giay the thao', N'h', N'a', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1015, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', N'Winter Outdoor Waterproof', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', N'Giày chạy bộ', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', N'New Men''s Running Shoes', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1082, N'Admin', N'Giay the thao', N'dsdsd', N'sscs', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1031, N'Vinh', N'Giay the thao', N'dsdssfsfdsf', N'213213213', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 4, 3600000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1031, N'Vinh', N'Giay the thao', N'dsdssfsfdsf', N'213213213', N'./assets/img/adidas/3.jpg', N'ADIDAS_4', 2, 1800000)
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (4, N'Phùng Quang Vinh', N'quangvinhphung1@gmail.com', N'0931712329 ', N'Google LLC là một công ty công nghệ đa quốc gia của Mỹ, chuyên về các dịch vụ và sản phẩm liên quan đến Internet, bao gồm các công nghệ quảng cáo trực tuyến, công cụ tìm kiếm, điện toán đám mây, phần mềm và phần cứng. Đây được coi là một trong những công ty công nghệ Big Four, cùng với Amazon, Apple và Facebook')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (5, N'Đoàn Văn Việt', N'vietngu@gmail.com', N'0986548521 ', N'Sẩn phẩm rất tốt')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (6, N'Trần Văn Thân', N'thanngu@gmail.com', N'0123699842 ', N'Shop rất nhiệt tình')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (7, N'Phùng Quang Vinh', N'quangvinhphung1@gmail.com', N'0931712329 ', N'Shop rất hayyyyyyyyyy')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[GioHang] ([username], [id], [img], [name], [price], [amount], [total]) VALUES (N'Admin', 3, N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 900000, 1, 900000)
GO
INSERT [dbo].[HoaDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1049, N'cuthan2k1', 1, 900000)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (1, N'ADIDAS_1', N'./assets/img/adidas/0.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (2, N'ADIDAS_2', N'./assets/img/adidas/1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (3, N'ADIDAS_3', N'./assets/img/adidas/2.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (4, N'ADIDAS_4', N'./assets/img/adidas/3.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (5, N'ADIDAS_5', N'./assets/img/adidas/4.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (6, N'ADIDAS_6', N'./assets/img/vans/slider2.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (7, N'ADIDAS_7', N'./assets/img/adidas/6.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (8, N'ADIDAS_8', N'./assets/img/adidas/7.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (9, N'ADIDAS_9', N'./assets/img/adidas/8.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (10, N'ADIDAS_10', N'./assets/img/adidas/9.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (11, N'NIKE_1', N'./assets/img/trangchu/nike-air-jordan-1-high-light-smoke-grey-red-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (12, N'NIKE_2', N'./assets/img/trangchu/nike-air-jordan-1-high-obsidian-unc-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (13, N'NIKE_3', N'./assets/img/trangchu/nike-air-jordan-1-retro-high-zoom-white-racer-blue.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 3)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (14, N'NIKE_4', N'./assets/img/trangchu/nike-air-jordan-1-high-retro-tie-dye.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (15, N'NIKE_5', N'./assets/img/trangchu/nike-air-jordan-1-high-satin-shattered-backboard-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (16, N'NIKE_6', N'./assets/img/trangchu/nike-air-jordan-1-high-tokyo-bio-hack-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (17, N'NIKE_7', N'./assets/img/trangchu/nike-air-jordan-1-high-turbo-green-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 5)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (18, N'NIKE_8', N'./assets/img/trangchu/nike-air-jordan-1-low-x-dior-grey-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (19, N'NIKE_9', N'./assets/img/trangchu/nike-air-jordan-1-mid-gs-pink-quartz-1-1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (20, N'NIKE_10', N'./assets/img/trangchu/nike-air-jordan-1-retro-high-zoom-white-racer-blue.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (21, N'CONVERSE_1', N'./assets/img/converse/1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (22, N'CONVERSE_2', N'./assets/img/converse/2.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (23, N'CONVERSE_3', N'./assets/img/converse/3.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 3)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (24, N'CONVERSE_4', N'./assets/img/converse/4.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (25, N'CONVERSE_5', N'./assets/img/converse/5.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (26, N'CONVERSE_6', N'./assets/img/converse/6.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (27, N'CONVERSE_7', N'./assets/img/converse/2.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 5)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (28, N'CONVERSE_8', N'./assets/img/converse/3.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (29, N'CONVERSE_9', N'./assets/img/converse/4.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (30, N'CONVERSE_10', N'./assets/img/converse/5.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (31, N'VANS_1', N'./assets/img/vans/0.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (32, N'VANS_2', N'./assets/img/vans/1.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (33, N'VANS_3', N'./assets/img/vans/2.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 3)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (34, N'VANS_4', N'./assets/img/vans/3.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (35, N'VANS_5', N'./assets/img/vans/4.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (36, N'VANS_6', N'./assets/img/vans/5.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (37, N'VANS_7', N'./assets/img/vans/6.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (38, N'VANS_8', N'./assets/img/vans/7.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 1)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (39, N'VANS_9', N'./assets/img/vans/8.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 4)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (40, N'VANS_10', N'./assets/img/vans/9.jpg', 1000000.0000, 900000.0000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 3)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (41, N'ADIDAS_11', N'./assets/img/adidas/girl-xinh-1-480x600.jpg', 12121.0000, 121212.0000, N'SDSD', N'DSSDS', 1, 1)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1089, N'admin', 0, 0)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1006, N'Admin', 1, 900000)
GO
