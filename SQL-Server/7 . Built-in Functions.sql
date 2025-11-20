-- built in Function
--⭐ 1) STRING FUNCTIONS

--✔ 1) String Function
SELECT UPPER(FirstName) AS UpperName
FROM Employees;
--CategoryName ko uppercase me kar deta hai.

--✔ 2. LOWER() → Sab small letters
SELECT LOWER(LastName) AS LowerName
FROM Employees;

--✔ 3. LEN() → Name ki length
SELECT FirstName, LEN(FirstName) AS NameLength
FROM Employees;

--✔ 4. SUBSTRING() → Naam ka part nikalna
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS First3Chars
FROM Employees;

--✔ 5. CHARINDEX() → Word ko Notes me dhoondna
SELECT EmployeeID, CHARINDEX('French', Notes) AS FoundAt
FROM Employees;
--(French word kis employee ke notes me hai?)

--⭐ 2) DATE FUNCTIONS

--✔ 6. YEAR() → Birth year nikalna
SELECT FirstName, BirthDate, YEAR(BirthDate) AS BirthYear
FROM Employees;

--✔ 7. MONTH() → Birth month nikalna
SELECT FirstName, MONTH(BirthDate) AS BirthMonth
FROM Employees;

--✔ 8. DATEDIFF() → Employee ki age
SELECT FirstName,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM Employees;

--⭐ 3) AGGREGATE FUNCTIONS

--✔ 9. COUNT() → Total employees
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

--✔ 10. MIN() & MAX() → Sabse purana & sabse naya employee
SELECT MIN(BirthDate) AS OldestDOB, MAX(BirthDate) AS YoungestDOB
FROM Employees;

--⭐ 4) CONVERSION FUNCTIONS

--✔ 11. CAST() → Date ko text me convert karna
SELECT FirstName,
CAST(BirthDate AS VARCHAR(20)) AS BirthDateText
FROM Employees;

--✔ 12. CONVERT() → Date ka format change.
SELECT FirstName,
CONVERT(VARCHAR(20), BirthDate, 103) AS FormattedDate  -- dd/mm/yyyy
FROM Employees;

--⭐ 5) NUMERIC FUNCTION

--✔ 13. ABS(), ROUND(), CEILING(), FLOOR()
SELECT 
ABS(-10) AS AbsoluteValue,
ROUND(45.678, 1) AS Rounded,
CEILING(23.3) AS CeilingValue,
FLOOR(23.9) AS FloorValue;
--(Numeric column nahi hai, to example calculate kar kar ke use karenge)

--✔ Find employees born before 1960
SELECT FirstName, BirthDate
FROM Employees
WHERE YEAR(BirthDate) < 1960;

--✔ Extract first 10 characters of Notes
SELECT FirstName, SUBSTRING(Notes, 1, 10) AS ShortNote
FROM Employees;
