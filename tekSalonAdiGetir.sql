USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[TekSeansGetir]    Script Date: 03/25/2012 00:45:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TekSalonAdiGetir]
	@salonID int
AS
BEGIN
	SET NOCOUNT ON;
	select Salon_Adı
	from SALON
	where Salon_ID = @salonID

end
