-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Update Regulation>
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_UpdateRegulation]
	@id int,
	@rdetails varchar(30),
	@deptid int
AS
BEGIN
	UPDATE Tricare.Regulation SET
	RuleDetails=@rdetails,DeptID=@deptid WHERE
	RuleNo=@id
END

GO


