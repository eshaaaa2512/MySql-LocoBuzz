
USE INFO_DB;
--TABLE VALUED FUNCTIONS

--CREATE A FUNCTION TO GET EMPLOYEE INFORMATION BY PASSING EMPLOYEE SALARY

CREATE FUNCTION GETALLEMPLOYEES(@SAL AS INT)
RETURNS TABLE
AS
RETURN 
     SELECT * FROM EMPLOYEE WHERE EMP_SALARY = @SAL;

SELECT * FROM DBO.GETALLEMPLOYEES(60000);

SELECT * FROM EMPLOYEE;

              