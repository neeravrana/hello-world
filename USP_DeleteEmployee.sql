-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Delete Employee >
-- =============================================
CREATE PROCEDURE [Tricare].[USP_DeleteEmployee]
	@id int
AS

BEGIN
	DELETE FROM Tricare.Employee WHERE EmployeeID=@id
END


GO


