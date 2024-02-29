 ddltriggers
USE INFO_DB;
---TRIGGERS
--DDL TRIGGERS

--CREATE A TRIGGER WHEN NEW TABLE IS CREATED IN A DATABASE

SELECT * FROM EMPLOYEE;
CREATE OR ALTER TRIGGER TR_ONTABLECREATE
ON DATABASE
FOR CREATE_TABLE,DROP TABLE 
AS 
BEGIN 
      PRINT'NEW TABLE IS CREATED OR DROPPED SUCCESSFULLY'
END;

CREATE TABLE SAMPLETABLE(ID INT,NAME VARCHAR(20));

