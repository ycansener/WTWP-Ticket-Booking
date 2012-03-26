USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[KullaniciAra]    Script Date: 03/27/2012 01:44:19 ******/
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
