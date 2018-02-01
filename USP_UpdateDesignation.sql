-- ===================================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Update Designation>
-- ===================================================
CREATE Procedure [Tricare].[USP_UpdateDesignation]
	@id int,
	@name varchar(30)
AS
Begin
	Update Tricare.Designation SET
	DesignationName=@name where
	DesignationID=@id
End

GO


