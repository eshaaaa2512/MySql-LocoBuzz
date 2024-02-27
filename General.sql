 modifystoredprocedure
---modify an existing simple stored procedure proc_allemployeesdetails

ALTER PROCEDURE PROC_ALLEMPLOYEESDETAILS
AS
BEGIN
        SELECT E.EMP_NAME,E.EMP_SALARY,D.DEPT_LOCATION
		FROM EMPLOYEE E INNER JOIN DEPARTMENT D 
		ON E.EMP_DEPTID = D.DEPT_ID;
END


