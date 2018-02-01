-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Select Regulation>
-- =============================================

CREATE PROCEDURE [Tricare].[USP_SelectRegulation]
	@id int,
	@details varchar(30),
	@deptid int
AS
BEGIN
SELECT RuleNo,RuleDetails,DeptID FROM Regulation WHERE RuleNo=@id
END

GO


