SELECT GETDATE(); ---TODAY'S DATE AND TIME
SELECT SYSDATETIME();  --- AS TODAY_DATE
SELECT CURRENT_TIMESTAMP; --- AS TODAY_DATE
SELECT DATENAME(MONTH,CURRENT_TIMESTAMP) AS 'MONTH'; ---IT WILL GIVE CURRENT MONTH
SELECT DATENAME(YEAR,CURRENT_TIMESTAMP) AS 'YEAR'; ---IT WILL GIVE CURRENT YEAR
SELECT DATEDIFF(YEAR,'JANUARY 6 1995',CURRENT_TIMESTAMP) AS 'AGE';
