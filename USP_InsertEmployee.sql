-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Insertion Of Employees>
-- ===================================================

CREATE PROCEDURE [Tricare].[USP_InsertEmployee]
	@id int,
	@name varchar(30),
	@DOb date,
	@Pass varchar(30),
	@email varchar(30),
	@phone int,
	@designationid int,
	@deptid int
AS
BEGIN
	INSERT INTO Tricare.Employee(EmployeeID,EmployeeName,DOB,Password,Email,PhoneNo)
	VALUES(@id,@name,@DOb ,@Pass ,@email,@phone )
	INSERT INTO Tricare.DesignationEmployee(DesignationID,EmpID)
	Values(@designationid,@id)
	INSERT INTO Tricare.EmployeeDepartment(EmpID,DeptID)
	VALUES(@id,@deptid)
END
GO


