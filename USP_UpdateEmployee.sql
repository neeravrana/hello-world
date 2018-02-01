-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Update Designation>
-- ===================================================
CREATE Procedure [Tricare].[USP_UpdateEmployee]
	@id int,
	@name varchar(30),
	@DOB date,
	@pass varchar(30),
	@email varchar(30),
	@phone int
AS
BEGIN
	UPDATE Tricare.Employee SET
	EmployeeName=@name,
	DOB=@DOB,
	Password=@pass,
	Email=@email,
	PhoneNo=@phone WHERE
	EmployeeID=@id
END

GO


