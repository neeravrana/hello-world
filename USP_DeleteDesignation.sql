-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Delete Designation>
-- =============================================
CREATE PROCEDURE [Tricare].[USP_DeleteDesignation]
	@id int
AS

BEGIN
	DELETE FROM Tricare.Designation WHERE DesignationID=@id
END


GO


