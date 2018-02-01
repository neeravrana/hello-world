-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Insertion Of Regulation>
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_InsertRegulation]
	@id int,
	@rdetails varchar(30),
	@deptid int
AS

BEGIN
	INSERT INTO Tricare.Regulation(RuleNo,RuleDetails,DeptID)VALUES(@id,@rdetails,@deptid)
END

GO


