-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Update Department>
-- ===================================================
CREATE Procedure [Tricare].[USP_UpdateDepartment]
	@id int,
	@deptname varchar(30)
AS
Begin
	Update Tricare.Department SET
	DepartmentName=@deptname where
	DepartmentID=@id
End

GO


