USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[FilminSeanslariniGoster]    Script Date: 03/24/2012 13:28:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[TekSeansGetir]
	@Film_ID int,
	@salonID int
AS
BEGIN
	SET NOCOUNT ON;
	select Seans_ID
	from SEANS
	where SEANS.Film_ID = @Film_ID and Salon_ID = @salonID

end
