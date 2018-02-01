-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Insertion Of Department>
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_InsertDepartment]
	@id int,
	@deptname varchar(30)
AS
BEGIN
	INSERT INTO Tricare.Department(DepartmentID,DepartmentName)VALUES(@id,@deptname)
END

GO


