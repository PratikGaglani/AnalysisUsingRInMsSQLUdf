USE [test]
GO
/****** Object:  UserDefinedFunction [dbo].[Rfunction]    Script Date: 09-12-2013 00:46:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[Rfunction] (@SCRIPT varchar(200))
RETURNS VARCHAR(3)
AS
BEGIN
    DECLARE @sReturnValue VARCHAR(3)

	EXEC master..xp_CMDShell @SCRIPT

    
        SET @sReturnValue = 'Yes'
    

    RETURN @sReturnValue
END
