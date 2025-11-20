--⭐ Simple Desi Explanation

--PARTITION BY = group banana
--OVER = us group ke upar function chalana (SUM, AVG, COUNT)
--BUT → table ki rows vaise ki vaise dikhengi.

--✔ Example 1: BirthYear ke hisaab se har employee ko batana ki uss saal me total kitne log born hue
SELECT 
    EmployeeID,
    FirstName,
    YEAR(BirthDate) AS BirthYear,
    COUNT(*) OVER (PARTITION BY YEAR(BirthDate)) AS EmployeesInSameYear
FROM Employees;
--Output:
--Har row ke sath batayega ki uss employee ke birth year me kitne employees hain —
--without grouping the table.

--✔ Example 2: Sab employees ke upar average BirthYear calculate karna (global avg)
SELECT 
    EmployeeID,
    FirstName,
    BirthDate,
    AVG(DATEDIFF(YEAR, BirthDate, GETDATE())) 
        OVER() AS AvgAgeAllEmployees
FROM Employees;

--✔ Example 3: FirstName group wise numbering
SELECT 
    FirstName,
    LastName,
    ROW_NUMBER() OVER (PARTITION BY FirstName ORDER BY EmployeeID) AS RowNum
FROM Employees;

--✔ Example 4: Har BirthYear ke andar minimum BirthDate
SELECT 
    EmployeeID,
    FirstName,
    YEAR(BirthDate) AS BirthYear,
    MIN(BirthDate) OVER (PARTITION BY YEAR(BirthDate)) AS EarliestBornInYear
FROM Employees;

--✔ Example 5: Notes me 'French' word ke hisaab se grouping + count
SELECT
    EmployeeID,
    FirstName,
    CASE WHEN CHARINDEX('French', Notes) > 0 THEN 'Has French' ELSE 'No French' END AS FrenchStatus,
    COUNT(*) OVER (
        PARTITION BY CASE WHEN CHARINDEX('French', Notes) > 0 THEN 'Has French' ELSE 'No French' END
    ) AS TotalSameType
FROM Employees;

--✔ Example 6: Running Total of BirthYear ke andar
SELECT
    EmployeeID,
    FirstName,
    YEAR(BirthDate) AS BirthYear,
    ROW_NUMBER() OVER (PARTITION BY YEAR(BirthDate) ORDER BY BirthDate) AS PositionInYear
FROM Employees;
