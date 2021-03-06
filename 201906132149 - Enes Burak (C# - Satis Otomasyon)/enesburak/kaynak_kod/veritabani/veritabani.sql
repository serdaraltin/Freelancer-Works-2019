USE [master]
GO
/****** Object:  Database [EnesBurak]    Script Date: 20.06.2019 13:18:09 ******/
CREATE DATABASE [EnesBurak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnesBurak', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EnesBurak.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'EnesBurak_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\EnesBurak_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [EnesBurak] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnesBurak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnesBurak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnesBurak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnesBurak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnesBurak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnesBurak] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnesBurak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnesBurak] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [EnesBurak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnesBurak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnesBurak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnesBurak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnesBurak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnesBurak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnesBurak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnesBurak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnesBurak] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EnesBurak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnesBurak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnesBurak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnesBurak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnesBurak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnesBurak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnesBurak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnesBurak] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EnesBurak] SET  MULTI_USER 
GO
ALTER DATABASE [EnesBurak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnesBurak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnesBurak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnesBurak] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [EnesBurak]
GO
/****** Object:  StoredProcedure [dbo].[KategoriEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriEkle]
(
@Ad varchar(250)
)
As
Begin
	Insert Into KATEGORI (Ad) Values(@Ad)
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriGuncelle]
(
@Id int,
@Ad varchar(250)
)
As
Begin
	Update KATEGORI set Ad=@Ad
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriSil]
(
@Id int
)
As
Begin
	Delete KATEGORI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciEkle]
(
@MusteriId int,
@KullaniciAd varchar(250),
@Sifre varchar(250)
)
As
Begin
	Insert Into KULLANICI (MusteriId,KullaniciAd,Sifre)
	Values (@MusteriId,@KullaniciAd,@Sifre)
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGuncelle]
(
@Id int,
@MusteriId int,
@KullaniciAd varchar(250),
@Sifre varchar(250)
)
As
Begin
	Update KULLANICI set 
	MusteriId=@MusteriId, KullaniciAd=@KullaniciAd, Sifre=@Sifre
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciKontrol]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciKontrol]
(
@KullaniciAd varchar(250),
@Sifre varchar(250)
)
As
Begin
	Select *From KULLANICI Where KullaniciAd=@KullaniciAd and Sifre=@Sifre
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciSil]
(
@Id int
)
As
Begin
	Delete KULLANICI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaEkle]
(
@Ad varchar(250)
)
As
Begin
	Insert Into MARKA (Ad) Values(@Ad)
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaGuncelle]
(
@Id int,
@Ad varchar(250)
)
As
Begin
	Update MARKA set
	Ad=@Ad
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaSil]
(
@Id int
)
As
Begin
	Delete MARKA Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriEkle]
(
@Ad varchar(250),
@Soyad varchar(250),
@Cinsiyet varchar(50),
@Yas int,
@TelefonNo varchar(250),
@Eposta varchar(250)
)
As
Begin
	Insert Into MUSTERI (Ad,Soyad,Cinsiyet,Yas,TelefonNo,Eposta)
	Values (@Ad,@Soyad,@Cinsiyet,@Yas,@TelefonNo,@Eposta)
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriGuncelle]
(
@Id int,
@Ad varchar(250),
@Soyad varchar(250),
@Cinsiyet varchar(50),
@Yas int,
@TelefonNo varchar(250),
@Eposta varchar(250)
)
As
Begin
	Update MUSTERI set
	Ad=@Ad, Soyad=@Soyad, Cinsiyet=@Cinsiyet, Yas=@Yas, TelefonNo=@TelefonNo, Eposta=@Eposta
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisEkle]
(
@KullaniciId int,
@UrunId int,
@Adet int,
@Tarih datetime
)
As
Begin
	Insert Into SIPARIS
	(KullaniciId,UrunId,Adet,Tarih)
	Values (@KullaniciId,@UrunId,@Adet,@Tarih)
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisGuncelle]
(
@Id int,
@KullaniciId int,
@UrunId int,
@Adet int,
@Tarih datetime
)
As
Begin
	Update SIPARIS set
	KullaniciId=@KullaniciId, UrunId=@UrunId, Adet=@Adet, Tarih=@Tarih
	Where Id=@Id	
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisSil]
(
@Id int
)
As
Begin
	Delete SIPARIS Where Id=@Id	
End
GO
/****** Object:  StoredProcedure [dbo].[StokEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[StokEkle]
(
@UrunId int,
@Adet int
)
As
Begin
	Insert Into STOK
	(UrunId,Adet)
	Values (@UrunId,@Adet)
End
GO
/****** Object:  StoredProcedure [dbo].[StokGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[StokGuncelle]
(
@Id int,
@UrunId int,
@Adet int
)
As
Begin
	Update STOK set
	UrunId=@UrunId, Adet=@Adet
	Where Id=@Adet
End
GO
/****** Object:  StoredProcedure [dbo].[StokSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[StokSil]
(
@Id int
)
As
Begin
	Delete STOK Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunEkle]
(
@KategoriId int,
@MarkaId int,
@Miktar float,
@Olcu varchar(250),
@Ad varchar(250),
@Fiyat float,
@Aciklama text
)
As
Begin
	Insert Into URUN
	(KategoriId,MarkaId,Miktar,Olcu,Ad,Fiyat,Aciklama)
	Values (@KategoriId,@MarkaId,@Miktar,@Olcu,@Ad,@Fiyat,@Aciklama)
End
GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelle]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGuncelle]
(
@Id int,
@KategoriId int,
@MarkaId int,
@Miktar float,
@Olcu varchar(250),
@Ad varchar(250),
@Fiyat float,
@Aciklama text
)
As
Begin
	Update URUN set
	KategoriId=@KategoriId, MarkaId=@MarkaId, Miktar=@Miktar, Olcu=@Olcu, Ad=@Ad, Fiyat=@Fiyat, Aciklama=@Aciklama
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunSil]
(
@Id int
)
As
Begin
	Delete URUN Where Id=@Id
End
GO
/****** Object:  Table [dbo].[KATEGORI]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KATEGORI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](250) NULL,
 CONSTRAINT [PK_KATEGORI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KULLANICI]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KULLANICI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MusteriId] [int] NULL,
	[KullaniciAd] [varchar](250) NULL,
	[Sifre] [varchar](250) NULL,
 CONSTRAINT [PK_KULLANICI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MARKA]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MARKA](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](250) NULL,
 CONSTRAINT [PK_MARKA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MUSTERI]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MUSTERI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](250) NULL,
	[Soyad] [varchar](250) NULL,
	[Cinsiyet] [varchar](50) NULL,
	[Yas] [int] NULL,
	[TelefonNo] [varchar](250) NULL,
	[Eposta] [varchar](250) NULL,
 CONSTRAINT [PK_MUSTERI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SIPARIS]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIPARIS](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[UrunId] [int] NULL,
	[Adet] [int] NULL,
	[Tarih] [datetime] NULL,
 CONSTRAINT [PK_SIPARIS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[STOK]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STOK](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_STOK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[URUN]    Script Date: 20.06.2019 13:18:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[URUN](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriId] [int] NULL,
	[MarkaId] [int] NULL,
	[Miktar] [float] NULL,
	[Olcu] [varchar](250) NULL,
	[Ad] [varchar](250) NULL,
	[Fiyat] [float] NULL,
	[Aciklama] [text] NULL,
 CONSTRAINT [PK_URUN] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[KULLANICI]  WITH CHECK ADD  CONSTRAINT [FK_KULLANICI_MUSTERI] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[MUSTERI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KULLANICI] CHECK CONSTRAINT [FK_KULLANICI_MUSTERI]
GO
ALTER TABLE [dbo].[SIPARIS]  WITH CHECK ADD  CONSTRAINT [FK_SIPARIS_KULLANICI] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[KULLANICI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SIPARIS] CHECK CONSTRAINT [FK_SIPARIS_KULLANICI]
GO
ALTER TABLE [dbo].[SIPARIS]  WITH CHECK ADD  CONSTRAINT [FK_SIPARIS_URUN] FOREIGN KEY([UrunId])
REFERENCES [dbo].[URUN] ([Id])
GO
ALTER TABLE [dbo].[SIPARIS] CHECK CONSTRAINT [FK_SIPARIS_URUN]
GO
ALTER TABLE [dbo].[STOK]  WITH CHECK ADD  CONSTRAINT [FK_STOK_URUN] FOREIGN KEY([UrunId])
REFERENCES [dbo].[URUN] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[STOK] CHECK CONSTRAINT [FK_STOK_URUN]
GO
ALTER TABLE [dbo].[URUN]  WITH CHECK ADD  CONSTRAINT [FK_URUN_KATEGORI] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[KATEGORI] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[URUN] CHECK CONSTRAINT [FK_URUN_KATEGORI]
GO
ALTER TABLE [dbo].[URUN]  WITH CHECK ADD  CONSTRAINT [FK_URUN_MARKA] FOREIGN KEY([MarkaId])
REFERENCES [dbo].[MARKA] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[URUN] CHECK CONSTRAINT [FK_URUN_MARKA]
GO
USE [master]
GO
ALTER DATABASE [EnesBurak] SET  READ_WRITE 
GO
