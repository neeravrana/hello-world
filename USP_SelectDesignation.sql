-- ===================================================
-- Author:		Neerav
-- Create date: 2/1/2018
-- Description:	this Procedure is used to get Designation
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_SelectDesignation]
	@id int,
	@dname varchar(30)
AS
BEGIN
SET NOCOUNT ON
SELECT DesignationID,DesignationName FROM Designation WHERE DesignationID=@id and DesignationName=@dname
END


GO


