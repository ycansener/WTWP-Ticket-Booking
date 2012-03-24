USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[SeansaGoreBosKoltuklar]    Script Date: 03/24/2012 12:52:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SeansaGoreBosKoltuklar]
	@Seans_ID int,
	@salonID int
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
			Where Seans_ID = @Seans_ID)
	)
end
