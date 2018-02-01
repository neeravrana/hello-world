-- ===================================================
-- Author:		Neerav
-- Create date: 2/1/2018
-- Description:	This procedure is used to select Employee Details
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_SelectEmployeeDetails]
	@id int,
	@ename varchar(30),
	@dob date,
	@pass varchar(30),
	@email varchar(30),
	@phone int
AS
BEGIN
SET NOCOUNT ON
SELECT EmployeeID,EmployeeName,DOB,Password,Email,PhoneNo 
FROM Employee WHERE EmployeeID=@id and EmployeeName=@ename and 
DOB =@dob and Password=@pass and Email =@email and PhoneNo =@phone
END


GO


