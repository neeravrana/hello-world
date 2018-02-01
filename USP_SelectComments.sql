-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Select Comments>
-- ===================================================
CREATE PROCEDURE [Tricare].[USP_SelectComments]
	@id int,
	@comments varchar(30),
	@Dos date
AS
BEGIN
SET NOCOUNT ON
SELECT Empid,Comments,DateOfSubmission FROM Comments WHERE EmpID=@id and Comments=@comments and DateOfSubmission=@Dos
END


GO


