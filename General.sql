
USE PRACTICE

DECLARE @NAME VARCHAR(50), @AGE INT;
SET @NAME = 'ESHA';
SELECT @NAME;

DECLARE @NAME VARCHAR(50), @AGE INT;
SELECT @NAME = 'DESWAL',@AGE =25;
SELECT @NAME AS 'NAME',@AGE AS 'AGE';

DECLARE @NUMBER INT  = 100;
SET @NUMBER += 50;
SELECT @NUMBER;
=