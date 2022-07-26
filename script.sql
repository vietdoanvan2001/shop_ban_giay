USE [master]
GO
/****** Object:  Database [WebShop]    Script Date: 7/22/2022 10:46:20 PM ******/
CREATE DATABASE [WebShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebShop.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\WebShop_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WebShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebShop] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebShop] SET  MULTI_USER 
GO
ALTER DATABASE [WebShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [WebShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [WebShop]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/22/2022 10:46:20 PM ******/
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
/****** Object:  Table [dbo].[Cart]    Script Date: 7/22/2022 10:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/22/2022 10:46:20 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDon]    Script Date: 7/22/2022 10:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDon](
	[oder_id] [int] NOT NULL,
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
/****** Object:  Table [dbo].[Contact]    Script Date: 7/22/2022 10:46:20 PM ******/
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
/****** Object:  Table [dbo].[GioHang]    Script Date: 7/22/2022 10:46:20 PM ******/
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
/****** Object:  Table [dbo].[HoaDon]    Script Date: 7/22/2022 10:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[order_id] [int] NOT NULL,
	[username] [nvarchar](max) NULL,
	[sum_amount] [int] NULL,
	[sum_total] [int] NULL,
 CONSTRAINT [order_id] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 7/22/2022 10:46:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[priceOld] [int] NULL,
	[priceNew] [int] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NOT NULL,
	[sell_ID] [int] NOT NULL,
 CONSTRAINT [sanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XacNhanDon]    Script Date: 7/22/2022 10:46:20 PM ******/
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

INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (27, N'admin', N'admin', 1, 1, N'Doan Van Viet', N'0913205643', N'vietdoan08032001@gmail.com', N'Ba Vi - Ha Noi', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (36, N'viet', N'123', 1, 0, N'Doan Van Viet', N'0986548521', N'vietdeptrai@gmail.com', N'HD-HN', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (37, N'test', N'123321', 0, 0, N'testname123', N'0973411122', N'testemail@gmail.com', N'ha noi', N'nothing')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (39, N'hello', N'123456', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (40, N'hola', N'123456', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (41, N'test1', N'123456', 0, 0, N'Doan Van Viet', N'0913205643', N'vietdeptrai@gmail.com', N'Ba Vi - Ha Noi', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (42, N'viet doan', N'123', 0, 0, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (43, N'test2', N'08032001', 0, 0, N'Doan Van Viet', N'0913205643', N'mail@gmail.com', N'Ba Vi - Ha Noi', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (44, N'test3', N'viet2001', 1, 0, N'Doan Van Viet', N'0913205643', N'mail@gmail.com', N'Ba Vi - Ha Noi', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (45, N'test4', N'viet2001', 1, 0, N'Doan Van Viet', N'0913205643', N'mail@gmail.com', N'Ba Vi - Ha Noi', N'dep trai nhat xom')
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin], [Name], [Phone], [Address], [Email], [Gt]) VALUES (46, N'viet', N'123', 0, 0, N'Doan Van Viet', N'0123456789', N'viet@gmail.com', N'ha noi', N'abc')
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
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1070, N'viet', N'Nguyen Van Nam', N'ba vì - hà nội', N'1234567890', N'./assets/img/adidas/1.jpg', N'ADIDAS_2', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1060, N'test1', N'Nguyen Van Nam', N'ba vì - hà nội', N'1234567890', N'./assets/img/adidas/3.jpg', N'ADIDAS_4', 3, 2700000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1047, N'viet', N'Nguyen Van Nam', N'ba vì - hà nội', N'1234567890', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1061, N'viet doan', N'Doan Van Viet ', N'Ba Vì - Hà Nội', N'1234567890', N'./assets/img/trangchu/nike-air-jordan-1-retro-high-zoom-white-racer-blue.jpg', N'NIKE_3', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1007, N'test4', N'Doan Van Viet ', N'Ba Vì - Hà Nội', N'1234567890', N'./assets/img/adidas/0.jpg', N'ADIDAS_1', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1078, N'test3', N'Doan Van Viet ', N'Ba Vì - Hà Nội', N'1234567890', N'./assets/img/adidas/7.jpg', N'ADIDAS_8', 3, 2700000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1036, N'Adam', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', N'New Trend Men Hiking Shoes', 1, 99)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1007, N'test4', N'Doan Van Viet ', N'Ba Vì - Hà Nội', N'1234567890', N'./assets/img/adidas/1.jpg', N'ADIDAS_2', 3, 2700000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1026, N'viet', N'Việt', N'hà nội', N'12345', N'./assets/img/adidas/7.jpg', N'ADIDAS_8', 1, 900000)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1015, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', N'Winter Outdoor Waterproof', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', N'Giày chạy bộ', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1097, N'Admin', N'Giay the thao', N'h', N'a', N'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', N'New Men''s Running Shoes', 2, 198)
INSERT [dbo].[ChiTietDon] ([oder_id], [username], [name_user], [address], [phone], [img], [name_shoes], [amount], [total]) VALUES (1082, N'Admin', N'Giay the thao', N'dsdsd', N'sscs', N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 1, 900000)
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (5, N'Đoàn Văn Việt', N'vietngu@gmail.com', N'0986548521 ', N'Sẩn phẩm rất tốt')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (9, N'Doan Van Viet', N'vietdeptrai@gmail.com', N'1234567890 ', N'Giay rat dep')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (10, N'Nguyen Van B', N'mail@gmail.com', N'0913205643 ', N'shop nhiệt tình sản phẩm rất đẹp')
INSERT [dbo].[Contact] ([id], [name], [email], [phone], [message]) VALUES (11, N'Doan Van Viet', N'mail@gmail.com', N'0913205643 ', N'Shop nhiệt tình sản phẩm đẹp')
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
INSERT [dbo].[GioHang] ([username], [id], [img], [name], [price], [amount], [total]) VALUES (N'Admin', 3, N'./assets/img/adidas/2.jpg', N'ADIDAS_3', 900000, 1, 900000)
INSERT [dbo].[GioHang] ([username], [id], [img], [name], [price], [amount], [total]) VALUES (N'', 8, N'./assets/img/adidas/7.jpg', N'ADIDAS_8', 900000, 1, 900000)
GO
INSERT [dbo].[HoaDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1007, N'test4', 4, 3600000)
GO
SET IDENTITY_INSERT [dbo].[product] ON 

INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (1, N'ADIDAS_1', N'./assets/img/adidas/0.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (2, N'ADIDAS_2', N'./assets/img/adidas/1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (3, N'ADIDAS_3', N'./assets/img/adidas/2.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (4, N'ADIDAS_4', N'./assets/img/adidas/3.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (5, N'ADIDAS_5', N'./assets/img/adidas/4.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (6, N'ADIDAS_6', N'./assets/img/adidas/6.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (7, N'ADIDAS_7', N'./assets/img/adidas/6.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (8, N'ADIDAS_8', N'./assets/img/adidas/7.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (9, N'ADIDAS_9', N'./assets/img/adidas/8.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (10, N'ADIDAS_10', N'./assets/img/adidas/9.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 1, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (11, N'NIKE_1', N'./assets/img/trangchu/nike-air-jordan-1-high-light-smoke-grey-red-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (12, N'NIKE_2', N'./assets/img/trangchu/nike-air-jordan-1-high-obsidian-unc-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (13, N'NIKE_3', N'./assets/img/trangchu/nike-air-jordan-1-retro-high-zoom-white-racer-blue.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (14, N'NIKE_4', N'./assets/img/trangchu/nike-air-jordan-1-high-retro-tie-dye.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (15, N'NIKE_5', N'./assets/img/trangchu/nike-air-jordan-1-high-satin-shattered-backboard-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (16, N'NIKE_6', N'./assets/img/trangchu/nike-air-jordan-1-high-tokyo-bio-hack-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (17, N'NIKE_7', N'./assets/img/trangchu/nike-air-jordan-1-high-turbo-green-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (18, N'NIKE_8', N'./assets/img/trangchu/nike-air-jordan-1-low-x-dior-grey-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (19, N'NIKE_9', N'./assets/img/trangchu/nike-air-jordan-1-mid-gs-pink-quartz-1-1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (20, N'NIKE_10', N'./assets/img/trangchu/nike-air-jordan-1-retro-high-zoom-white-racer-blue.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 2, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (21, N'CONVERSE_1', N'./assets/img/converse/1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (22, N'CONVERSE_2', N'./assets/img/converse/2.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (23, N'CONVERSE_3', N'./assets/img/converse/3.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (24, N'CONVERSE_4', N'./assets/img/converse/4.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (25, N'CONVERSE_5', N'./assets/img/converse/5.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (26, N'CONVERSE_6', N'./assets/img/converse/6.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (27, N'CONVERSE_7', N'./assets/img/converse/2.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (28, N'CONVERSE_8', N'./assets/img/converse/3.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (29, N'CONVERSE_9', N'./assets/img/converse/4.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (30, N'CONVERSE_10', N'./assets/img/converse/5.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 3, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (31, N'VANS_1', N'./assets/img/vans/0.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (32, N'VANS_2', N'./assets/img/vans/1.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (33, N'VANS_3', N'./assets/img/vans/2.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (34, N'VANS_4', N'./assets/img/vans/3.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (35, N'VANS_5', N'./assets/img/vans/4.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (36, N'VANS_6', N'./assets/img/vans/5.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (37, N'VANS_7', N'./assets/img/vans/6.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (38, N'VANS_8', N'./assets/img/vans/7.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (39, N'VANS_9', N'./assets/img/vans/8.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (40, N'VANS_10', N'./assets/img/vans/9.jpg', 1000000, 900000, N'Giay chat luong cao', N'Giay chat luong cao', 4, 27)
INSERT [dbo].[product] ([id], [name], [image], [priceOld], [priceNew], [title], [description], [cateID], [sell_ID]) VALUES (50, N'Nike', N'./assets/img/adidas/0.jpg', 12, 12, N'áaa', N'aaa', 1, 44)
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1047, N'viet', 1, 900000)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1060, N'test1', 3, 2700000)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1070, N'viet', 1, 900000)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1061, N'viet doan', 1, 900000)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1026, N'viet', 1, 900000)
INSERT [dbo].[XacNhanDon] ([order_id], [username], [sum_amount], [sum_total]) VALUES (1078, N'test3', 3, 2700000)
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_htk_id_sanpham] FOREIGN KEY([ProductID])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_htk_id_sanpham]
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD  CONSTRAINT [fk_htk_id_taikhoan] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Cart] CHECK CONSTRAINT [fk_htk_id_taikhoan]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_htk_id_thuonghieu] FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_htk_id_thuonghieu]
GO
USE [master]
GO
ALTER DATABASE [WebShop] SET  READ_WRITE 
GO
