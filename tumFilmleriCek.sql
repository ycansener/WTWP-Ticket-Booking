USE [CINECLUP]
GO
/****** Object:  StoredProcedure [dbo].[TumFilmleriCek]    Script Date: 03/23/2012 19:08:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TumFilmleriCek]

AS
BEGIN
	SET NOCOUNT ON;
	select *
	from FILM
end
GO
