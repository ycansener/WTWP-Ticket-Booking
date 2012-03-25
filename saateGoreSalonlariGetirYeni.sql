USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[SaateGoreSalonlariGetir]    Script Date: 03/25/2012 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SaateGoreSalonlariGetir]
	@saat time,
	@filmID int
AS
BEGIN
	SET NOCOUNT ON;
	select SALON.*
	from SEANS,SALON
	where SEANS.Saat = @saat  and SEANS.Salon_ID = SALON.Salon_ID and SEANS.Film_ID = @filmID

end
