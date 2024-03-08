  snapshot

---database snapshot

CREATE DATABASE EMP_SNAPS ON
(NAME =INFO_DB,
FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQL16MSSQLSERVER02\MSSQL\DATA\info_db.ss')
AS SNAPSHOT OF INFO_DB;
GO


 
