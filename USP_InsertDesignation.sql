-- =============================================
-- Author:		<Author,,Neerav>
-- Create date: <Create Date,,2/1/2018>
-- Description:	<Description,,Insertion Of Designation>
-- =============================================
CREATE PROCEDURE [Tricare].[USP_InsertDesignation]
	@id int,
	@name varchar(20)
AS
	
BEGIN
	INSERT INTO Tricare.Designation(DesignationID,DesignationName)VALUES(@id,@name)
END

GO


