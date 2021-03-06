USE [master]
GO
/****** Object:  Database [Excell-On]    Script Date: 8/17/2021 3:42:55 PM ******/
CREATE DATABASE [Excell-On]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Excell-On', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Excell-On.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Excell-On_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Excell-On_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Excell-On] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Excell-On].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Excell-On] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Excell-On] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Excell-On] SET ARITHABORT OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Excell-On] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Excell-On] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Excell-On] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Excell-On] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Excell-On] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Excell-On] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Excell-On] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Excell-On] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Excell-On] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Excell-On] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Excell-On] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Excell-On] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Excell-On] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Excell-On] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Excell-On] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Excell-On] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Excell-On] SET  MULTI_USER 
GO
ALTER DATABASE [Excell-On] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Excell-On] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Excell-On] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Excell-On] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Excell-On] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Excell-On] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Excell-On] SET QUERY_STORE = OFF
GO
USE [Excell-On]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 8/17/2021 3:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Company_Name] [varchar](255) NULL,
	[Company_Phone] [varchar](255) NULL,
	[Company_Address] [varchar](255) NULL,
	[Company_Email] [varchar](255) NULL,
	[Company_Description] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_Name] [varchar](255) NULL,
	[Customer_Phone] [varchar](255) NULL,
	[Customer_Email] [varchar](255) NULL,
	[Customer_UserName] [varchar](255) NULL,
	[Customer_Password] [varchar](255) NULL,
	[CompanyId] [int] NULL,
	[Customer_Comment] [text] NULL,
	[Customer_Avatar] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Image]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image_link] [text] NULL,
	[ServiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDetail_DateStart] [datetime] NULL,
	[OrderDetail_DateEnd] [datetime] NULL,
	[OrderDetail_Status] [int] NULL,
	[OrderDetail_NumberOfPeople] [int] NULL,
	[ServiceId] [int] NULL,
	[OrdersId] [int] NULL,
 CONSTRAINT [PK__OrderDet__3214EC07E231B99A] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order_DateCreate] [varchar](50) NULL,
	[Order_Description] [text] NULL,
	[Order_TotalCost] [float] NULL,
	[Order_Status] [int] NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK__Orders__3214EC07AA0285C3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Permission_Name] [varchar](255) NULL,
	[Parent_id] [int] NULL,
	[Key_code] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionRole]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PermissionId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role_Name] [varchar](255) NULL,
	[Role_Description] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Service_Name] [varchar](255) NULL,
	[Service_Price] [float] NULL,
	[Service_Description] [text] NULL,
	[Service_SaleStatus] [int] NULL,
	[Service_Image] [text] NULL,
	[Service_PriceSale] [float] NULL,
 CONSTRAINT [PK__Service__3214EC07433C3329] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Staff_UserName] [varchar](255) NULL,
	[Staff_Password] [varchar](255) NULL,
	[Staff_Email] [varchar](255) NULL,
	[Staff_Gender] [int] NULL,
	[Staff_Age] [int] NULL,
	[Staff_Status] [int] NULL,
	[Staff_Phone] [varchar](50) NULL,
	[Staff_Address] [varchar](255) NULL,
	[Staff_Avatar] [text] NULL,
	[Staff_FullName] [varchar](255) NULL,
	[Staff_AboutMe] [text] NULL,
	[ServiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff_OrderDetail]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff_OrderDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date_Start] [datetime] NULL,
	[Date_End] [datetime] NULL,
	[Staff_Id] [int] NULL,
	[OrderDetail_Id] [int] NULL,
 CONSTRAINT [PK__Staff_Or__3214EC07959F77E3] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInFo]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInFo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](255) NULL,
	[User_Password] [varchar](255) NULL,
	[User_Email] [varchar](255) NULL,
	[User_Gender] [int] NULL,
	[User_Age] [int] NULL,
	[User_Phone] [varchar](50) NULL,
	[User_Address] [varchar](255) NULL,
	[User_Avatar] [text] NULL,
	[User_FullName] [varchar](255) NULL,
	[User_AboutMe] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 8/17/2021 3:42:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (43, N'Company 1', N'000000001', N'CG-HN', N'company1@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (44, N'Company 2', N'000000002', N'CG-HN', N'company2@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (45, N'Company 3', N'000000003', N'CG-HN', N'company3@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (46, N'Company 4', N'000000004', N'CG-HN', N'company4@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (47, N'Company 5', N'000000005', N'CG-HN', N'company5@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (48, N'Company 6', N'000000006', N'CG-HN', N'company6@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (49, N'Company 7', N'000000007', N'CG-HN', N'company7@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (50, N'Company 8', N'000000008', N'CG-HN', N'company8@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (51, N'Company 9', N'000000009', N'CG-HN', N'company9@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (52, N'Company 10', N'0000000010', N'CG-HN', N'company10@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (53, N'Company 11', N'0000000011', N'CG-HN', N'company11@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (54, N'Company 12', N'0000000012', N'CG-HN', N'company12@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (55, N'Company 13', N'0000000013', N'CG-HN', N'company13@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (56, N'Company 14', N'0000000014', N'CG-HN', N'company14@gmail.com', N'nothing')
INSERT [dbo].[Company] ([Id], [Company_Name], [Company_Phone], [Company_Address], [Company_Email], [Company_Description]) VALUES (57, N'Company 15', N'0000000015', N'CG-HN', N'company15@gmail.com', N'nothing')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (30, N'Customer 1', N'000000001', N'huyducle1109@gmail.com', N'customer1', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/user3.png')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (31, N'Customer 2', N'000000002', N'dothivanlinh@fpt.edu.vn', N'customer2', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/user2.png')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (32, N'Customer 3', N'000000003', N'hauphan040@gmail.com', N'customer3', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/user4.png')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (33, N'Customer 4', N'000000004', N'maithanhhuyen@gmail.com', N'customer4', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/user5.png')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (34, N'Customer 5', N'000000005', N'phamngocquynh@gmail.com', N'customer5', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/user6.png')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (35, N'Customer 6', N'000000006', N'buithuha@gmail.com', N'customer6', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (12).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (36, N'Customer 7', N'000000007', N'nguyenvantuan@gmail.com', N'customer7', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (4).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (37, N'Customer 8', N'000000008', N'leminhhieu@gmail.com', N'customer8', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (3).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (38, N'Customer 9', N'000000009', N'nguyenthanhhuyen@gmail.com', N'customer9', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (7).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (39, N'Customer 10', N'0000000010', N'leminhhai@gmail.com', N'customer10', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (8).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (40, N'Customer 11', N'0000000011', N'customer.11@gmail.com', N'customer11', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (9).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (41, N'Customer 12', N'0000000012', N'customer.12@gmail.com', N'customer12', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (11).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (42, N'Customer 13', N'0000000013', N'customer.13@gmail.com', N'customer13', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (13).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (43, N'Customer 14', N'0000000014', N'customer.14@gmail.com', N'customer14', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (14).jfif')
INSERT [dbo].[Customer] ([Id], [Customer_Name], [Customer_Phone], [Customer_Email], [Customer_UserName], [Customer_Password], [CompanyId], [Customer_Comment], [Customer_Avatar]) VALUES (44, N'Customer 15', N'0000000015', N'customer.15@gmail.com', N'customer15', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', NULL, N'nothing', N'/Public/Image/th (15).jfif')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Image] ON 

INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (10, N'/Public/Image/inbound1.jfif', 1)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (11, N'/Public/Image/inbound2.jfif', 1)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (12, N'/Public/Image/inbound3.jfif', 1)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (13, N'/Public/Image/inbound4.jfif', 1)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (14, N'/Public/Image/inbound5.jfif', 1)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (15, N'/Public/Image/outbound1.jfif', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (16, N'/Public/Image/outbound2.jfif', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (17, N'/Public/Image/outbound3.jfif', 2)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (18, N'/Public/Image/tele1.jfif', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (19, N'/Public/Image/tele2.jfif', 3)
INSERT [dbo].[Image] ([Id], [Image_link], [ServiceId]) VALUES (20, N'/Public/Image/tele3.jfif', 3)
SET IDENTITY_INSERT [dbo].[Image] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (27, CAST(N'2021-08-05T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 3, 10, 1, 1)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (28, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-12T00:00:00.000' AS DateTime), 3, 20, 1, 2)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (29, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 2, 3, 1, 3)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (30, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 5, 2, 4)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (31, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 2, 4, 1, 5)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (32, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 6, 3, 6)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (33, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 6, 3, 7)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (38, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 3, 2, 1, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (39, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 1, 2, 2, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (40, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 1, 2, 3, 12)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (41, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 1, 7, 2, 13)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (42, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 1, 6, 3, 13)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (47, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 21)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (48, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 15, 1, 22)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (49, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 23)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (50, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 3, 10, 1, 24)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (51, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 1, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (52, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 2, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (53, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 2, 5, 3, 25)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (54, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 0, 5, 2, 26)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (55, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 1, 10, 1, 27)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (56, CAST(N'2021-07-20T00:00:00.000' AS DateTime), CAST(N'2021-07-21T00:00:00.000' AS DateTime), 2, 8, 1, 28)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (57, CAST(N'2021-07-21T00:00:00.000' AS DateTime), CAST(N'2021-07-22T00:00:00.000' AS DateTime), 2, 9, 1, 29)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (60, CAST(N'2021-07-22T00:00:00.000' AS DateTime), CAST(N'2021-07-23T00:00:00.000' AS DateTime), 2, 10, 2, 31)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (61, CAST(N'2021-07-23T00:00:00.000' AS DateTime), CAST(N'2021-07-24T00:00:00.000' AS DateTime), 2, 11, 2, 32)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (62, CAST(N'2021-07-24T00:00:00.000' AS DateTime), CAST(N'2021-07-25T00:00:00.000' AS DateTime), 2, 6, 3, 33)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (63, CAST(N'2021-07-25T00:00:00.000' AS DateTime), CAST(N'2021-07-26T00:00:00.000' AS DateTime), 2, 5, 3, 34)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (64, CAST(N'2021-07-26T00:00:00.000' AS DateTime), CAST(N'2021-07-27T00:00:00.000' AS DateTime), 2, 7, 1, 35)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (65, CAST(N'2021-07-27T00:00:00.000' AS DateTime), CAST(N'2021-07-28T00:00:00.000' AS DateTime), 2, 8, 1, 36)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (66, CAST(N'2021-07-28T00:00:00.000' AS DateTime), CAST(N'2021-07-29T00:00:00.000' AS DateTime), 2, 9, 2, 37)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (67, CAST(N'2021-07-29T00:00:00.000' AS DateTime), CAST(N'2021-07-30T00:00:00.000' AS DateTime), 2, 10, 2, 38)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (68, CAST(N'2021-07-30T00:00:00.000' AS DateTime), CAST(N'2021-07-31T00:00:00.000' AS DateTime), 2, 11, 3, 39)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (69, CAST(N'2021-08-01T00:00:00.000' AS DateTime), CAST(N'2021-08-02T00:00:00.000' AS DateTime), 2, 12, 3, 40)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (71, CAST(N'2021-08-02T00:00:00.000' AS DateTime), CAST(N'2021-08-03T00:00:00.000' AS DateTime), 2, 13, 1, 46)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (72, CAST(N'2021-08-03T00:00:00.000' AS DateTime), CAST(N'2021-08-04T00:00:00.000' AS DateTime), 2, 14, 1, 47)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (73, CAST(N'2021-08-04T00:00:00.000' AS DateTime), CAST(N'2021-08-05T00:00:00.000' AS DateTime), 2, 15, 2, 48)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (74, CAST(N'2021-08-05T00:00:00.000' AS DateTime), CAST(N'2021-08-06T00:00:00.000' AS DateTime), 2, 16, 2, 49)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (75, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-07T00:00:00.000' AS DateTime), 2, 17, 3, 50)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (76, CAST(N'2021-08-07T00:00:00.000' AS DateTime), CAST(N'2021-08-08T00:00:00.000' AS DateTime), 2, 18, 3, 51)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (77, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-09-02T00:00:00.000' AS DateTime), 2, 19, 1, 52)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (78, CAST(N'2021-08-09T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 2, 20, 1, 53)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (79, CAST(N'2021-08-10T00:00:00.000' AS DateTime), CAST(N'2021-08-11T00:00:00.000' AS DateTime), 2, 21, 2, 54)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (80, CAST(N'2021-08-11T00:00:00.000' AS DateTime), CAST(N'2021-08-12T00:00:00.000' AS DateTime), 2, 22, 2, 55)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (81, CAST(N'2021-08-12T00:00:00.000' AS DateTime), CAST(N'2021-08-13T00:00:00.000' AS DateTime), 2, 23, 2, 56)
INSERT [dbo].[OrderDetail] ([Id], [OrderDetail_DateStart], [OrderDetail_DateEnd], [OrderDetail_Status], [OrderDetail_NumberOfPeople], [ServiceId], [OrdersId]) VALUES (82, CAST(N'2021-08-13T00:00:00.000' AS DateTime), CAST(N'2021-08-14T00:00:00.000' AS DateTime), 2, 24, 2, 57)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (1, N'August/03/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (2, N'August/03/2021', N'abc', 831600, 3, 31)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (3, N'August/04/2021', N'abc', 133650, 2, 32)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (4, N'August/04/2021', N'abc', 118800, 2, 33)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (5, N'August/05/2021', N'abc', 17820, 2, 34)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (6, N'August/06/2021', N'abc', 65340, 2, 35)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (7, N'August/06/2021', N'abc', 66000, 2, 36)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (12, N'August/10/2021', N'abc', 23000, 1, 38)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (13, N'August/14/2021', N'abc', 74250, 1, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (21, N'August/15/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (22, N'August/15/2021', N'abc', 67500, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (23, N'August/15/2021', N'abc', 45000, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (24, N'August/15/2021', N'abc', 0, 3, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (25, N'August/16/2021', N'abc', 79200, 2, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (26, N'August/16/2021', N'abc', 30000, 0, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (27, N'August/17/2021', N'abc', 90000, 1, 30)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (28, N'July/20/2021', N'abc', 65000, 2, 31)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (29, N'July/21/2021', N'abc', 55100, 2, 32)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (31, N'July/22/2021', N'abc', 73000, 2, 33)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (32, N'July/23/2021', N'abc', 68300, 2, 34)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (33, N'July/24/2021', N'abc', 123000, 2, 35)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (34, N'July/25/2021', N'abc', 89800, 2, 36)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (35, N'July/26/2021', N'abc', 34000, 2, 38)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (36, N'July/27/2021', N'abc', 56500, 2, 37)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (37, N'July/28/2021', N'abc', 74300, 2, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (38, N'July/29/2021', N'abc', 54500, 2, 40)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (39, N'July/30/2021', N'abc', 82300, 2, 41)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (40, N'July/31/2021', N'abc', 34500, 2, 42)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (46, N'August/02/2021', N'abc', 52100, 2, 43)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (47, N'August/01/2021', N'abc', 72500, 2, 44)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (48, N'August/07/2021', N'abc', 38300, 2, 31)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (49, N'August/08/2021', N'abc', 63600, 2, 32)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (50, N'August/09/2021', N'abc', 77800, 2, 33)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (51, N'August/11/2021', N'abc', 103000, 2, 34)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (52, N'August/12/2021', N'abc', 120000, 2, 35)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (53, N'August/13/2021', N'abc', 155600, 2, 36)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (54, N'July/17/2021', N'abc', 89000, 2, 37)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (55, N'July/18/2021', N'abc', 95000, 2, 38)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (56, N'July/19/2021', N'abc', 143000, 2, 39)
INSERT [dbo].[Orders] ([Id], [Order_DateCreate], [Order_Description], [Order_TotalCost], [Order_Status], [CustomerId]) VALUES (57, N'July/16/2021', N'abc', 120000, 2, 40)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (1, N'Customer', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (2, N'Customer_List', 1, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (3, N'Customer_Add', 1, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (4, N'Customer_Edit', 1, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (5, N'Customer_Delete', 1, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (6, N'Company', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (7, N'Company_List', 6, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (8, N'Company_Add', 6, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (9, N'Company_Edit', 6, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (10, N'Company_Delete', 6, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (11, N'Service', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (12, N'Service_List', 11, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (13, N'Service_Add', 11, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (14, N'Service_Edit', 11, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (15, N'Service_Delete', 11, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (16, N'OrderDetail', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (17, N'OrderDetail_List', 16, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (18, N'OrderDetail_Assign', 16, N'Assign')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (19, N'Staff', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (20, N'Staff_List', 19, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (21, N'Staff_Add', 19, N'Add')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (22, N'Staff_Edit', 19, N'Edit')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (23, N'Staff_Delete', 19, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (24, N'Staff_Status', 19, N'Status')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (25, N'Image', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (26, N'Image_List', 25, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (28, N'Order', 0, NULL)
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (29, N'Order_List', 28, N'List')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (30, N'Order_Activate', 28, N'Activate')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (31, N'Order_Complete', 28, N'Complete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (32, N'Order_Delete', 28, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (33, N'OrderDetail_Activate', 16, N'Activate')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (34, N'OrderDetail_Delete', 16, N'Delete')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (35, N'OrderDetail_Reset', 16, N'Reset')
INSERT [dbo].[Permission] ([Id], [Permission_Name], [Parent_id], [Key_code]) VALUES (36, N'Order_Reset', 28, N'Reset')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[PermissionRole] ON 

INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (83, 12, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (84, 13, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (85, 14, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (86, 15, 16)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (87, 24, 17)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (92, 17, 18)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (98, 20, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (99, 21, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (100, 22, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (101, 23, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (102, 24, 15)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (131, 2, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (132, 3, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (133, 4, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (134, 5, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (135, 7, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (136, 8, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (137, 9, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (138, 10, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (139, 12, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (140, 13, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (141, 14, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (142, 15, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (143, 17, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (144, 18, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (145, 33, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (146, 34, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (147, 35, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (148, 20, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (149, 21, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (150, 22, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (151, 23, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (152, 24, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (153, 26, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (154, 29, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (155, 30, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (156, 31, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (157, 32, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (158, 36, 13)
INSERT [dbo].[PermissionRole] ([Id], [PermissionId], [RoleId]) VALUES (160, 20, 17)
SET IDENTITY_INSERT [dbo].[PermissionRole] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (13, N'Admin', N'nothing')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (15, N'HR department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (16, N'Service department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (17, N'Training department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (18, N'Auditor department', N'none')
INSERT [dbo].[Role] ([Id], [Role_Name], [Role_Description]) VALUES (19, N'Internet security department', N'none')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (1, N'In-bound', 4500, N'The In-bound service is a service in which one can only receive the calls from the customers. These call centers provide 24 hours service to all customers. The primary goal of these call centers are to receive product orders, help customers both technically and non-technically, to find dealer location.', 0, N'/Public/Image/th (1).jfif', 4300)
INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (2, N'Out-bound', 6000, N'The Out-bound service is a service in which the employees of Excell-on call the customers for product promotions, for checking with the customer satisfaction on the services they provide, and for the telemarketing. Outbound Call Centers depends on the technological solutions, extensive experience, quality assurance programs and commitment to customer service excellence that further ensures maximum results from the direct marketing efforts for its success.', 1, N'/Public/Image/istockphoto-490176010-1024x1024.jpg', 5700)
INSERT [dbo].[Service] ([Id], [Service_Name], [Service_Price], [Service_Description], [Service_SaleStatus], [Service_Image], [Service_PriceSale]) VALUES (3, N'Tele Marketing', 5500, N'The Tele Marketing service is a service which is purely for the promotion of marketing or sales of the products and services.', 1, N'/Public/Image/95-telemarketing.jpg', 5300)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188022, N'nv1', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv1@gmail.com', 0, 21, 1, N'000000001', N'HN', N'/Public/Image/user3.png', N'Nguyen Van 1', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188023, N'nv2', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv2@gmail.com', 0, 21, 1, N'000000002', N'HN', N'/Public/Image/user2.png', N'Nguyen Van 2', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188024, N'nv3', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv3@gmail.com', 0, 21, 1, N'000000003', N'HN', N'/Public/Image/user4.png', N'Nguyen Van 3', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188025, N'nv4', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv4@gmail.com', 1, 21, 1, N'000000004', N'HN', N'/Public/Image/user5.png', N'Nguyen Van 4', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188026, N'nv5', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv5@gmail.com', 1, 21, 1, N'000000005', N'HN', N'/Public/Image/user6.png', N'Nguyen Van 5', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188027, N'nv6', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv6@gmail.com', 0, 21, 1, N'000000006', N'HN', N'/Public/Image/th (12).jfif', N'Nguyen Van 6', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188028, N'nv7', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv7@gmail.com', 0, 21, 0, N'000000007', N'HN', N'/Public/Image/th (4).jfif', N'Nguyen Van 7', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188029, N'nv8', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv8@gmail.com', 0, 21, 0, N'000000008', N'HN', N'/Public/Image/th (3).jfif', N'Nguyen Van 8', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188030, N'nv9', N'$2a$11$5gtwUkD9pVEiQfpARodG5.0wUIflhJt1cdZeplGEGKLSI5Nnq/Msm', N'nv9@gmail.com', 0, 21, 0, N'000000009', N'HN', N'/Public/Image/th (7).jfif', N'Nguyen Van 9', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188031, N'nv10', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv10@gmail.com', 0, 21, 0, N'0000000010', N'HN', N'/Public/Image/th (8).jfif', N'Nguyen Van 10', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188032, N'nv11', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv11@gmail.com', 0, 21, 0, N'0000000011', N'HN', N'/Public/Image/th (9).jfif', N'Nguyen Van 11', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188033, N'nv12', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv12@gmail.com', 0, 21, 0, N'0000000012', N'HN', N'/Public/Image/th (11).jfif', N'Nguyen Van 12', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188034, N'nv13', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv13@gmail.com', 0, 21, 0, N'0000000013', N'HN', N'/Public/Image/th (13).jfif', N'Nguyen Van 13', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188035, N'nv14', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv14@gmail.com', 0, 21, 0, N'0000000014', N'HN', N'/Public/Image/th (14).jfif', N'Nguyen Van 14', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188036, N'nv15', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv15@gmail.com', 0, 21, 0, N'0000000015', N'HN', N'/Public/Image/th (15).jfif', N'Nguyen Van 15', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188037, N'nv16', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv16@gmail.com', 0, 21, 0, N'0000000016', N'HN', N'/Public/Image/th.jfif', N'Nguyen Van 16', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188038, N'nv17', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv17@gmail.com', 0, 21, 0, N'0000000017', N'HN', N'/Public/Image/user1.png', N'Nguyen Van 17', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188039, N'nv18', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv18@gmail.com', 0, 21, 0, N'0000000018', N'HN', N'/Public/Image/th (3).jfif', N'Nguyen Van 18', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188040, N'nv19', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv19@gmail.com', 0, 21, 0, N'0000000019', N'HN', N'/Public/Image/th (12).jfif', N'Nguyen Van 19', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188041, N'nv20', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv20@gmail.com', 0, 21, 0, N'0000000020', N'HN', N'/Public/Image/th (15).jfif', N'Nguyen Van 20', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188042, N'nv21', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv21@gmail.com', 0, 21, 0, N'0000000021', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 21', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188043, N'nv22', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv22@gmail.com', 0, 21, 0, N'0000000022', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 22', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188044, N'nv23', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv23@gmail.com', 0, 21, 0, N'0000000023', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 23', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188045, N'nv24', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv24@gmail.com', 0, 21, 0, N'0000000024', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 24', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188046, N'nv25', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv25@gmail.com', 0, 21, 0, N'0000000025', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 25', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188047, N'nv26', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv26@gmail.com', 0, 21, 0, N'0000000026', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 26', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188048, N'nv27', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv27@gmail.com', 0, 21, 0, N'0000000027', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 27', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188049, N'nv28', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv28@gmail.com', 0, 21, 0, N'0000000028', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 28', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188050, N'nv29', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv29@gmail.com', 0, 21, 0, N'0000000029', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 29', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188051, N'nv30', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv30@gmail.com', 0, 21, 0, N'0000000030', N'HN', N'/Public/Image/avt.png', N'Nguyen Van 30', N'nothing', 1)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188052, N'nv30', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv30@gmail.com', 1, 21, 0, N'0000000030', N'HN', N'/Public/Image/avt.png', N'Do thi 30', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188053, N'nv31', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv31@gmail.com', 1, 21, 0, N'0000000031', N'HN', N'/Public/Image/avt.png', N'Do thi 31', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188054, N'nv32', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv32@gmail.com', 1, 21, 0, N'0000000032', N'HN', N'/Public/Image/avt.png', N'Do thi 32', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188055, N'nv33', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv33@gmail.com', 1, 21, 0, N'0000000033', N'HN', N'/Public/Image/avt.png', N'Do thi 33', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188056, N'nv34', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv34@gmail.com', 1, 21, 0, N'0000000034', N'HN', N'/Public/Image/avt.png', N'Do thi 34', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188057, N'nv35', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv35@gmail.com', 1, 21, 0, N'0000000035', N'HN', N'/Public/Image/avt.png', N'Do thi 35', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188058, N'nv36', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv36@gmail.com', 1, 21, 0, N'0000000036', N'HN', N'/Public/Image/avt.png', N'Do thi 36', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188059, N'nv37', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv37@gmail.com', 1, 21, 0, N'0000000037', N'HN', N'/Public/Image/avt.png', N'Do thi 37', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188060, N'nv38', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv38@gmail.com', 1, 21, 0, N'0000000038', N'HN', N'/Public/Image/avt.png', N'Do thi 38', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188061, N'nv39', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv39@gmail.com', 1, 21, 0, N'0000000039', N'HN', N'/Public/Image/avt.png', N'Do thi 39', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188062, N'nv40', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv40@gmail.com', 1, 21, 0, N'0000000040', N'HN', N'/Public/Image/avt.png', N'Do thi 40', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188063, N'nv41', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv41@gmail.com', 1, 21, 0, N'0000000041', N'HN', N'/Public/Image/avt.png', N'Do thi 41', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188064, N'nv42', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv42@gmail.com', 1, 21, 0, N'0000000042', N'HN', N'/Public/Image/avt.png', N'Do thi 42', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188065, N'nv43', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv43@gmail.com', 1, 21, 0, N'0000000043', N'HN', N'/Public/Image/avt.png', N'Do thi 43', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188066, N'nv44', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv44@gmail.com', 1, 21, 0, N'0000000044', N'HN', N'/Public/Image/avt.png', N'Do thi 44', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188067, N'nv45', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv45@gmail.com', 1, 21, 0, N'0000000045', N'HN', N'/Public/Image/avt.png', N'Do thi 45', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188068, N'nv46', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv46@gmail.com', 1, 21, 0, N'0000000046', N'HN', N'/Public/Image/avt.png', N'Do thi 46', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188069, N'nv47', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv47@gmail.com', 1, 21, 0, N'0000000047', N'HN', N'/Public/Image/avt.png', N'Do thi 47', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188070, N'nv48', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv48@gmail.com', 1, 21, 0, N'0000000048', N'HN', N'/Public/Image/avt.png', N'Do thi 48', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188071, N'nv49', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv49@gmail.com', 1, 21, 0, N'0000000049', N'HN', N'/Public/Image/avt.png', N'Do thi 49', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188072, N'nv50', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv50@gmail.com', 1, 21, 0, N'0000000050', N'HN', N'/Public/Image/avt.png', N'Do thi 50', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188073, N'nv51', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv51@gmail.com', 1, 21, 0, N'0000000051', N'HN', N'/Public/Image/avt.png', N'Do thi 51', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188074, N'nv52', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv52@gmail.com', 1, 21, 0, N'0000000052', N'HN', N'/Public/Image/avt.png', N'Do thi 52', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188075, N'nv53', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv53@gmail.com', 1, 21, 0, N'0000000053', N'HN', N'/Public/Image/avt.png', N'Do thi 53', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188076, N'nv54', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv54@gmail.com', 1, 21, 0, N'0000000054', N'HN', N'/Public/Image/avt.png', N'Do thi 54', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188077, N'nv55', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv55@gmail.com', 1, 21, 0, N'0000000055', N'HN', N'/Public/Image/avt.png', N'Do thi 55', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188078, N'nv56', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv56@gmail.com', 1, 21, 0, N'0000000056', N'HN', N'/Public/Image/avt.png', N'Do thi 56', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188079, N'nv57', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv57@gmail.com', 1, 21, 0, N'0000000057', N'HN', N'/Public/Image/avt.png', N'Do thi 57', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188080, N'nv58', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv58@gmail.com', 1, 21, 0, N'0000000058', N'HN', N'/Public/Image/avt.png', N'Do thi 58', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188081, N'nv59', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv59@gmail.com', 1, 21, 0, N'0000000059', N'HN', N'/Public/Image/avt.png', N'Do thi 59', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188082, N'nv60', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv60@gmail.com', 1, 21, 0, N'0000000060', N'HN', N'/Public/Image/avt.png', N'Do thi 60', N'nothing', 2)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188083, N'nv60', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv60@gmail.com', 1, 21, 0, N'0000000060', N'HN', N'/Public/Image/1761894.png', N'Tran thi 60', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188084, N'nv61', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv61@gmail.com', 1, 21, 0, N'0000000061', N'HN', N'/Public/Image/1761894.png', N'Tran thi 61', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188085, N'nv62', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv62@gmail.com', 1, 21, 1, N'0000000062', N'HN', N'/Public/Image/1761894.png', N'Tran thi 62', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188086, N'nv63', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv63@gmail.com', 1, 21, 0, N'0000000063', N'HN', N'/Public/Image/1761894.png', N'Tran thi 63', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188087, N'nv64', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv64@gmail.com', 1, 21, 0, N'0000000064', N'HN', N'/Public/Image/1761894.png', N'Tran thi 64', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188088, N'nv65', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv65@gmail.com', 1, 21, 0, N'0000000065', N'HN', N'/Public/Image/1761894.png', N'Tran thi 65', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188089, N'nv66', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv66@gmail.com', 1, 21, 0, N'0000000066', N'HN', N'/Public/Image/1761894.png', N'Tran thi 66', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188090, N'nv67', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv67@gmail.com', 1, 21, 0, N'0000000067', N'HN', N'/Public/Image/1761894.png', N'Tran thi 67', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188091, N'nv68', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv68@gmail.com', 1, 21, 0, N'0000000068', N'HN', N'/Public/Image/1761894.png', N'Tran thi 68', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188092, N'nv69', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv69@gmail.com', 1, 21, 0, N'0000000069', N'HN', N'/Public/Image/1761894.png', N'Tran thi 69', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188093, N'nv70', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv70@gmail.com', 1, 21, 0, N'0000000070', N'HN', N'/Public/Image/1761894.png', N'Tran thi 70', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188094, N'nv71', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv71@gmail.com', 1, 21, 0, N'0000000071', N'HN', N'/Public/Image/1761894.png', N'Tran thi 71', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188095, N'nv72', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv72@gmail.com', 1, 21, 0, N'0000000072', N'HN', N'/Public/Image/1761894.png', N'Tran thi 72', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188096, N'nv73', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv73@gmail.com', 1, 21, 0, N'0000000073', N'HN', N'/Public/Image/1761894.png', N'Tran thi 73', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188097, N'nv74', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv74@gmail.com', 1, 21, 0, N'0000000074', N'HN', N'/Public/Image/1761894.png', N'Tran thi 74', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188098, N'nv75', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv75@gmail.com', 1, 21, 0, N'0000000075', N'HN', N'/Public/Image/1761894.png', N'Tran thi 75', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188099, N'nv76', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv76@gmail.com', 1, 21, 0, N'0000000076', N'HN', N'/Public/Image/1761894.png', N'Tran thi 76', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188100, N'nv77', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv77@gmail.com', 1, 21, 0, N'0000000077', N'HN', N'/Public/Image/1761894.png', N'Tran thi 77', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188101, N'nv78', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv78@gmail.com', 1, 21, 0, N'0000000078', N'HN', N'/Public/Image/1761894.png', N'Tran thi 78', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188102, N'nv79', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv79@gmail.com', 1, 21, 0, N'0000000079', N'HN', N'/Public/Image/1761894.png', N'Tran thi 79', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188103, N'nv80', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv80@gmail.com', 1, 21, 0, N'0000000080', N'HN', N'/Public/Image/1761894.png', N'Tran thi 80', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188104, N'nv81', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv81@gmail.com', 1, 21, 0, N'0000000081', N'HN', N'/Public/Image/1761894.png', N'Tran thi 81', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188105, N'nv82', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv82@gmail.com', 1, 21, 0, N'0000000082', N'HN', N'/Public/Image/1761894.png', N'Tran thi 82', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188106, N'nv83', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv83@gmail.com', 1, 21, 0, N'0000000083', N'HN', N'/Public/Image/1761894.png', N'Tran thi 83', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188107, N'nv84', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv84@gmail.com', 1, 21, 0, N'0000000084', N'HN', N'/Public/Image/1761894.png', N'Tran thi 84', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188108, N'nv85', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv85@gmail.com', 1, 21, 0, N'0000000085', N'HN', N'/Public/Image/1761894.png', N'Tran thi 85', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188109, N'nv86', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv86@gmail.com', 1, 21, 0, N'0000000086', N'HN', N'/Public/Image/1761894.png', N'Tran thi 86', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188110, N'nv87', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv87@gmail.com', 1, 21, 0, N'0000000087', N'HN', N'/Public/Image/1761894.png', N'Tran thi 87', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188111, N'nv88', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv88@gmail.com', 1, 21, 0, N'0000000088', N'HN', N'/Public/Image/1761894.png', N'Tran thi 88', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188112, N'nv89', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv89@gmail.com', 1, 21, 0, N'0000000089', N'HN', N'/Public/Image/1761894.png', N'Tran thi 89', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188113, N'nv90', N'$2a$11$fKjFur.vGLQfb7DzQTgm2u5a0.CFH33uxxkWLH.8X57wZm/uzwbSy', N'nv90@gmail.com', 1, 21, 0, N'0000000090', N'HN', N'/Public/Image/1761894.png', N'Tran thi 90', N'nothing', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188116, NULL, N'$2a$11$D1U3Q8g/ulRgIEEn3BQ9GOwK4l8lJvRuvwmTvM/ssg65NiK9UQmui', N'1', 1, 1, 1, N'1', N'1', N'/Public/Image/2021_06_15_17_03_IMG_0771.JPG', N'1', N'1', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188117, NULL, N'$2a$11$ofNFJiW0paxhfahwkAcMaOwd2gZYNhyLiGq7ZX9fqkGFcDv5CL62K', N'2', 1, 2, NULL, N'2', N'2', N'/Public/Image/2021_06_15_17_02_IMG_0768.JPG', N'2', N'2', 3)
INSERT [dbo].[Staff] ([Id], [Staff_UserName], [Staff_Password], [Staff_Email], [Staff_Gender], [Staff_Age], [Staff_Status], [Staff_Phone], [Staff_Address], [Staff_Avatar], [Staff_FullName], [Staff_AboutMe], [ServiceId]) VALUES (188118, NULL, N'$2a$11$7D7n8qdgFOH4PELt3XKv/.i3Z39NznDX5cr.Gms8ikejpSmq/oH62', N'3', 0, 3, NULL, N'3', N'3', N'/Public/Image/OIP.jfif', N'3', N'3', 3)
SET IDENTITY_INSERT [dbo].[Staff] OFF
GO
SET IDENTITY_INSERT [dbo].[Staff_OrderDetail] ON 

INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (31, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188022, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (32, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188023, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (33, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-30T00:00:00.000' AS DateTime), 188024, 29)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (34, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188052, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (35, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188053, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (36, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188054, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (37, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188055, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (38, CAST(N'2021-08-06T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188056, 30)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (39, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188025, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (40, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188026, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (41, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188027, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (42, CAST(N'2021-08-20T00:00:00.000' AS DateTime), CAST(N'2021-08-21T00:00:00.000' AS DateTime), 188028, 31)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (49, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188089, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (50, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188090, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (51, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188091, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (52, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188092, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (53, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188093, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (54, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188094, 33)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (103, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188086, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (104, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188087, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (105, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188088, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (106, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188095, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (107, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188096, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (108, CAST(N'2021-08-08T00:00:00.000' AS DateTime), CAST(N'2021-08-10T00:00:00.000' AS DateTime), 188097, 32)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (119, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188057, 39)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (120, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188058, 39)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (121, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188083, 40)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (122, CAST(N'2021-09-02T00:00:00.000' AS DateTime), CAST(N'2021-09-03T00:00:00.000' AS DateTime), 188084, 40)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (123, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188059, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (124, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188060, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (125, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188061, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (126, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188062, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (127, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188063, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (128, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188064, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (129, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188065, 41)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (130, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188085, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (131, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188098, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (132, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188099, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (133, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188100, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (134, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188101, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (135, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188102, 42)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (234, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188032, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (235, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188033, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (236, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188034, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (237, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188035, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (238, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188036, 51)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (239, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188066, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (240, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188067, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (241, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188068, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (242, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188069, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (243, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188070, 52)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (244, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188103, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (245, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188104, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (246, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188105, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (247, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188106, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (248, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188107, 53)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (249, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188071, 54)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (250, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188072, 54)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (251, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188073, 54)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (252, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188074, 54)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (253, CAST(N'2021-08-16T00:00:00.000' AS DateTime), CAST(N'2021-08-17T00:00:00.000' AS DateTime), 188075, 54)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (254, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188029, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (255, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188030, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (256, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188031, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (257, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188037, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (258, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188038, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (259, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188039, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (260, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188040, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (261, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188041, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (262, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188042, 55)
INSERT [dbo].[Staff_OrderDetail] ([Id], [Date_Start], [Date_End], [Staff_Id], [OrderDetail_Id]) VALUES (263, CAST(N'2021-08-18T00:00:00.000' AS DateTime), CAST(N'2021-08-20T00:00:00.000' AS DateTime), 188043, 55)
SET IDENTITY_INSERT [dbo].[Staff_OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[UserInFo] ON 

INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (4, N'huyduc', N'$2a$11$wOoG8NiT4GJlO1l0Lg7nuuqGLJDM.tRqlyCuh03o1wFnN3rHCdTAy', N'huyducle1109@gmail.com', 0, 20, N'0961503893', N'CG-HN', N'/Public/Image/OIP.jfif', N'Le Huy Duc', N'nothing.........................................................................')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (5, N'phanhau', N'$2a$11$Q8QGdahRguzPI85hnfV.ae9Izw8Es3Rr9YCKk5FY9JjcxcCCbT2I6', N'hauphan040@gmail.com', 1, 20, N'0384896044', N'CG-HN', N'/Public/Image/1761894.png', N'Phan Thi Hau', N'none')
INSERT [dbo].[UserInFo] ([Id], [User_Name], [User_Password], [User_Email], [User_Gender], [User_Age], [User_Phone], [User_Address], [User_Avatar], [User_FullName], [User_AboutMe]) VALUES (6, N'HR', N'$2a$11$kMIX3k3MkxW4kcEpEwm/2.NzTa0WcgcxuQNScNnP/ERDEogfZ5.5u', N'hr123@gmail.com', 1, 22, N'0988776655', N'HBT - HN', N'/Public/Image/2021_06_15_17_02_IMG_0768.JPG', N'HR staff', N'nothing')
SET IDENTITY_INSERT [dbo].[UserInFo] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (3, 4, 13)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (12, 5, 18)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (13, 6, 15)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Customer_Avatar]  DEFAULT ('~/Public/Image/avt.png') FOR [Customer_Avatar]
GO
ALTER TABLE [dbo].[UserInFo] ADD  CONSTRAINT [DF_UserInFo_User_Avatar]  DEFAULT ('~/Public/Image/avt.png') FOR [User_Avatar]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Id])
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__6319B466] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Order__6319B466]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Servi__6225902D] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK__OrderDeta__Servi__6225902D]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK__Orders__Customer__5F492382] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK__Orders__Customer__5F492382]
GO
ALTER TABLE [dbo].[PermissionRole]  WITH CHECK ADD FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([Id])
GO
ALTER TABLE [dbo].[PermissionRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Service] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__Staff_Ord__Order__7720AD13] FOREIGN KEY([OrderDetail_Id])
REFERENCES [dbo].[OrderDetail] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail] CHECK CONSTRAINT [FK__Staff_Ord__Order__7720AD13]
GO
ALTER TABLE [dbo].[Staff_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK__Staff_Ord__Staff__762C88DA] FOREIGN KEY([Staff_Id])
REFERENCES [dbo].[Staff] ([Id])
GO
ALTER TABLE [dbo].[Staff_OrderDetail] CHECK CONSTRAINT [FK__Staff_Ord__Staff__762C88DA]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[UserInFo] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Excell-On] SET  READ_WRITE 
GO
