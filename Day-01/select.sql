select * from tsql.hr.employees

select * from [Production].[Products]

select * from t1

select * from nums

select * from countrycurrency

select c.contactname, c.contacttitle, c.city, c.country from [Sales].[Customers] as c

select * from tsql.hr.Employees

select * from hr.Employees

select * from sales.orders

select 
	firstname, lastname, hiredate
from hr.Employees

select e.firstname, e.lastname, e.city from hr.employees as e


sELECT [empid]
      ,[lastname]
      ,[firstname]
      ,[title]
      ,[titleofcourtesy]
      ,[birthdate]
      ,[hiredate]
      ,[address]
      ,[city]
      ,[region]
      ,[postalcode]
      ,[country]
      ,[phone]
      ,[mgrid]
  FROM [TSQL].[HR].[Employees]
order by lastname desc

select * from hr.Employees
order by country , city desc
