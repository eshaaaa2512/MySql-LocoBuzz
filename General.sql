 pivottables
USE INFO_DB;
CREATE TABLE sample
( Product Varchar(10),
    Region Varchar (5),
    Revenue int)
INSERT INTO sample VALUES('A','EAST',100),('B','WEST',200),('C','NORTH',150),('D','SOUTH',120)

SELECT * FROM SAMPLE;

SELECT 
    Product,
    [EAST], [WEST], [NORTH], [SOUTH]
FROM 
    (SELECT Product, Region, Revenue FROM sample) AS SourceTable
PIVOT
    (SUM(Revenue) FOR Region IN ([EAST], [WEST], [NORTH], [SOUTH])) AS PivotTable;
