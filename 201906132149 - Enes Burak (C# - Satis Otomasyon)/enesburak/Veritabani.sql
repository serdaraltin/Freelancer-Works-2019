USE [EnesBurak]
GO
/****** Object:  StoredProcedure [dbo].[EnCokSatanlar]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[EnCokSatanlar]
As
Begin
	select UrunId,
	COUNT(UrunId) as sayi
	from SIPARIS group by
    UrunId having 
	Count (UrunId) > 1
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriEkle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriEkle]
(
@UstKategori int,
@Ad varchar(250)
)
As
Begin
	Insert Into KATEGORI (UstKategori,Ad) Values(@UstKategori,@Ad)
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriGetirAd]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriGetirAd]
(
@Id int
)
As
Begin
	Select *From KATEGORI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriGetirId]
(
@Ad varchar(250)
)
As
Begin
	Select *From KATEGORI Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriGuncelle]
(
@Id int,
@UstKategori int,
@Ad varchar(250)
)
As
Begin
	Update KATEGORI set
	UstKategori=@UstKategori, Ad=@Ad
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriKontrol]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriKontrol]
(
@Ad varchar(250)
)
As
Begin
	Select *From KATEGORI Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriListele]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KategoriListele]
As
Begin
	Select *From KATEGORI
End
GO
/****** Object:  StoredProcedure [dbo].[KategoriSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[KullaniciEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[KullaniciGetirAd]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGetirAd]
(
@Id int
)
As
Begin
	Select *From KULLANICI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGetirId]
(
@KullaniciAd varchar(250)
)
As
Begin
	Select *From KULLANICI Where KullaniciAd=@KullaniciAd
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGetirMusteriId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGetirMusteriId]
(
@Id int
)
As
Begin
	Select *From KULLANICI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelleHesap]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciGuncelleHesap]
(
@Id int,
@Sifre varchar(250)
)
As
Begin
	Update KULLANICI set
	Sifre=@Sifre Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciKayitKontrol]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[KullaniciKayitKontrol]
(
@KullaniciAd varchar(250)
)
As
Begin
	Select *From KULLANICI Where KullaniciAd=@KullaniciAd
End
GO
/****** Object:  StoredProcedure [dbo].[KullaniciKontrol]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[KullaniciSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[MarkaEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[MarkaGetirAd]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaGetirAd]
(
@Id int
)
As
Begin
	Select *From MARKA Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaGetirId]
(
@Ad varchar(250)
)
As
Begin
	Select *From MARKA Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[MarkaListele]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MarkaListele]
As
Begin
	Select *From MARKA
End
GO
/****** Object:  StoredProcedure [dbo].[MarkaSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[MusteriEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[MusteriGetirAd]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriGetirAd]
(
@Id int
)
As
Begin
	Select *From MUSTERI Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriGetirHesap]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriGetirHesap]
(
@Id int
)
As
Begin
	Select *From MUSTERI Where	Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[MusteriGetirId]
(
@Ad varchar(250),
@Soyad varchar(250),
@TelefonNo varchar(250),
@Eposta varchar(250)
)
As
Begin
	Select *From MUSTERI Where Ad=@Ad and Soyad=@Soyad and TelefonNo=@TelefonNo and Eposta=@Eposta
End
GO
/****** Object:  StoredProcedure [dbo].[MusteriGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SepetAdetGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetAdetGuncelle]
(
@Id int,
@Adet int
)
As
Begin
	Update SEPET set
	Adet=@Adet Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SepetEkle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetEkle]
(
@KullaniciId int,
@UrunId int,
@Adet int
)
As
Begin
	Insert Into SEPET
	(KullaniciId,UrunId,Adet)
	Values (@KullaniciId,@UrunId,@Adet)
End
GO
/****** Object:  StoredProcedure [dbo].[SepetGetirAdet]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetGetirAdet]
(
@KullaniciId int,
@UrunId int
)
As
Begin
	Select *From SEPET Where KullaniciId=@KullaniciId and UrunId=@UrunId
End
GO
/****** Object:  StoredProcedure [dbo].[SepetGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetGetirId]
(
@KullaniciId int,
@UrunId int
)
As
Begin
	Select *From SEPET Where KullaniciId=@KullaniciId and UrunId=@UrunId
End
GO
/****** Object:  StoredProcedure [dbo].[SepetGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetGuncelle]
(
@Id int,
@UrunId int,
@Adet int
)
As
Begin
	Update SEPET set
	UrunId=@UrunId, Adet=@Adet
	Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SepetKontrol]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetKontrol]
(
@Id int
)
As
Begin
	Select *From SEPET Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SepetListele]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetListele]
(
@KullaniciId int
)
As
Begin
	Select *From SEPET Where KullaniciId=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[SepetSil]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SepetSil]
(
@Id int
)
As
Begin
	Delete SEPET Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SiparisGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[SiparisListele]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[SiparisListele]
As
Begin
	Select *From SIPARIS
End
GO
/****** Object:  StoredProcedure [dbo].[SiparisSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[StokEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[StokGetirAdet]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[StokGetirAdet]
(
@UrunId int
)
As
Begin
	Select *From STOK Where	UrunId=@UrunId
End
GO
/****** Object:  StoredProcedure [dbo].[StokGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[StokSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[UrunEkle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[UrunGetirAd]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGetirAd]
(
@Id int
)
As
Begin
	Select *From URUN Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunGetirBilgi]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGetirBilgi]
(
@Id int
)
As
Begin
	Select *From URUN Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGetirId]
(
@Ad varchar(250)
)
As
Begin
	Select *From URUN Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[UrunGetirOlcu]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunGetirOlcu]
(
@Id int
)
As
Begin
	Select *From URUN Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[UrunGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[UrunKontrol]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunKontrol]
(
@Ad varchar(250)
)
As
Begin
	Select *From URUN Where Ad=@Ad
End
GO
/****** Object:  StoredProcedure [dbo].[UrunMiktarListele]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UrunMiktarListele]
As
Begin
	Select *From URUN
End
GO
/****** Object:  StoredProcedure [dbo].[UrunSil]    Script Date: 13.06.2019 21:36:48 ******/
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
/****** Object:  StoredProcedure [dbo].[YoneticiEkle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiEkle]
(
@KullaniciId int
)
As
Begin
	Insert Into YONETICI (KullaniciId) Values(@KullaniciId)
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiGetirId]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiGetirId]
(
@KullaniciId int
)
As
Begin
	Select *From YONETICI Where KullaniciId=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiGuncelle]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiGuncelle]
(
@Id int,
@KullaniciId int
)
As
Begin
	Update YONETICI set
	KullaniciId=@KullaniciId Where Id=@Id
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiKontrol]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiKontrol]
(
@KullaniciId int
)
As
Begin
	Select *From YONETICI Where KullaniciId=@KullaniciId
End
GO
/****** Object:  StoredProcedure [dbo].[YoneticiSil]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[YoneticiSil]
(
@Id int
)
As
Begin
	Select *From YONETICI Where Id=@Id
End
GO
/****** Object:  Table [dbo].[KATEGORI]    Script Date: 13.06.2019 21:36:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KATEGORI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UstKategori] [int] NOT NULL,
	[Ad] [varchar](250) NULL,
 CONSTRAINT [PK_KATEGORI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KULLANICI]    Script Date: 13.06.2019 21:36:49 ******/
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
/****** Object:  Table [dbo].[MARKA]    Script Date: 13.06.2019 21:36:49 ******/
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
/****** Object:  Table [dbo].[MUSTERI]    Script Date: 13.06.2019 21:36:49 ******/
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
/****** Object:  Table [dbo].[SEPET]    Script Date: 13.06.2019 21:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEPET](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
	[UrunId] [int] NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_SEPET] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SIPARIS]    Script Date: 13.06.2019 21:36:49 ******/
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
/****** Object:  Table [dbo].[STOK]    Script Date: 13.06.2019 21:36:49 ******/
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
/****** Object:  Table [dbo].[URUN]    Script Date: 13.06.2019 21:36:49 ******/
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
	[Miktar] [varchar](250) NULL,
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
/****** Object:  Table [dbo].[YONETICI]    Script Date: 13.06.2019 21:36:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YONETICI](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NULL,
 CONSTRAINT [PK_YONETICI] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[KATEGORI] ADD  CONSTRAINT [DF_KATEGORI_UstKategori]  DEFAULT ((0)) FOR [UstKategori]
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
