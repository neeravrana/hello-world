-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Delete Department>
-- =============================================
CREATE PROCEDURE [Tricare].[USP_DeleteDepartment]
	@id int
AS

BEGIN
	DELETE FROM Tricare.Department WHERE DepartmentID=@id
END


GO


