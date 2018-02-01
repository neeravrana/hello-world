-- ===================================================
-- Author:		Neerav
-- Create date: 2/1/2018
-- Description:	The procedure is used to get Department details 
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_SelectDepartmentDetails]
	@id int,
	@deptname varchar(30)
AS
BEGIN
SET NOCOUNT ON
SELECT DepartmentID,DepartmentName 
FROM Department WHERE departmentID=@id and DepartmentName=@deptname
END


GO


