--  Demonstration D

-- Step 1: Connect to the AdventureWorksLT database

--  Step 2: Returning results including NULL
-- NULL handling examples
-- Show the presence of NULL in the MiddleName column
-- and ORDER BY sorting NULL together and first
SELECT CustomerId, Title, FirstName, MiddleName, LastName
FROM SalesLT.Customer
ORDER BY MiddleName;

--  Step 3: Handling NULLs
-- This query eliminates NULLs in MiddleName

select middlename, count(*)
from saleslt.customer
group by middlename


select customerid, title, firstname, middlename, lastname
from saleslt.customer
WHERE MiddleName <> N'A.'
ORDER BY MiddleName;

--  Step 4:  Handling NULLs
-- This query also eliminates NULLs in MiddleName
SELECT CustomerId, Title, FirstName, MiddleName, LastName
FROM SalesLT.Customer
WHERE MiddleName = N'A.'
ORDER BY MiddleName;

--  Step 5:  Handling NULLs
-- Show how testing for NULL with an equality will
-- return an empty result set
-- might be misinterpreted as an absence of NULLs
SELECT CustomerId, Title, FirstName, MiddleName, LastName
FROM SalesLT.Customer
WHERE MiddleName = NULL
ORDER BY MiddleName;

select customerid, title, firstname, middlename, lastname
from saleslt.customer
where middlename is null
order by middlename;


--  Step 6:  Handling NULLs
-- This query explicitly includes only NULLs
SELECT CustomerId, Title, FirstName, MiddleName, LastName
FROM SalesLT.Customer
WHERE MiddleName IS NULL
ORDER BY MiddleName;

--  Step 7:  Handling NULLs
-- This query explicitly excludes NULLs
select customerid, title, firstname, middlename, lastname
from saleslt.customer
where middlename is not null
order by middlename;
