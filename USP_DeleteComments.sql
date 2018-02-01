-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Dleete Comments>
-- =============================================
CREATE PROCEDURE [Tricare].[USP_DeleteComments]
	@id int

AS

BEGIN
	DELETE FROM Tricare.Comments WHERE EmpID=@id
END

GO


