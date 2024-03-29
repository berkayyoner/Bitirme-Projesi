USE [Gutuphane]
GO
/****** Object:  StoredProcedure [dbo].[KullaniciBilgileri]    Script Date: 26.01.2024 04:16:03 ******/
DROP PROCEDURE [dbo].[KullaniciBilgileri]
GO
/****** Object:  StoredProcedure [dbo].[KisiEtiketlerİ]    Script Date: 26.01.2024 04:16:03 ******/
DROP PROCEDURE [dbo].[KisiEtiketlerİ]
GO
/****** Object:  StoredProcedure [dbo].[Begenebilecekleriniz]    Script Date: 26.01.2024 04:16:03 ******/
DROP PROCEDURE [dbo].[Begenebilecekleriniz]
GO
/****** Object:  Table [dbo].[Takip]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Takip]') AND type in (N'U'))
DROP TABLE [dbo].[Takip]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kullanicilar]') AND type in (N'U'))
DROP TABLE [dbo].[Kullanicilar]
GO
/****** Object:  Table [dbo].[KitapYorumlari]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[KitapYorumlari]') AND type in (N'U'))
DROP TABLE [dbo].[KitapYorumlari]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Kitaplar]') AND type in (N'U'))
DROP TABLE [dbo].[Kitaplar]
GO
/****** Object:  Table [dbo].[HaftalikAktifSureler]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HaftalikAktifSureler]') AND type in (N'U'))
DROP TABLE [dbo].[HaftalikAktifSureler]
GO
/****** Object:  Table [dbo].[GunlukAktifSureler]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GunlukAktifSureler]') AND type in (N'U'))
DROP TABLE [dbo].[GunlukAktifSureler]
GO
/****** Object:  Table [dbo].[Chapterlar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Chapterlar]') AND type in (N'U'))
DROP TABLE [dbo].[Chapterlar]
GO
/****** Object:  Table [dbo].[BegenilmeyenKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BegenilmeyenKitaplar]') AND type in (N'U'))
DROP TABLE [dbo].[BegenilmeyenKitaplar]
GO
/****** Object:  Table [dbo].[BegenilenKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BegenilenKitaplar]') AND type in (N'U'))
DROP TABLE [dbo].[BegenilenKitaplar]
GO
/****** Object:  Table [dbo].[AlinanKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AlinanKitaplar]') AND type in (N'U'))
DROP TABLE [dbo].[AlinanKitaplar]
GO
/****** Object:  UserDefinedFunction [dbo].[Kisi_Etiketleri]    Script Date: 26.01.2024 04:16:03 ******/
DROP FUNCTION [dbo].[Kisi_Etiketleri]
GO
/****** Object:  Table [dbo].[Etiketler]    Script Date: 26.01.2024 04:16:03 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Etiketler]') AND type in (N'U'))
DROP TABLE [dbo].[Etiketler]
GO
USE [master]
GO
/****** Object:  Database [Gutuphane]    Script Date: 26.01.2024 04:16:03 ******/
DROP DATABASE [Gutuphane]
GO
/****** Object:  Database [Gutuphane]    Script Date: 26.01.2024 04:16:03 ******/
CREATE DATABASE [Gutuphane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Gutuphane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gutuphane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Gutuphane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Gutuphane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gutuphane] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gutuphane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gutuphane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gutuphane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gutuphane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gutuphane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gutuphane] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gutuphane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gutuphane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gutuphane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gutuphane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gutuphane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gutuphane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gutuphane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gutuphane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gutuphane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gutuphane] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gutuphane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gutuphane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gutuphane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gutuphane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gutuphane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gutuphane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gutuphane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gutuphane] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gutuphane] SET  MULTI_USER 
GO
ALTER DATABASE [Gutuphane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gutuphane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gutuphane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gutuphane] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gutuphane] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gutuphane] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Gutuphane] SET QUERY_STORE = OFF
GO
USE [Gutuphane]
GO
/****** Object:  Table [dbo].[Etiketler]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Etiketler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KitapID] [int] NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[YazarAdi] [varchar](50) NOT NULL,
	[KitapTuru] [varchar](50) NOT NULL,
	[Etiketler] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Ilgiler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[Kisi_Etiketleri]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Kisi_Etiketleri] (
    @Kullanici nvarchar(50)
)
RETURNS TABLE
AS
RETURN
      select TOP 50 Etiketler from Etiketler where KullaniciAdi = @Kullanici group by Etiketler order by COUNT(Etiketler) desc

GO
/****** Object:  Table [dbo].[AlinanKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlinanKitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[Yazar] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_AlinanKitaplar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BegenilenKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BegenilenKitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[YazarAdi] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BegenilenKitaplar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BegenilmeyenKitaplar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BegenilmeyenKitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[YazarAdi] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BegenilmeyenKitaplar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chapterlar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chapterlar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Yazar] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
	[ChapterSayisi] [int] NOT NULL,
	[Baslik] [varchar](50) NOT NULL,
	[Chapter] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Chapterlar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GunlukAktifSureler]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GunlukAktifSureler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[AktifSure] [int] NOT NULL,
	[Ilk Kayit] [datetime] NOT NULL,
 CONSTRAINT [PK_AktifSureler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HaftalikAktifSureler]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HaftalikAktifSureler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[AktifSure] [int] NOT NULL,
	[Ilk Kayit] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
	[KitapTuru] [varchar](50) NOT NULL,
	[KitapKonusu] [varchar](max) NOT NULL,
	[KapakFotografi] [varchar](300) NULL,
	[Etiketler] [varchar](100) NULL,
	[Durum] [varchar](50) NOT NULL,
	[OkunmaSayisi] [bigint] NOT NULL,
	[Fiyat] [money] NOT NULL,
 CONSTRAINT [PK_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitapYorumlari]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitapYorumlari](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[YazarAdi] [varchar](50) NOT NULL,
	[KitapAdi] [varchar](50) NOT NULL,
	[Yorum] [varchar](max) NOT NULL,
 CONSTRAINT [PK_KitapYorumlari] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[E-Posta] [nvarchar](50) NOT NULL,
	[Adi] [nvarchar](50) NOT NULL,
	[Soyadi] [nvarchar](50) NOT NULL,
	[Dogum Tarihi] [date] NOT NULL,
	[No] [bigint] NOT NULL,
	[Kayit Tarihi] [date] NOT NULL,
	[Yetki] [nvarchar](50) NOT NULL,
	[Para] [money] NOT NULL,
	[Fotograf] [varchar](300) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takip]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takip](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](50) NOT NULL,
	[YazarAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Takip] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AlinanKitaplar] ON 

INSERT [dbo].[AlinanKitaplar] ([ID], [KullaniciAdi], [Yazar], [KitapAdi]) VALUES (1, N'melek.yaman', N'melek.yaman', N'Meleğin Hayatı')
INSERT [dbo].[AlinanKitaplar] ([ID], [KullaniciAdi], [Yazar], [KitapAdi]) VALUES (2, N'berkay.oner', N'melek.yaman', N'Meleğin Hayatı')
INSERT [dbo].[AlinanKitaplar] ([ID], [KullaniciAdi], [Yazar], [KitapAdi]) VALUES (3, N'berkay.oner', N'berkay.oner', N'Sefil Hayat')
INSERT [dbo].[AlinanKitaplar] ([ID], [KullaniciAdi], [Yazar], [KitapAdi]) VALUES (4, N'melek.yaman', N'berkay.oner', N'Sefil Hayat')
INSERT [dbo].[AlinanKitaplar] ([ID], [KullaniciAdi], [Yazar], [KitapAdi]) VALUES (5, N'nirvana', N'nirvana', N'Hurts My Stomach')
SET IDENTITY_INSERT [dbo].[AlinanKitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[BegenilenKitaplar] ON 

INSERT [dbo].[BegenilenKitaplar] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi]) VALUES (2, N'melek.yaman', N'melek.yaman', N'Meleğin Hayatı')
INSERT [dbo].[BegenilenKitaplar] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi]) VALUES (3, N'berkay.oner', N'melek.yaman', N'Meleğin Hayatı')
SET IDENTITY_INSERT [dbo].[BegenilenKitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[Chapterlar] ON 

INSERT [dbo].[Chapterlar] ([ID], [Yazar], [KitapAdi], [ChapterSayisi], [Baslik], [Chapter]) VALUES (1, N'melek.yaman', N'Meleğin Hayatı', 1, N'Bölüm 1: Berkay', N'Onunla tanıştım')
INSERT [dbo].[Chapterlar] ([ID], [Yazar], [KitapAdi], [ChapterSayisi], [Baslik], [Chapter]) VALUES (2, N'melek.yaman', N'Meleğin Hayatı', 2, N'Bölüm 2: Evlendim', N'Hayırlı olsun')
INSERT [dbo].[Chapterlar] ([ID], [Yazar], [KitapAdi], [ChapterSayisi], [Baslik], [Chapter]) VALUES (3, N'berkay.oner', N'Sefil Hayat', 1, N'Bölüm 1: Londraya Yürüyüş', N'   Cabbar bir sabah kahvaltısında babası ile ettiği kavgadan ötürü sinirlenir ve cekedini alarak hızlıca sinirle evden çıkar. Cabbar''ın ciddiyetini fark edemeyen babası, aldırış etmez. Cabbar hiç durmadan koşarak Avrupa ülkesi sınır duvarlarına tırmana tırmana Londra''ya kaçar. Sonunda durup soluklanmak için kafasını kaldırdığında büyük, ışıl ışıl binalar, temiz sokaklar ve çokça yabancı milletten insan görür. Cabbar onların neler konuştuğunu anlayamadığını fark eder. Cabbar "Lo! Nereye geldim ben?" diye kendine kendine mırıldanır. O sırada bir araba aniden firene basar ve ona "Get out of the way. There are cars there!" diye bağırır. ')
INSERT [dbo].[Chapterlar] ([ID], [Yazar], [KitapAdi], [ChapterSayisi], [Baslik], [Chapter]) VALUES (4, N'nirvana', N'Hurts My Stomach', 1, N'Bölüm 1: Midede Yanma', N'İlk sancılar ve yanma başlar. Bir terslik vardır.')
SET IDENTITY_INSERT [dbo].[Chapterlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Etiketler] ON 

INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (2, 1, N'melek.yaman', N'melek.yaman', N'Romantizm', N'Aşk')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (3, 1, N'berkay.oner', N'melek.yaman', N'Romantizm', N'Aşk')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (4, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Göçebe')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (5, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Göçmen')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (6, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Göç')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (7, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Köy')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (8, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Sefil')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (9, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Fakir')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (10, 2, N'melek.yaman', N'berkay.oner', N'Dram', N'Eziyet')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (13, 3, N'nirvana', N'nirvana', N'Dram', N'Dram')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (14, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Göçebe')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (15, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Göçmen')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (16, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Göç')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (17, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Köy')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (18, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Sefil')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (19, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Fakir')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (20, 2, N'berkay.oner', N'berkay.oner', N'Dram', N'Eziyet')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (21, -1, N'melek.yaman', N'nirvana', N'Dram', N'Dram')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (22, -1, N'melek.yaman', N'nirvana', N'Dram', N've')
INSERT [dbo].[Etiketler] ([ID], [KitapID], [KullaniciAdi], [YazarAdi], [KitapTuru], [Etiketler]) VALUES (23, -1, N'melek.yaman', N'nirvana', N'Dram', N'Eziyet')
SET IDENTITY_INSERT [dbo].[Etiketler] OFF
GO
SET IDENTITY_INSERT [dbo].[GunlukAktifSureler] ON 

INSERT [dbo].[GunlukAktifSureler] ([ID], [KullaniciAdi], [AktifSure], [Ilk Kayit]) VALUES (2, N'berkay.oner', 6, CAST(N'2024-01-26T00:15:30.007' AS DateTime))
SET IDENTITY_INSERT [dbo].[GunlukAktifSureler] OFF
GO
SET IDENTITY_INSERT [dbo].[HaftalikAktifSureler] ON 

INSERT [dbo].[HaftalikAktifSureler] ([ID], [KullaniciAdi], [AktifSure], [Ilk Kayit]) VALUES (1, N'berkay.oner', 6, CAST(N'2024-01-26T00:15:30.007' AS DateTime))
SET IDENTITY_INSERT [dbo].[HaftalikAktifSureler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kitaplar] ON 

INSERT [dbo].[Kitaplar] ([ID], [KullaniciAdi], [KitapAdi], [KitapTuru], [KitapKonusu], [KapakFotografi], [Etiketler], [Durum], [OkunmaSayisi], [Fiyat]) VALUES (1, N'melek.yaman', N'Meleğin Hayatı', N'Romantizm', N'Aşık olan bir kız.', N'https://pbs.twimg.com/media/B_MZ0wAXIAA00i2.jpg', N'Aşk', N'Devam Ediyor', 9, 5.0000)
INSERT [dbo].[Kitaplar] ([ID], [KullaniciAdi], [KitapAdi], [KitapTuru], [KitapKonusu], [KapakFotografi], [Etiketler], [Durum], [OkunmaSayisi], [Fiyat]) VALUES (2, N'berkay.oner', N'Sefil Hayat', N'Dram', N'Köy hayatında sağdan dola vurulan, kendi ayakları üzerinde durmayı öğrenmek ve zengin olmak isteyen Cabbar''ın Londra hikayesi.', N'https://i.pinimg.com/originals/38/e7/ea/38e7ead12c22f669f790b1e129ec3987.jpg', N'Göçebe Göçmen Göç Köy Sefil Fakir Eziyet', N'Devam Ediyor', 3, 1.0000)
INSERT [dbo].[Kitaplar] ([ID], [KullaniciAdi], [KitapAdi], [KitapTuru], [KitapKonusu], [KapakFotografi], [Etiketler], [Durum], [OkunmaSayisi], [Fiyat]) VALUES (3, N'nirvana', N'Hurts My Stomach', N'Dram', N'Kurt Cobain''in çektiği acılara karşı pes etmesi.', N'https://cdn.britannica.com/82/101882-050-9FA7F900/Kurt-Cobain-Nirvana-1993.jpg', N'Dram ve Eziyet', N'Devam Ediyor', 4, 0.0000)
SET IDENTITY_INSERT [dbo].[Kitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[KitapYorumlari] ON 

INSERT [dbo].[KitapYorumlari] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi], [Yorum]) VALUES (1, N'melek.yaman', N'melek.yaman', N'Meleğin Hayatı', N'Hariga bir gitap')
INSERT [dbo].[KitapYorumlari] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi], [Yorum]) VALUES (2, N'berkay.oner', N'melek.yaman', N'Meleğin Hayatı', N'Bu benim karım lan yorum yazanı keserim')
INSERT [dbo].[KitapYorumlari] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi], [Yorum]) VALUES (3, N'melek.yaman', N'melek.yaman', N'Meleğin Hayatı', N'YAA AŞKOOO')
INSERT [dbo].[KitapYorumlari] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi], [Yorum]) VALUES (4, N'berkay.oner', N'melek.yaman', N'Meleğin Hayatı', N'Uzun süredir bu kitabı okumuyordum. Özlemişim')
INSERT [dbo].[KitapYorumlari] ([ID], [KullaniciAdi], [YazarAdi], [KitapAdi], [Yorum]) VALUES (5, N'berkay.oner', N'berkay.oner', N'Sefil Hayat', N'akjshdklsa')
SET IDENTITY_INSERT [dbo].[KitapYorumlari] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre], [E-Posta], [Adi], [Soyadi], [Dogum Tarihi], [No], [Kayit Tarihi], [Yetki], [Para], [Fotograf]) VALUES (1, N'melek.yaman', N'123', N'asd@asd.asd', N'Melek', N'Yaman', CAST(N'1990-03-29' AS Date), 5448197130, CAST(N'2023-12-25' AS Date), N'Kullanici', 23.5000, N'https://pbs.twimg.com/media/B_MZ0wAXIAA00i2.jpg')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre], [E-Posta], [Adi], [Soyadi], [Dogum Tarihi], [No], [Kayit Tarihi], [Yetki], [Para], [Fotograf]) VALUES (2, N'berkay.oner', N'123', N'asd@asd.asd', N'Berkay', N'Öner', CAST(N'2004-05-01' AS Date), 5336045576, CAST(N'2023-12-25' AS Date), N'Kullanici', 20.9000, N'https://img.piri.net/resim/upload/2018/03/14/10/24/7d591a762.jpg')
INSERT [dbo].[Kullanicilar] ([ID], [KullaniciAdi], [Sifre], [E-Posta], [Adi], [Soyadi], [Dogum Tarihi], [No], [Kayit Tarihi], [Yetki], [Para], [Fotograf]) VALUES (3, N'nirvana', N'123', N'nirvana@gmail.com', N'Kurt', N'Cobain', CAST(N'1982-06-03' AS Date), 5504568213, CAST(N'2024-01-24' AS Date), N'Kullanici', 0.0000, NULL)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[Takip] ON 

INSERT [dbo].[Takip] ([ID], [KullaniciAdi], [YazarAdi]) VALUES (3, N'berkay.oner', N'melek.yaman')
SET IDENTITY_INSERT [dbo].[Takip] OFF
GO
/****** Object:  StoredProcedure [dbo].[Begenebilecekleriniz]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Begenebilecekleriniz] @KullaniciAdi varchar(50)
as

select distinct k.*
from Kitaplar k
inner join Etiketler e on k.ID = e.KitapID
inner join (
    select TOP 50 Etiketler
    from Etiketler
    where KullaniciAdi = @KullaniciAdi
    group by Etiketler
    order by COUNT(Etiketler) desc
) topEtiketler on e.Etiketler = topEtiketler.Etiketler order by k.ID desc
GO
/****** Object:  StoredProcedure [dbo].[KisiEtiketlerİ]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KisiEtiketlerİ] (
@Kullanici nvarchar(50)
)
AS

select TOP 50 Etiketler from Etiketler where KullaniciAdi = @Kullanici group by Etiketler order by COUNT(Etiketler) desc
GO
/****** Object:  StoredProcedure [dbo].[KullaniciBilgileri]    Script Date: 26.01.2024 04:16:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[KullaniciBilgileri] @user varchar(50)
as
select * from Kullanicilar where KullaniciAdi = @user
GO
USE [master]
GO
ALTER DATABASE [Gutuphane] SET  READ_WRITE 
GO
