USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[KullaniciGuncelle]    Script Date: 03/26/2012 22:52:22 ******/
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
