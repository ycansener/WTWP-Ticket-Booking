USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[FilmAra]    Script Date: 03/27/2012 04:39:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

alter PROCEDURE [dbo].[FilmAraGenel]
	@filmAdi nvarchar(max)

AS
BEGIN
	SET NOCOUNT ON;
		select * from FILM where FILM.Film_Adı like '%' + @filmAdi + '%'
end
