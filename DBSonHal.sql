USE [CINECLUP]
GO
/****** Object:  Table [dbo].[FILM]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FILM](
	[FilmID] [int] IDENTITY(1,1) NOT NULL,
	[Film_Adı] [nvarchar](50) NOT NULL,
	[Yapım_Yılı] [int] NOT NULL,
	[A_D] [bit] NOT NULL,
	[D3] [bit] NOT NULL,
	[Ekleme_Tarihi] [date] NOT NULL,
	[Bitis_Tarihi] [date] NOT NULL,
	[Afis_URL] [nvarchar](max) NOT NULL,
	[GeldiMi] [bit] NOT NULL,
 CONSTRAINT [PK_FILM_1] PRIMARY KEY CLUSTERED 
(
	[FilmID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[FILM] ON
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (1, N'Hunger Games', 2012, 0, 0, CAST(0x74350B00 AS Date), CAST(0x81350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMjI4MzcwNjA4Ml5BMl5BanBnXkFtZTcwODI4MDIwNg@@._V1_.jpg', 1)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (3, N'The Deep Blue Sea', 2012, 1, 0, CAST(0x79350B00 AS Date), CAST(0x81350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMTgxODQyNTY0MV5BMl5BanBnXkFtZTcwMjMwMjU0Nw@@._V1_.jpg', 1)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (5, N'October Baby', 2012, 0, 0, CAST(0x98350B00 AS Date), CAST(0xA8350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMTczMjc5NDExMF5BMl5BanBnXkFtZTcwNjkwNTY0Nw@@._V1_.jpg', 0)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (6, N'Musical Chairs', 2012, 1, 0, CAST(0x79350B00 AS Date), CAST(0x9D350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMTkxODc4MzkyN15BMl5BanBnXkFtZTcwMzk1MTA0Nw@@._V1_.jpg', 1)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (9, N'21 Jump Street', 2012, 0, 0, CAST(0x98350B00 AS Date), CAST(0xB6350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMTc3NzQ3OTg3NF5BMl5BanBnXkFtZTcwMjk5OTcxNw@@._V1_.jpg', 0)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (10, N'The Lorax', 2012, 0, 1, CAST(0xD5350B00 AS Date), CAST(0xEF350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BMTU1MTAwMjk1NF5BMl5BanBnXkFtZTcwMDI5NDc4Ng@@._V1_.jpg', 0)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (15, N'Merlin', 1989, 0, 1, CAST(0x68350B00 AS Date), CAST(0x85350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BNjkyOTI5MDA0Ml5BMl5BanBnXkFtZTcwOTU3NzExNw@@._V1_.jpg', 0)
INSERT [dbo].[FILM] ([FilmID], [Film_Adı], [Yapım_Yılı], [A_D], [D3], [Ekleme_Tarihi], [Bitis_Tarihi], [Afis_URL], [GeldiMi]) VALUES (16, N'film1', 1989, 0, 1, CAST(0x83350B00 AS Date), CAST(0xAE350B00 AS Date), N'http://ia.media-imdb.com/images/M/MV5BNjkyOTI5MDA0Ml5BMl5BanBnXkFtZTcwOTU3NzExNw@@._V1_.jpg', 1)
SET IDENTITY_INSERT [dbo].[FILM] OFF
/****** Object:  Table [dbo].[KULLANICI]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KULLANICI](
	[Kullanici_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_Tipi] [bit] NOT NULL,
	[Eposta] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](max) NOT NULL,
	[Kayit_Tarihi] [date] NOT NULL,
	[Ad] [varchar](25) NOT NULL,
	[Soyad] [varchar](25) NOT NULL,
	[Puan] [int] NOT NULL,
 CONSTRAINT [PK_KULLANICI_1] PRIMARY KEY CLUSTERED 
(
	[Kullanici_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[KULLANICI] ON
INSERT [dbo].[KULLANICI] ([Kullanici_ID], [Kullanici_Tipi], [Eposta], [Sifre], [Kayit_Tarihi], [Ad], [Soyad], [Puan]) VALUES (1, 1, N'ycansener@gmail.com', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x74350B00 AS Date), N'Yiğitcan', N'ŞENER', 30)
INSERT [dbo].[KULLANICI] ([Kullanici_ID], [Kullanici_Tipi], [Eposta], [Sifre], [Kayit_Tarihi], [Ad], [Soyad], [Puan]) VALUES (4, 0, N'gzm@deneme.com', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(0x78350B00 AS Date), N'gizem', N'batmaz', 0)
INSERT [dbo].[KULLANICI] ([Kullanici_ID], [Kullanici_Tipi], [Eposta], [Sifre], [Kayit_Tarihi], [Ad], [Soyad], [Puan]) VALUES (8, 0, N'dnztmr@gmail.com', N'5844C3EA8E0985FB6EC0604F5B45E55D', CAST(0x7C350B00 AS Date), N'Deniz', N'Timur', 0)
INSERT [dbo].[KULLANICI] ([Kullanici_ID], [Kullanici_Tipi], [Eposta], [Sifre], [Kayit_Tarihi], [Ad], [Soyad], [Puan]) VALUES (10, 0, N'gzdglcvg@meh.com', N'4297F44B13955235245B2497399D7A93', CAST(0x7C350B00 AS Date), N'Gözde Gül', N'Cavga', 0)
INSERT [dbo].[KULLANICI] ([Kullanici_ID], [Kullanici_Tipi], [Eposta], [Sifre], [Kayit_Tarihi], [Ad], [Soyad], [Puan]) VALUES (17, 1, N'demene123123@deneme.com', N'8494EDC306E449469103A9E6C34577FB', CAST(0x7C350B00 AS Date), N'asdas', N'ASDAS', 0)
SET IDENTITY_INSERT [dbo].[KULLANICI] OFF
/****** Object:  Table [dbo].[SALON]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALON](
	[Salon_ID] [int] IDENTITY(1,1) NOT NULL,
	[Salon_Adı] [varchar](25) NOT NULL,
	[Kapasite] [int] NOT NULL,
	[Eklenme_Tarihi] [date] NOT NULL,
	[Açıklama] [text] NULL,
 CONSTRAINT [PK_SALON_1] PRIMARY KEY CLUSTERED 
(
	[Salon_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SALON] ON
INSERT [dbo].[SALON] ([Salon_ID], [Salon_Adı], [Kapasite], [Eklenme_Tarihi], [Açıklama]) VALUES (18, N'Salon1', 150, CAST(0x7C350B00 AS Date), N'sdasdasda ')
SET IDENTITY_INSERT [dbo].[SALON] OFF
/****** Object:  Table [dbo].[YORUM]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YORUM](
	[Yorum_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanici_ID] [int] NOT NULL,
	[Film_ID] [int] NOT NULL,
	[Yorum] [text] NOT NULL,
	[Tarih] [date] NOT NULL,
	[Saat] [time](7) NOT NULL,
 CONSTRAINT [PK_YORUM] PRIMARY KEY CLUSTERED 
(
	[Yorum_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[TumSalonlariCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[TumSalonlariCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from SALON
end
GO
/****** Object:  StoredProcedure [dbo].[VizyondakiFilmleriCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VizyondakiFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from FILM
	where GeldiMi = 'True' and Bitis_Tarihi > CONVERT(date,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[TumKullanicilariCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TumKullanicilariCek]

AS
BEGIN
	SET NOCOUNT ON;
	select *
	from KULLANICI
end
GO
/****** Object:  StoredProcedure [dbo].[TumFilmleriCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TumFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from FILM
end
GO
/****** Object:  StoredProcedure [dbo].[TekSalonAdiGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TekSalonAdiGetir]
	@salonID int
AS
BEGIN
	SET NOCOUNT ON;
	select Salon_Adı
	from SALON
	where Salon_ID = @salonID

end
GO
/****** Object:  StoredProcedure [dbo].[FilmGuncelle]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmGuncelle] 
	@filmID int,
	@filmAdi nvarchar(50),
	@yapimYili int,
	@a_d bit,
	@d3 bit,
	@eklemeTarihi date,
	@bitisTarihi date,
	@afisURL nvarchar(max),
	@geldiMi bit
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from FILM where @filmID = FilmID)
		begin 
		RAISERROR ('Aranan IDye sahip bir film bulunamadı.',12,1)
		end
		else begin
		update FILM set Film_Adı = @filmAdi,Yapım_Yılı = @yapimYili,A_D = @a_d,D3 = @d3,Ekleme_Tarihi = @eklemeTarihi,Bitis_Tarihi = @bitisTarihi,Afis_URL = @afisURL,GeldiMi = @geldiMi
		where @filmID = FilmID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[FilmGeldi]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[FilmGeldi] 
	@filmID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from FILM where @filmID = FilmID)
		begin 
		RAISERROR ('Bu IDye sahip film bulunmamaktadır!',12,1)
		end
		else begin
		update FILM set GeldiMi = 'true' where @filmID = FilmID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[FilmEkle]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmEkle] 
	@filmAdi nvarchar(50),
	@yapimYili int,
	@a_d bit,
	@d3 bit,
	@eklemeTarihi date,
	@bitisTarihi date,
	@afisURL nvarchar(max),
	@geldiMi bit
AS
BEGIN
		SET NOCOUNT ON;
	
		if exists (select * from FILM where @filmAdi = Film_Adı and @yapimYili = Yapım_Yılı)
		begin 
		RAISERROR ('Bu mail adresi ile kayıtlı başka bir kullanıcı bulunmaktadır!',12,1)
		end
		else begin
		insert into FILM values (@filmAdi,@yapimYili,@a_d,@d3,@eklemeTarihi,@bitisTarihi,@afisURL,@geldiMi)
		end
END
GO
/****** Object:  StoredProcedure [dbo].[FilmAraID]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[FilmAraID]
	@filmID int
AS
BEGIN
	SET NOCOUNT ON;
		select * from FILM where FILM.FilmID = @filmID
end
GO
/****** Object:  StoredProcedure [dbo].[FilmAraGenel]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmAraGenel]
	@filmAdi nvarchar(max)

AS
BEGIN
	SET NOCOUNT ON;


		select * from FILM where FILM.Film_Adı like '%' + @filmAdi + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[FilmAra]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[FilmAra]
	@islem_turu int,
	@parametre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	if(@islem_turu = 0)
	begin
		if not exists (select * from FILM where FILM.FilmID = CONVERT(int,@parametre))		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.FilmID = CONVERT(int,@parametre)
		end
	end
	else if(@islem_turu = 1)
	begin
		if not exists (select * from FILM where FILM.Film_Adı like '%'+@parametre+'%')		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.Film_Adı like '%'+@parametre+'%'
		end
	end
	else if(@islem_turu = 2)
	begin
		if not exists (select * from FILM where FILM.Yapım_Yılı = CONVERT(int,@parametre))		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.Yapım_Yılı = CONVERT(int,@parametre)	
		end
	end
	else if(@islem_turu = 3)
	begin
		if not exists (select * from FILM where FILM.A_D = CONVERT(bit,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.A_D = CONVERT(bit,@parametre)
		end
	end
	else if(@islem_turu = 4)
	begin
		if not exists (select * from FILM where FILM.D3 = CONVERT(bit,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.D3 = CONVERT(bit,@parametre)
		end
	end
	else if(@islem_turu = 5)
	begin
		if not exists (select * from FILM where FILM.Ekleme_Tarihi = CONVERT(date,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.Ekleme_Tarihi = CONVERT(date,@parametre) 	
		end
	end
	else if(@islem_turu = 6)
	begin
		if not exists (select * from FILM where FILM.Bitis_Tarihi = CONVERT(date,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.Bitis_Tarihi = CONVERT(date,@parametre) 	
		end
	end
	else if(@islem_turu = 7)
	begin
		if not exists (select * from FILM where FILM.GeldiMi = CONVERT(bit,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,12)
		end
		else begin
		select * from FILM where FILM.GeldiMi = CONVERT(bit,@parametre)
		end
	end
end
GO
/****** Object:  Table [dbo].[SEANS]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEANS](
	[Seans_ID] [int] IDENTITY(1,1) NOT NULL,
	[Film_ID] [int] NOT NULL,
	[Salon_ID] [int] NOT NULL,
	[Saat] [time](7) NOT NULL,
 CONSTRAINT [PK_SEANS_1] PRIMARY KEY CLUSTERED 
(
	[Seans_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SEANS] ON
INSERT [dbo].[SEANS] ([Seans_ID], [Film_ID], [Salon_ID], [Saat]) VALUES (4, 16, 18, CAST(0x070080461C860000 AS Time))
SET IDENTITY_INSERT [dbo].[SEANS] OFF
/****** Object:  StoredProcedure [dbo].[SalonSil]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SalonSil] 
	@salonID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from SALON where @salonID = Salon_ID)
		begin 
		RAISERROR ('Bu IDye sahip bir salon bulunamadı.	',12,1)
		end
		else begin
		delete from SALON where @salonID = Salon_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SalonGuncelle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalonGuncelle] 
	@salonID int,
	@salonAdi nvarchar(25),
	@kapasite int,
	@aciklama nvarchar(max)
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from SALON where @salonID = Salon_ID)
		begin 
		RAISERROR ('Bu IDye sahip bir salon bulunamadı.	',12,1)
		end
		else begin
		update SALON set Salon_Adı = @salonAdi,Kapasite = @kapasite,Eklenme_Tarihi = CONVERT(date,GETDATE()),Açıklama = @aciklama
		where @salonID = Salon_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SalonEkle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SalonEkle] 
	@salonAdi nvarchar(25),
	@kapasite int,
	@aciklama nvarchar(max)
AS
BEGIN
		SET NOCOUNT ON;
	
		if exists (select * from SALON where @salonAdi = Salon_Adı)
		begin 
		RAISERROR ('Bu isimde bir salon zaten var.',12,1)
		end
		else begin
		insert into SALON values (@salonAdi,@kapasite,CONVERT(date,GETDATE()),@aciklama)
		
		
		end
		
		select @@IDENTITY as 'EklenenID'
END
GO
/****** Object:  StoredProcedure [dbo].[SalonAra]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SalonAra] 
	@islemID int,
	@parametre varchar(max)
AS
BEGIN
		SET NOCOUNT ON;
	if(@islemID = 0)
	begin
		if not exists (select * from SALON where Salon_ID = CONVERT(int,@parametre))
		begin 
		RAISERROR ('Bu IDye sahip bir salon bulunamadı.	',12,1)
		end
		else begin
		select * from SALON where Salon_ID = CONVERT(int,@parametre)
		end
	end
	else if(@islemID = 1)
	begin
		if not exists (select * from SALON where Salon_Adı like '%'+@parametre+'%')
		begin 
		RAISERROR ('Bu kelimeyi içeren isme sahip bir salon bulunamadı.	',12,1)
		end
		else begin
		select * from SALON where Salon_Adı like '%'+@parametre+'%'
		end
	end
	else if(@islemID = 2)
	begin
		if not exists (select * from SALON where Kapasite = CONVERT(int,@parametre))
		begin 
		RAISERROR ('Bu kapasiteye sahip bir salon bulunamadı.',12,1)
		end
		else begin
		select * from SALON where Kapasite = CONVERT(int,@parametre)
		end
	end
	else if(@islemID = 3)
	begin
		if not exists (select * from SALON where Eklenme_Tarihi > CONVERT(date,@parametre))
		begin 
		RAISERROR ('Bu tarihten sonra eklenmiş bir salon bulunamadı.',12,1)
		end
		else begin
		select * from SALON where Eklenme_Tarihi > CONVERT(date,@parametre)
		end
	end
	else if(@islemID = 4)
	begin
		if not exists (select * from SALON where Eklenme_Tarihi < CONVERT(date,@parametre))
		begin 
		RAISERROR ('Bu tarihten önce eklenmiş bir salon bulunamadı.',12,1)
		end
		else begin
		select * from SALON where Eklenme_Tarihi < CONVERT(date,@parametre)
		end
	end
	else if(@islemID = 5)
	begin
		if not exists (select * from SALON where Eklenme_Tarihi = CONVERT(date,@parametre))
		begin 
		RAISERROR ('Bu tarihte eklenmiş bir salon bulunamadı.',12,1)
		end
		else begin
		select * from SALON where Eklenme_Tarihi = CONVERT(date,@parametre)
		end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSorgula]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[KullaniciSorgula]
	@mail varchar(max),
	@sifre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
		select * from KULLANICI where @mail = Eposta and @sifre = Sifre
end
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSil]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciSil]
	@K_ID int
AS
BEGIN
	SET NOCOUNT ON;
		if not exists (select * from KULLANICI where Kullanici_ID = @K_ID)
		begin 
		RAISERROR ('KULLANICI kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from KULLANICI where Kullanici_ID = @K_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciSifreSifirla]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciSifreSifirla]

	@mail nvarchar(50),
	@sifre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
		if not exists (select * from KULLANICI where Eposta = @mail)		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',12,1)
		end
		else begin
		update KULLANICI set Sifre = @sifre where Eposta = @mail
		end
end
GO
/****** Object:  StoredProcedure [dbo].[KullaniciPuaniArttir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[KullaniciPuaniArttir]
	@K_ID int,
	@artis int
AS
BEGIN
	SET NOCOUNT ON;
		if not exists (select * from KULLANICI where KULLANICI.Kullanici_ID = @K_ID)		
		begin
		raiserror('Kullanıcı bulunamadı.',1,10)
		end
		else begin
		update KULLANICI set Puan = Puan + @artis where Kullanici_ID = @K_ID
		end
end
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciGuncelle]
	@K_ID int,
	@tip bit,
	@Ad nvarchar(max),
	@Soyad nvarchar(max),
	@mail nvarchar(50),
	@sifre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
		if not exists (select * from KULLANICI where KULLANICI.Kullanici_ID = @K_ID)		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		update KULLANICI set Kullanici_Tipi = @tip,Ad = @Ad, Soyad = @Soyad, Eposta = @mail, Sifre = @sifre where Kullanici_ID = @K_ID
		end
end
GO
/****** Object:  StoredProcedure [dbo].[KullaniciEkle]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciEkle] 
	@K_tipi bit,
	@E_posta nvarchar(50),
	@Sifre nvarchar(max),
	@K_adi varchar(25),
	@K_soyadi varchar(25)
AS
BEGIN
		SET NOCOUNT ON;
	
		if exists (select * from KULLANICI where @E_posta = Eposta)
		begin 
		RAISERROR ('Bu mail adresi ile kayıtlı başka bir kullanıcı bulunmaktadır!',10,1)
		end
		else begin
		insert into KULLANICI values (@K_tipi,@E_posta,@Sifre,GETDATE(),@K_adi,@K_soyadi,0)
		end
END
GO
/****** Object:  StoredProcedure [dbo].[KullaniciAraGenel]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciAraGenel]
	@parametre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	begin
		select distinct * from KULLANICI where 
		KULLANICI.Eposta like '%' + @parametre +'%' or KULLANICI.Ad like '%' + @parametre +'%'
		or KULLANICI.Soyad like '%' + @parametre +'%'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[KullaniciAra]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KullaniciAra]
	@islem_turu int,
	@parametre nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	if(@islem_turu = 0)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Kullanici_ID = CONVERT(int,@parametre))		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Kullanici_ID = CONVERT(int,@parametre)
		end
	end
	else if(@islem_turu = 1)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Kullanici_Tipi = CONVERT(int,@parametre))		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Kullanici_Tipi = CONVERT(int,@parametre)
		end
	end
	else if(@islem_turu = 2)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Eposta like '%' + @parametre +'%' )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Eposta like '%' + @parametre +'%'		
		end
	end
	else if(@islem_turu = 3)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Kayit_Tarihi = CONVERT(date,@parametre) )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Kayit_Tarihi = CONVERT(date,@parametre)
		end
	end
	else if(@islem_turu = 4)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Ad like '%' + @parametre +'%' )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Ad like '%' + @parametre +'%' 
		end
	end
	else if(@islem_turu = 5)
	begin
		if not exists (select * from KULLANICI where KULLANICI.Soyad like '%' + @parametre +'%' )		
		begin
		raiserror('Arama kriterlerine uyan bir kullanıcı bulunamadı.',1,10)
		end
		else begin
		select * from KULLANICI where KULLANICI.Soyad like '%' + @parametre +'%' 
		end
	end
end
GO
/****** Object:  Table [dbo].[KOLTUK]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KOLTUK](
	[Koltuk_ID] [int] IDENTITY(1,1) NOT NULL,
	[Salon_ID] [int] NOT NULL,
	[Satır_No] [int] NOT NULL,
	[Sutun_No] [int] NOT NULL,
	[LoveSeat] [bit] NOT NULL,
 CONSTRAINT [PK_KOLTUK] PRIMARY KEY CLUSTERED 
(
	[Koltuk_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[KOLTUK] ON
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (704, 18, 0, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (705, 18, 0, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (706, 18, 0, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (707, 18, 0, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (708, 18, 0, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (709, 18, 0, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (710, 18, 0, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (711, 18, 0, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (712, 18, 0, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (713, 18, 0, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (714, 18, 0, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (715, 18, 0, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (716, 18, 0, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (717, 18, 0, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (718, 18, 0, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (719, 18, 1, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (720, 18, 1, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (721, 18, 1, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (722, 18, 1, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (723, 18, 1, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (724, 18, 1, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (725, 18, 1, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (726, 18, 1, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (727, 18, 1, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (728, 18, 1, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (729, 18, 1, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (730, 18, 1, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (731, 18, 1, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (732, 18, 1, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (733, 18, 1, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (734, 18, 2, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (735, 18, 2, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (736, 18, 2, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (737, 18, 2, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (738, 18, 2, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (739, 18, 2, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (740, 18, 2, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (741, 18, 2, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (742, 18, 2, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (743, 18, 2, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (744, 18, 2, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (745, 18, 2, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (746, 18, 2, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (747, 18, 2, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (748, 18, 2, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (749, 18, 3, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (750, 18, 3, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (751, 18, 3, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (752, 18, 3, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (753, 18, 3, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (754, 18, 3, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (755, 18, 3, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (756, 18, 3, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (757, 18, 3, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (758, 18, 3, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (759, 18, 3, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (760, 18, 3, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (761, 18, 3, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (762, 18, 3, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (763, 18, 3, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (764, 18, 4, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (765, 18, 4, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (766, 18, 4, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (767, 18, 4, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (768, 18, 4, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (769, 18, 4, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (770, 18, 4, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (771, 18, 4, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (772, 18, 4, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (773, 18, 4, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (774, 18, 4, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (775, 18, 4, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (776, 18, 4, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (777, 18, 4, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (778, 18, 4, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (779, 18, 5, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (780, 18, 5, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (781, 18, 5, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (782, 18, 5, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (783, 18, 5, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (784, 18, 5, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (785, 18, 5, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (786, 18, 5, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (787, 18, 5, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (788, 18, 5, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (789, 18, 5, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (790, 18, 5, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (791, 18, 5, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (792, 18, 5, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (793, 18, 5, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (794, 18, 6, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (795, 18, 6, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (796, 18, 6, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (797, 18, 6, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (798, 18, 6, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (799, 18, 6, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (800, 18, 6, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (801, 18, 6, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (802, 18, 6, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (803, 18, 6, 9, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (804, 18, 6, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (805, 18, 6, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (806, 18, 6, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (807, 18, 6, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (808, 18, 6, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (809, 18, 7, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (810, 18, 7, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (811, 18, 7, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (812, 18, 7, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (813, 18, 7, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (814, 18, 7, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (815, 18, 7, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (816, 18, 7, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (817, 18, 7, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (818, 18, 7, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (819, 18, 7, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (820, 18, 7, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (821, 18, 7, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (822, 18, 7, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (823, 18, 7, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (824, 18, 8, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (825, 18, 8, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (826, 18, 8, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (827, 18, 8, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (828, 18, 8, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (829, 18, 8, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (830, 18, 8, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (831, 18, 8, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (832, 18, 8, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (833, 18, 8, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (834, 18, 8, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (835, 18, 8, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (836, 18, 8, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (837, 18, 8, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (838, 18, 8, 14, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (839, 18, 9, 0, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (840, 18, 9, 1, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (841, 18, 9, 2, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (842, 18, 9, 3, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (843, 18, 9, 4, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (844, 18, 9, 5, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (845, 18, 9, 6, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (846, 18, 9, 7, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (847, 18, 9, 8, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (848, 18, 9, 9, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (849, 18, 9, 10, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (850, 18, 9, 11, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (851, 18, 9, 12, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (852, 18, 9, 13, 0)
INSERT [dbo].[KOLTUK] ([Koltuk_ID], [Salon_ID], [Satır_No], [Sutun_No], [LoveSeat]) VALUES (853, 18, 9, 14, 0)
SET IDENTITY_INSERT [dbo].[KOLTUK] OFF
/****** Object:  StoredProcedure [dbo].[GelecekProgramGetir]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

create PROCEDURE [dbo].[GelecekProgramGetir]
AS
BEGIN
	SET NOCOUNT ON;
	SELECT TOP (1) Film_Adı,Ekleme_Tarihi FROM FILM WHERE Ekleme_Tarihi>GETDATE() ORDER BY Ekleme_Tarihi ASC


end
GO
/****** Object:  StoredProcedure [dbo].[GelecekFilmleriCek]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GelecekFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from FILM
	where GeldiMi = 'False' and Ekleme_Tarihi > CONVERT(date,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[FilmSil]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilmSil] 
	@filmID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from FILM where @filmID = FilmID)
		begin 
		RAISERROR ('Aranan IDye sahip bir film bulunamadı.',12,1)
		end
		else begin
		delete from FILM where @filmID = FilmID
		end
END
GO
/****** Object:  Table [dbo].[REZERVASYON]    Script Date: 03/27/2012 07:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REZERVASYON](
	[Rez_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kullanıcı_ID] [int] NOT NULL,
	[Seans_ID] [int] NOT NULL,
	[Koltuk_ID] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[SatildiMi] [bit] NOT NULL,
	[Ucret] [float] NOT NULL,
 CONSTRAINT [PK_REZERVASYON_1] PRIMARY KEY CLUSTERED 
(
	[Rez_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[FilminSeanslariniGoster]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FilminSeanslariniGoster]
	@Film_ID int
AS
BEGIN
	SET NOCOUNT ON;
	select DISTINCT Saat
	from SEANS
	where SEANS.Film_ID = @Film_ID 

end
GO
/****** Object:  StoredProcedure [dbo].[KoltukSil]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KoltukSil] 
	@koltukID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from KOLTUK where @koltukID = Koltuk_ID)
		begin 
		RAISERROR ('Girilen IDye ait bir koltuk bulunamadı.',12,1)
		end
		else begin
		delete from KOLTUK where Koltuk_ID = @koltukID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[KoltukGuncelle]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KoltukGuncelle] 
	@koltukID int,
	@salonID int,
	@satirNo int,
	@sutunNo int,
	@loveSeat bit
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from KOLTUK where @koltukID = Koltuk_ID)
		begin 
		RAISERROR ('Girilen IDye ait bir koltuk bulunamadı.',12,1)
		end
		else begin
		update KOLTUK set Salon_ID = @salonID,Satır_No = @satirNo,Sutun_No = @sutunNo,LoveSeat = @loveSeat
		end
END
GO
/****** Object:  StoredProcedure [dbo].[KoltukEkle]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KoltukEkle] 
	@salonID int,
	@satirNo int,
	@sutunNo int,
	@loveSeat bit
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from SALON where @salonID = Salon_ID)
		begin 
		RAISERROR ('Olmayan bir salona koltuk eklemeye çalışıyorsunuz.',12,1)
		end
		else begin
		insert into KOLTUK values (@salonID,@satirNo,@sutunNo,@loveSeat)
		end
END
GO
/****** Object:  StoredProcedure [dbo].[KoltukAra]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[KoltukAra] 
	@islemID int,
	@parametre int,
	@parametre2 int
AS
BEGIN
		SET NOCOUNT ON;
	if(@islemID = 0)
	begin
		if not exists (select * from KOLTUK where @parametre = Koltuk_ID)
		begin 
		RAISERROR ('Girilen IDye ait bir koltuk bulunamadı.',12,1)
		end
		else begin
		select * from KOLTUK where Koltuk_ID = @parametre
		end
	end
	else if (@islemID = 1)
	begin
		if not exists (select * from KOLTUK where @parametre = Salon_ID)
		begin 
		RAISERROR ('Böyle bir salon veya salona kayıtlı bir koltuk bulunamadı.',12,1)
		end
		else begin
		select * from KOLTUK where Salon_ID = @parametre
		end
	end
	else if (@islemID = 2)
	begin
		if not exists (select * from KOLTUK where @parametre = Satır_No or @parametre2 = Sutun_No)
		begin 
		RAISERROR ('Girilen koordinatta bir koltuk bulunamadı.',12,1)
		end
		else begin
		select * from KOLTUK where Satır_No = @parametre and Sutun_No = @parametre2
		end
	end
	else if (@islemID = 3)
	begin
		if not exists (select * from KOLTUK where LoveSeat = CONVERT(bit,@parametre))
		begin 
		RAISERROR ('LoveSeat türünde koltuk bulunamadı.',12,1)
		end
		else begin
		select * from KOLTUK where LoveSeat = CONVERT(bit,@parametre)
		end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SaateGoreSalonlariGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[SaateGoreSalonlariGetir]
	@saat time,
	@filmID int
AS
BEGIN
	SET NOCOUNT ON;
	select SALON.*
	from SEANS,SALON
	where SEANS.Saat = @saat  and SEANS.Salon_ID = SALON.Salon_ID and SEANS.Film_ID = @filmID

end
GO
/****** Object:  StoredProcedure [dbo].[SeansSil]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SeansSil] 
	@seansID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from SEANS where @seansID = Seans_ID)
		begin  
		RAISERROR ('Islem basarisiz! Lutfen secili seansin IDsini kontrol ediniz.',12,1)
		end
		else
		begin
		delete from SEANS where @seansID = Seans_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SeansGuncelle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeansGuncelle] 
	@seansID int,
	@filmID int,
	@salonID int,
	@saat time(7)
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from SEANS where @seansID = Seans_ID)
		begin  
		RAISERROR ('Islem basarisiz! Lutfen secili seansin IDsini kontrol ediniz.',12,1)
		end
		else if exists (((select SEANS.* from FILM,SALON,SEANS where @filmID = FILM.FilmID and @salonID = SALON.Salon_ID and @saat =SEANS.Saat) except (select * from SEANS where @seansID = Seans_ID)))
		begin
		RAISERROR ('Islem basarisiz! Lutfen guncellenecek degerlerin tekilligini kontrol ediniz.',12,1)
		end
		else
		begin
		update SEANS set Film_ID = @filmID,Salon_ID = @salonID,Saat = @saat where @seansID = SEANS.Seans_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SeansEkle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeansEkle] 
	@filmID int,
	@salonID int,
	@saat time(7)
AS
BEGIN
		SET NOCOUNT ON;
	
		if exists (select SEANS.* from FILM,SALON,SEANS where @filmID = FILM.FilmID and @salonID = SALON.Salon_ID and @saat =SEANS.Saat and SEANS.Film_ID = FILM.FilmID and SALON.Salon_ID = SEANS.Salon_ID)
		begin 
		RAISERROR ('Bu seans ile aynı özelliklere sahip başka bir seans bulunmaktadır!',12,1)
		end
		else begin
		insert into SEANS values (@filmID,@salonID,@saat)
		end
END
GO
/****** Object:  StoredProcedure [dbo].[SeansAra]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeansAra] 
	@islemID int,
	@parametre varchar(max)
AS
BEGIN
		SET NOCOUNT ON;
	if(@islemID = 0)
	begin
		if not exists (select * from SEANS where Seans_ID = CONVERT(int,@parametre ))
		begin  
		RAISERROR ('Sonuc bulunamadi.',12,1)
		end
		else
		begin
		select * from SEANS where Seans_ID = CONVERT(int,@parametre )
		end
	end
	if(@islemID = 1)
	begin
		if not exists (select * from SEANS where Film_ID = CONVERT(int,@parametre ))
		begin  
		RAISERROR ('Sonuc bulunamadi.',12,1)
		end
		else
		begin
		select * from SEANS where Film_ID = CONVERT(int,@parametre )
		end
	end
	if(@islemID = 2)
	begin
		if not exists (select * from SEANS where Salon_ID = CONVERT(int,@parametre ))
		begin  
		RAISERROR ('Sonuc bulunamadi.',12,1)
		end
		else
		begin
		select * from SEANS where Salon_ID = CONVERT(int,@parametre )
		end
	end
	if(@islemID = 3)
	begin
		if not exists (select * from SEANS where Saat = CONVERT(time(7),@parametre ))
		begin  
		RAISERROR ('Sonuc bulunamadi.',12,1)
		end
		else
		begin
		select * from SEANS where Saat = CONVERT(time(7),@parametre )
		end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[TekKoltukGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[TekKoltukGetir]
	@koltukID int
AS
BEGIN
	SET NOCOUNT ON;
	select KOLTUK.Satır_No, KOLTUK.Sutun_No
	from KOLTUK
	where Koltuk_ID = @koltukID

end
GO
/****** Object:  StoredProcedure [dbo].[TumSeanslariCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TumSeanslariCek]

AS
BEGIN
	SET NOCOUNT ON;
	select SEANS.Seans_ID,
		   SEANS.Saat,
		   SALON.Salon_Adı,
		   FILM.Film_Adı
	from SEANS, SALON, FILM
	WHERE SEANS.Salon_ID = SALON.Salon_ID and
		  SEANS.Film_ID = FILM.FilmID
	

end
GO
/****** Object:  StoredProcedure [dbo].[TekSeansGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TekSeansGetir]
	@Film_ID int,
	@salonID int
AS
BEGIN
	SET NOCOUNT ON;
	select Seans_ID
	from SEANS
	where SEANS.Film_ID = @Film_ID and Salon_ID = @salonID

end
GO
/****** Object:  StoredProcedure [dbo].[TekSeansCek]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TekSeansCek]
@seansID int
AS
BEGIN
	SET NOCOUNT ON;
	select 
		   SEANS.Saat,
		   SALON.Salon_ID,
		   FILM.FilmID
	from SEANS, SALON, FILM
	WHERE SEANS.Salon_ID = SALON.Salon_ID and
		  SEANS.Film_ID = FILM.FilmID and SEANS.Seans_ID = @seansID


end
GO
/****** Object:  StoredProcedure [dbo].[TumRezervasyonlariGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[TumRezervasyonlariGetir]
AS
BEGIN
	SET NOCOUNT ON
	select REZERVASYON.Rez_ID, 
	Salon_Adı,
	SEANS.Saat,
	Satır_No,
	Sutun_No,
	KULLANICI.Ad,
	KULLANICI.Soyad,
	Film_Adı,
	REZERVASYON.Ucret,
	REZERVASYON.Tarih

	from REZERVASYON, FILM, SALON, SEANS, KULLANICI, KOLTUK
	where
	REZERVASYON.SatildiMi = 0 and
	REZERVASYON.Koltuk_ID = KOLTUK.Koltuk_ID and
	REZERVASYON.Seans_ID = SEANS.Seans_ID and
	SEANS.Salon_ID = SALON.Salon_ID and
	SEANS.Film_ID = FILM.FilmID and
	REZERVASYON.Kullanıcı_ID = KULLANICI.Kullanici_ID

	ORDER BY REZERVASYON.Rez_ID DESC
end
GO
/****** Object:  StoredProcedure [dbo].[ToplamSatilanBiletSayisi]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ToplamSatilanBiletSayisi]
AS
BEGIN
	SET NOCOUNT ON;
	Select COUNT(*)
	From REZERVASYON
	Where SatildiMi = 1
end
GO
/****** Object:  StoredProcedure [dbo].[ToplamRezerveBiletSayisi]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[ToplamRezerveBiletSayisi]
AS
BEGIN
	SET NOCOUNT ON;
	Select COUNT(*)
	From REZERVASYON
	Where SatildiMi = 0
end
GO
/****** Object:  StoredProcedure [dbo].[TekParametreRezervasyonSil]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TekParametreRezervasyonSil] 
	@islem_ID int,
	@nesne_ID int
AS
BEGIN
	SET NOCOUNT ON;
	
	if(@islem_ID = 0)
	begin
		if not exists (select * from REZERVASYON where Rez_ID = @nesne_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Rez_ID = @nesne_ID
		end
	end
	else if (@islem_ID = 1)
	begin
		if not exists (select * from REZERVASYON where Kullanıcı_ID = @nesne_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Kullanıcı_ID = @nesne_ID
		end
	end
	else if (@islem_ID = 2)
	begin
		if not exists (select * from REZERVASYON where Seans_ID = @nesne_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Seans_ID = @nesne_ID
		end
	end
	else if (@islem_ID = 3)
	begin
		if not exists (select * from REZERVASYON where Koltuk_ID = @nesne_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Koltuk_ID = @nesne_ID
		end
	end
END
GO
/****** Object:  StoredProcedure [dbo].[SonBesRezervasyonuGetir]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[SonBesRezervasyonuGetir]
AS
BEGIN
	SET NOCOUNT ON
	select TOP (5) REZERVASYON.Rez_ID, 
	Salon_Adı,
	SEANS.Saat,
	Satır_No,
	Sutun_No,
	KULLANICI.Ad,
	KULLANICI.Soyad,
	Film_Adı,
	REZERVASYON.Ucret,
	REZERVASYON.Tarih

	from REZERVASYON, FILM, SALON, SEANS, KULLANICI, KOLTUK
	where
	REZERVASYON.SatildiMi = 0 and
	REZERVASYON.Koltuk_ID = KOLTUK.Koltuk_ID and
	REZERVASYON.Seans_ID = SEANS.Seans_ID and
	SEANS.Salon_ID = SALON.Salon_ID and
	SEANS.Film_ID = FILM.FilmID and
	REZERVASYON.Kullanıcı_ID = KULLANICI.Kullanici_ID

	ORDER BY REZERVASYON.Rez_ID DESC
end
GO
/****** Object:  StoredProcedure [dbo].[SeansaGoreToplamSatilanBiletSayisi]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SeansaGoreToplamSatilanBiletSayisi]
	@Seans_ID int
AS
BEGIN
	SET NOCOUNT ON;
	Select COUNT(*)
	From REZERVASYON
	Where Seans_ID = @Seans_ID and SatildiMi = 1
end
GO
/****** Object:  StoredProcedure [dbo].[SeansaGoreToplamRezerveBiletSayisi]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[SeansaGoreToplamRezerveBiletSayisi]
	@Seans_ID int
AS
BEGIN
	SET NOCOUNT ON;
	Select COUNT(*)
	From REZERVASYON
	Where Seans_ID = @Seans_ID and SatildiMi = 0
end
GO
/****** Object:  StoredProcedure [dbo].[SeansaGoreBosKoltuklar]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SeansaGoreBosKoltuklar]
	@Seans_ID int,
	@salonID int,
	@secilenTarih date
AS
BEGIN
	SET NOCOUNT ON;

	select *
	from KOLTUK
	where KOLTUK.Koltuk_ID in
	(
		select KOLTUK.Koltuk_ID
		from KOLTUK
		where @salonID = KOLTUK.Salon_ID 
		except(
			Select Koltuk_ID
			From REZERVASYON
			Where Seans_ID = @Seans_ID and REZERVASYON.Tarih = @secilenTarih)
	)
end
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonSilID]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[RezervasyonSilID] 
	@rezID int
AS
BEGIN
	SET NOCOUNT ON;
	
		if not exists (select * from REZERVASYON where Rez_ID = @rezID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Rez_ID = @rezID
		end
	
END
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonSil]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RezervasyonSil] 
	@Kullanici_ID int,
	@Seans_ID int,
	@Koltuk_ID int
AS
BEGIN
	SET NOCOUNT ON;
	
		if not exists (select * from REZERVASYON where Kullanıcı_ID = @Kullanici_ID and Seans_ID = @Seans_ID and Koltuk_ID=@Koltuk_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Delete from REZERVASYON where Kullanıcı_ID = @Kullanici_ID and Seans_ID = @Seans_ID and Koltuk_ID=@Koltuk_ID
		end
	
END
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonGuncelle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RezervasyonGuncelle] 
	@Rez_ID int,
	@Kullanici_ID int,
	@Seans_ID int,
	@Koltuk_ID int
AS
BEGIN
		SET NOCOUNT ON;
	
		if not exists (select * from REZERVASYON where Rez_ID = @Rez_ID)
		begin 
		RAISERROR ('Rezervasyon kaydi bulunmamaktadir.',10,1)
		end
		else begin
		Update REZERVASYON set Kullanıcı_ID = @Kullanici_ID, Seans_ID = @Seans_ID, Koltuk_ID=@Koltuk_ID, Tarih = GETDATE() where Rez_ID = @Rez_ID
		end
END
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonEkle]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[RezervasyonEkle] 
	@Kullanici_ID int,
	@Seans_ID int,
	@Koltuk_ID int,
	@Tarih date,
	@ucret float
AS
BEGIN
	SET NOCOUNT ON;
	if exists (select * from REZERVASYON where Seans_ID=@Seans_ID AND Koltuk_ID = @Koltuk_ID)
	begin
	RAISERROR ('Bu koltuk daha once baska bir kullanici tarafindan rezerve edilmis.',10,1)
	end else
	begin
	insert into REZERVASYON values (@Kullanici_ID,@Seans_ID,@Koltuk_ID,@Tarih,0,@ucret)

	select @@IDENTITY as 'EklenenRezervasyonID'

	end
END
GO
/****** Object:  StoredProcedure [dbo].[RezervasyonAra]    Script Date: 03/27/2012 07:16:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RezervasyonAra]
	@islem int,
	@parametre_ID int,
	@parametre_Text nvarchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	if (@islem = 0)
	select * from REZERVASYON where Rez_ID = @parametre_ID
	else if (@islem = 1)
	select * from REZERVASYON where Kullanıcı_ID = @parametre_ID
	else if (@islem = 2)
	select * from REZERVASYON where Seans_ID = @parametre_ID
	else if (@islem = 3)
	select * from REZERVASYON where Koltuk_ID = @parametre_ID
	else if (@islem = 4)
	select * from REZERVASYON where Tarih like '%@parametre_Text%'
END
GO
/****** Object:  StoredProcedure [dbo].[BugunRezervasyonListele]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BugunRezervasyonListele]
AS
BEGIN
	SET NOCOUNT ON;
	if not exists (select * from REZERVASYON where Tarih = Convert(date, GETDATE()))
	begin
	raiserror('Bugün için yapılmış herhangi bir rezervasyon yok.',1,10)
	end
	else 
	begin
	select * from REZERVASYON where Tarih = Convert(date, GETDATE())
	end
end
GO
/****** Object:  StoredProcedure [dbo].[BiletCek]    Script Date: 03/27/2012 07:16:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[BiletCek]
@kullaniciID int

AS
BEGIN
	SET NOCOUNT ON
	select TOP (5) REZERVASYON.Rez_ID, 
	Salon_Adı,
	SEANS.Saat,
	Satır_No,
	Sutun_No,
	KULLANICI.Ad,
	KULLANICI.Soyad,
	Film_Adı,
	REZERVASYON.Ucret,
	REZERVASYON.Tarih

	from REZERVASYON, FILM, SALON, SEANS, KULLANICI, KOLTUK
	where REZERVASYON.Kullanıcı_ID = @kullaniciID and
	REZERVASYON.SatildiMi = 0 and
	REZERVASYON.Koltuk_ID = KOLTUK.Koltuk_ID and
	REZERVASYON.Seans_ID = SEANS.Seans_ID and
	SEANS.Salon_ID = SALON.Salon_ID and
	SEANS.Film_ID = FILM.FilmID and
	REZERVASYON.Kullanıcı_ID = KULLANICI.Kullanici_ID

	ORDER BY REZERVASYON.Rez_ID DESC
end
GO
/****** Object:  ForeignKey [FK_KOLTUK_SALON]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[KOLTUK]  WITH CHECK ADD  CONSTRAINT [FK_KOLTUK_SALON] FOREIGN KEY([Salon_ID])
REFERENCES [dbo].[SALON] ([Salon_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KOLTUK] CHECK CONSTRAINT [FK_KOLTUK_SALON]
GO
/****** Object:  ForeignKey [FK_REZERVASYON_KOLTUK]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[REZERVASYON]  WITH CHECK ADD  CONSTRAINT [FK_REZERVASYON_KOLTUK] FOREIGN KEY([Koltuk_ID])
REFERENCES [dbo].[KOLTUK] ([Koltuk_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REZERVASYON] CHECK CONSTRAINT [FK_REZERVASYON_KOLTUK]
GO
/****** Object:  ForeignKey [FK_REZERVASYON_KULLANICI]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[REZERVASYON]  WITH CHECK ADD  CONSTRAINT [FK_REZERVASYON_KULLANICI] FOREIGN KEY([Kullanıcı_ID])
REFERENCES [dbo].[KULLANICI] ([Kullanici_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REZERVASYON] CHECK CONSTRAINT [FK_REZERVASYON_KULLANICI]
GO
/****** Object:  ForeignKey [FK_REZERVASYON_SEANS]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[REZERVASYON]  WITH CHECK ADD  CONSTRAINT [FK_REZERVASYON_SEANS] FOREIGN KEY([Seans_ID])
REFERENCES [dbo].[SEANS] ([Seans_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REZERVASYON] CHECK CONSTRAINT [FK_REZERVASYON_SEANS]
GO
/****** Object:  ForeignKey [FK_SEANS_FILM]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[SEANS]  WITH CHECK ADD  CONSTRAINT [FK_SEANS_FILM] FOREIGN KEY([Film_ID])
REFERENCES [dbo].[FILM] ([FilmID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SEANS] CHECK CONSTRAINT [FK_SEANS_FILM]
GO
/****** Object:  ForeignKey [FK_SEANS_SALON]    Script Date: 03/27/2012 07:16:41 ******/
ALTER TABLE [dbo].[SEANS]  WITH CHECK ADD  CONSTRAINT [FK_SEANS_SALON] FOREIGN KEY([Salon_ID])
REFERENCES [dbo].[SALON] ([Salon_ID])
GO
ALTER TABLE [dbo].[SEANS] CHECK CONSTRAINT [FK_SEANS_SALON]
GO
