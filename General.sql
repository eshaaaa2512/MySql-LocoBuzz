 Createproc
USE INFO_DB;
GO
CREATE PROCEDURE PROC_ALLEMPLOYEEDETAILS
AS
BEGIN 
     SELECT * FROM EMPLOYEE;
END 
GO


EXECUTE PROC_ALLEMPLOYEEDETAILS;


