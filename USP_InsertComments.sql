-- ================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Insertion Of Comments>
-- ================================================
CREATE PROCEDURE [Tricare].[USP_InsertComments]
	@id int,
	@Comment varchar(30),
	@DOS date
AS
BEGIN
	INSERT INTO Tricare.Comments(EmpID,Comments,DateOfSubmission)VALUES(@id,@Comment,@DOS)
END

GO


