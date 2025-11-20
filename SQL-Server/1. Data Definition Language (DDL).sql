--DDL Commands: CREATE,ALTER,DROP,TRUNCATE,RENAME (SQL Server me sp_rename se)

-- Create New Table
CREATE TABLE [Northwind].[dbo].[CategoryBackup] (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100),
    Description VARCHAR(500)
);

--Table me changes
ALTER TABLE [Northwind].[dbo].[Categories]  
ADD ImageURL VARCHAR(255);

--Column Modify Karna (Size/type change)
ALTER TABLE [Northwind].[dbo].[Categories]  
ALTER COLUMN Description VARCHAR(1000);

 --Column Delete Karna
ALTER TABLE [Northwind].[dbo].[Categories]
DROP COLUMN ImageURL;

--Table permanently delete
DROP TABLE [Northwind].[dbo].[CategoryBackup];	

 --Table ko empty karna
TRUNCATE TABLE [Northwind].[dbo].[Categories]; 

--Specific rows delete karna
DELETE FROM [Northwind].[dbo].[Categories] WHERE CategoryID = 1;  
