--CREATE A STORED PROCEDURE THAT RETURNS ALL EMPLOYEES WHOSE DEPARTMENT LOCATION IS MUMBAI  


USE INFO_DB;

EXECUTE DBO.PROC_ALLEMPLOYEEDETAILS;

SELECT * FROM DEPARTMENT;

SELECT * FROM EMPLOYEE E 
INNER JOIN DEPARTMENT D
ON E.EMP_DEPTID = D.DEPT_ID 
WHERE DEPT_LOCATION ='MUMBAI';

CREATE PROCEDURE PROC_EMPLOYEESDETAILSLOCATIONWISE(@LOCATION AS VARCHAR(100))
AS
BEGIN
      SELECT * FROM EMPLOYEE E 
      INNER JOIN DEPARTMENT D
      ON E.EMP_DEPTID = D.DEPT_ID 
      WHERE DEPT_LOCATION = @LOCATION;
END
GO
      SELECT * FROM EMPLOYEE E 
      INNER JOIN DEPARTMENT D
      ON E.EMP_DEPTID = D.DEPT_ID 
      WHERE DEPT_LOCATION ='MUMBAI';
GO


