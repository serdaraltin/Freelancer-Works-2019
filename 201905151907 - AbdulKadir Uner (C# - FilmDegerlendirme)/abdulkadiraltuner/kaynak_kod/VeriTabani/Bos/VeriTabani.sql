USE [FilmDegerlendirme]
GO
/****** Object:  Table [dbo].[Film_AlintiSoz]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Film_AlintiSoz](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[FilmID] [int] NULL,
	[Cumle] [varchar](250) NULL,
 CONSTRAINT [PK_Film_AlintiSoz] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Film_Inceleme]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Film_Inceleme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[FilmID] [int] NULL,
	[Inceleme] [varchar](250) NULL,
 CONSTRAINT [PK_Film_Inceleme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Film_Izlenme]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Izlenme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[FilmID] [int] NULL,
 CONSTRAINT [PK_Film_Izlenme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Film_Puan]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film_Puan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NULL,
	[FilmID] [int] NULL,
	[Puan] [int] NULL,
 CONSTRAINT [PK_Film_Puan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Film_Tanim]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Film_Tanim](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](150) NULL,
	[Sure] [varchar](50) NULL,
	[Kategori] [int] NULL,
	[SenaristID] [int] NULL,
	[YonetmenID] [int] NULL,
	[VizyonaGirisTarih] [datetime] NULL,
 CONSTRAINT [PK_Film_Tanim] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kategori](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](100) NULL,
	[Aciklama] [varchar](250) NULL,
 CONSTRAINT [PK_Kategori] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kullanici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [varchar](150) NULL,
	[KullaniciAdi] [varchar](100) NULL,
	[EpostaAdresi] [varchar](100) NULL,
	[DogumTarihi] [datetime] NULL,
	[Sifre] [varchar](100) NULL,
	[Cinsiyet] [varchar](50) NULL,
	[Resim] [varchar](150) NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Senarist]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Senarist](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [varchar](150) NULL,
	[DogumTarihi] [datetime] NULL,
	[DogumYeri] [varchar](150) NULL,
	[OlumTarihi] [datetime] NULL,
	[Hakkinda] [varchar](250) NULL,
 CONSTRAINT [PK_Senarist] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Yonetici]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Yonetici](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](100) NULL,
	[Sifre] [varchar](100) NULL,
 CONSTRAINT [PK_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Yonetmen]    Script Date: 14.05.2019 01:26:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Yonetmen](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdiSoyadi] [varchar](150) NULL,
	[DogumTarihi] [datetime] NULL,
	[DogumYeri] [varchar](100) NULL,
	[OlumTarihi] [datetime] NULL,
	[Hakkinda] [varchar](250) NULL,
 CONSTRAINT [PK_Yonetmen] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
