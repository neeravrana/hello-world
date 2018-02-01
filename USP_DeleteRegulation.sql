-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Delete Regulation>
-- =============================================
CREATE PROCEDURE [Tricare].[USP_DeleteRegulation]
	@id int
AS

BEGIN
	DELETE FROM Tricare.Regulation WHERE RuleNo=@id
END


GO


