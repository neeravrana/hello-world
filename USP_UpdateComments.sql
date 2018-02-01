-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Update Comments>
-- ===================================================
CREATE Procedure [Tricare].[USP_UpdateComments]
	@id int,
	@comments varchar(30),
	@dos date
AS
Begin
	Update Tricare.Comments SET
	Comments=@comments,
	DateOfSubmission = @dos
	where EmpID=@id
End

GO


