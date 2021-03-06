USE [sozluk]
GO
/****** Object:  StoredProcedure [dbo].[bilgisayar_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[bilgisayar_ara]
@bilgisayar varchar(50)
As
Begin
Select *From bilgisayar
Where terim Like '%' + @bilgisayar + '%'
End
GO
/****** Object:  StoredProcedure [dbo].[bilgisayar_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[bilgisayar_ara_tam]
@bilgisayar varchar(50)
As
Begin
Select *From bilgisayar
Where terim=@bilgisayar
End
GO
/****** Object:  StoredProcedure [dbo].[bilgisayar_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[bilgisayar_ekle]
@terim varchar(50),
@anlam text
As
Begin
Insert Into bilgisayar
(terim,anlam)
values(@terim,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[bilisim_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[bilisim_ara]
@bilisim varchar(50)
As
Begin
Select *From bilisim
Where terim Like '%' + @bilisim + '%'
End
GO
/****** Object:  StoredProcedure [dbo].[bilisim_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[bilisim_ara_tam]
@bilisim varchar(50)
As
Begin
Select *From bilisim
Where terim=@bilisim
End
GO
/****** Object:  StoredProcedure [dbo].[bilisim_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[bilisim_ekle]
@terim varchar(50),
@anlam text
As
Begin
Insert Into bilisim
(terim,anlam)
values(@terim,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[elektronik_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[elektronik_ara]
@elektronik varchar(50)
As
Begin
Select *From elektronik
Where terim Like '%' + @elektronik + '%'
End
GO
/****** Object:  StoredProcedure [dbo].[elektronik_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[elektronik_ara_tam]
@elektronik varchar(50)
As
Begin
Select *From elektronik
Where terim=@elektronik
End
GO
/****** Object:  StoredProcedure [dbo].[elektronik_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[elektronik_ekle]
@terim varchar(50),
@anlam text
As
Begin
Insert Into elektronik
(terim,anlam)
values(@terim,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[ingilizce_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ingilizce_ara]
@ingilizce varchar(50)
As
Begin
Select *From ingilizce_turkce
Where ingilizce Like '%' + @ingilizce + '%' 
End
GO
/****** Object:  StoredProcedure [dbo].[ingilizce_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[ingilizce_ara_tam]
@ingilizce varchar(50)
As
Begin
Select *From ingilizce_turkce
Where ingilizce=@ingilizce
End
GO
/****** Object:  StoredProcedure [dbo].[ingilizce_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Proc [dbo].[ingilizce_ekle]
@ingilizce varchar(50),
@turkce varchar(50),
@anlam text
As
Begin
Insert Into ingilizce_turkce
(ingilizce,turkce,anlam)
values(@ingilizce,@turkce,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[teknik_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[teknik_ara]
@teknik varchar(50)
As
Begin
Select *From teknik
Where terim Like '%' + @teknik + '%'
End
GO
/****** Object:  StoredProcedure [dbo].[teknik_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[teknik_ara_tam]
@teknik varchar(50)
As
Begin
Select *From teknik
Where terim=@teknik
End
GO
/****** Object:  StoredProcedure [dbo].[teknik_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[teknik_ekle]
@terim varchar(50),
@anlam text
As
Begin
Insert Into teknik
(terim,anlam)
values(@terim,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[tip_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[tip_ara]
@tip varchar(50)
As
Begin
Select *From tip
Where terim Like '%' + @tip + '%'
End
GO
/****** Object:  StoredProcedure [dbo].[tip_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[tip_ara_tam]
@tip varchar(50)
As
Begin
Select *From tip
Where terim=@tip
End
GO
/****** Object:  StoredProcedure [dbo].[tip_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


Create Proc [dbo].[tip_ekle]
@terim varchar(50),
@anlam text
As
Begin
Insert Into tip
(terim,anlam)
values(@terim,@anlam)
End
GO
/****** Object:  StoredProcedure [dbo].[turkce_ara]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[turkce_ara]
@turkce varchar(50)
As
Begin
Select *From turkce_ingilizce
Where turkce Like '%' +@turkce+ '%'
End
GO
/****** Object:  StoredProcedure [dbo].[turkce_ara_tam]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[turkce_ara_tam]
@turkce varchar(50)
As
Begin
Select *From turkce_ingilizce
Where turkce=@turkce
End
GO
/****** Object:  StoredProcedure [dbo].[turkce_ekle]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[turkce_ekle]
@ingilizce varchar(50),
@turkce varchar(50),
@anlam text
As
Begin
Insert Into turkce_ingilizce
(ingilizce,turkce,anlam)
values(@ingilizce,@turkce,@anlam)
End
GO
/****** Object:  Table [dbo].[bilgisayar]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bilgisayar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terim] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_bilgisayar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bilisim]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bilisim](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terim] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_bilisim] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[elektronik]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[elektronik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terim] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_elektronik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ingilizce_turkce]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ingilizce_turkce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ingilizce] [varchar](50) NULL,
	[turkce] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_sozluk] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[teknik]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[teknik](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terim] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_teknik] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tip]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tip](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[terim] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_tip] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[turkce_ingilizce]    Script Date: 14.12.2019 20:34:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[turkce_ingilizce](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ingilizce] [varchar](50) NULL,
	[turkce] [varchar](50) NULL,
	[anlam] [text] NULL,
 CONSTRAINT [PK_turkce_ingilizce] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
