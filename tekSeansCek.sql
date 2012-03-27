USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[TumSeanslariCek]    Script Date: 03/27/2012 03:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
