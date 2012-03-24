USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[VizyondakiFilmleriCek]    Script Date: 03/24/2012 17:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VizyondakiFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from FILM
	where GeldiMi = 'True' and Bitis_Tarihi > CONVERT(date,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[GelecekFilmleriCek]    Script Date: 03/24/2012 17:25:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GelecekFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON
	select *
	from FILM
	where GeldiMi = 'False' and Ekleme_Tarihi > CONVERT(date,GETDATE())
end
GO
