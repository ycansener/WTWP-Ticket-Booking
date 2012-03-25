USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[TekKoltukGetir]    Script Date: 03/25/2012 00:54:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TekKoltukGetir]
	@koltukID int
AS
BEGIN
	SET NOCOUNT ON;
	select KOLTUK.Satır_No, KOLTUK.Sutun_No
	from KOLTUK
	where Koltuk_ID = @koltukID

end
