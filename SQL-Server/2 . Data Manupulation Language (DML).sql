--INSERT → New category add
--SELECT → Categories dekhna
--UPDATE → Category edit karna
--DELETE → Category remove karna

--Naya category add karna
INSERT INTO [Northwind].[dbo].[Categories] 
(CategoryName, Description)
VALUES ('Snacks', 'All types of snack items');
insert into Northwind.dbo.Categories
(CategoryName,Description)
values ('food','this food for healt')

--  Data dekhna / read karna
SELECT * FROM [Northwind].[dbo].[Categories];

SELECT CategoryName, Description 
FROM [Northwind].[dbo].[Categories];

-- Top 5 categories
SELECT TOP 5 * FROM [Northwind].[dbo].[Categories];

--Existing row ka data badalna
UPDATE [Northwind].[dbo].[Categories]
SET CategoryName = 'Updated Category Name',
    Description = 'Updated description'
WHERE CategoryID = 3;

--Specific row delete karna
DELETE FROM [Northwind].[dbo].[Categories]
WHERE CategoryID = 4;

