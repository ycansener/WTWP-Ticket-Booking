USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[TekSeansGetir]    Script Date: 03/27/2012 03:09:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TumSeanslariCek]
	@Film_ID int,
	@salonID int
AS
BEGIN
	SET NOCOUNT ON;
	select *
	from SEANS
	

end
