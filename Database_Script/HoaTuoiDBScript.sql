USE [master]
GO
/****** Object:  Database [HoaTuoiDB]    Script Date: 11/7/2024 9:55:51 PM ******/
CREATE DATABASE [HoaTuoiDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoaTuoiDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.KIENNGO\MSSQL\DATA\HoaTuoiDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoaTuoiDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.KIENNGO\MSSQL\DATA\HoaTuoiDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HoaTuoiDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoaTuoiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoaTuoiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoaTuoiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoaTuoiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HoaTuoiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoaTuoiDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET RECOVERY FULL 
GO
ALTER DATABASE [HoaTuoiDB] SET  MULTI_USER 
GO
ALTER DATABASE [HoaTuoiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoaTuoiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoaTuoiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoaTuoiDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoaTuoiDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoaTuoiDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HoaTuoiDB', N'ON'
GO
ALTER DATABASE [HoaTuoiDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [HoaTuoiDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HoaTuoiDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 11/7/2024 9:55:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoa]    Script Date: 11/7/2024 9:55:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoa](
	[MaHoa] [int] IDENTITY(1,1) NOT NULL,
	[tenhoa] [nvarchar](50) NOT NULL,
	[Gia] [float] NOT NULL,
	[Hinh] [varchar](50) NOT NULL,
	[MaLoai] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
 CONSTRAINT [PK_Hoa] PRIMARY KEY CLUSTERED 
(
	[MaHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Loai]    Script Date: 11/7/2024 9:55:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([username], [password]) VALUES (N'kienvip1', N'kienvip1')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'kienvip2', N'kienvip2')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'kienvip3', N'kienvip3')
INSERT [dbo].[Account] ([username], [password]) VALUES (N'kienvip4', N'kienvip4')
GO
SET IDENTITY_INSERT [dbo].[Hoa] ON 

INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (2, N'Christmas Plant', 300000, N'hoagio001.png', 2, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (3, N'Everlasting ', 350000, N'2.png', 1, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (4, N'Chung vui', 350000, N'3.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (5, N'Chia sẽ', 259000, N'4.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (6, N'Mặt trời bé con', 249000, N'5.png', 1, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (7, N'Ánh vàng', 200000, N'6.png', 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (8, N'I miss you', 249000, N'7.png', 1, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (9, N'Ngày ấy', 279000, N'hoagio002.png', 2, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (10, N'Hồng thắm', 179000, N'hoagio003.png', 2, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (11, N'Yêu kiều', 300000, N'hoagio004.png', 2, CAST(N'2022-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (12, N'Rộn rã', 400000, N'hoagio005.png', 2, CAST(N'2023-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (13, N'Spring Tulip III', 499000, N'binh001.png', 3, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (14, N'Dân giã', 190000, N'vp001.png', 4, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (15, N'Hoa cưới', 233000, N'hc001.png', 6, CAST(N'2021-12-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Hoa] ([MaHoa], [tenhoa], [Gia], [Hinh], [MaLoai], [NgayCapNhat]) VALUES (21, N'Hoa xàm', 250000, N'40-bong-hoa-sap-nhu.jpg', 5, CAST(N'2024-10-29T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Hoa] OFF
GO
SET IDENTITY_INSERT [dbo].[Loai] ON 

INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (1, N'Hoa tươi bó')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (2, N'Hoa tươi giỏ')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (3, N'Hoa tươi bình')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (4, N'Hoa văn phòng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (5, N'Hoa chúc mừng')
INSERT [dbo].[Loai] ([MaLoai], [TenLoai]) VALUES (6, N'Hoa cưới')
SET IDENTITY_INSERT [dbo].[Loai] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__6E2DBEDEDF150C10]    Script Date: 11/7/2024 9:55:51 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[password] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hoa]  WITH CHECK ADD  CONSTRAINT [FK_Hoa_DanhMuc] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[Loai] ([MaLoai])
GO
ALTER TABLE [dbo].[Hoa] CHECK CONSTRAINT [FK_Hoa_DanhMuc]
GO
USE [master]
GO
ALTER DATABASE [HoaTuoiDB] SET  READ_WRITE 
GO
