CreateTable

CREATE TABLE WORKER --- creating the table 
(
     WORKER_ID INT NOT NULL PRIMARY KEY, --- inserting the contraints
	 FIRST_NAME CHAR(25) NOT NULL,
	 LAST_NAME CHAR(25) NOT NULL,
	 SALARY INT NOT NULL,
	 JOINING_DATE DATETIME,
	 DEPARTMENT CHAR(25)
);

