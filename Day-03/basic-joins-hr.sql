SELECT TOP (1000) [employee_id]
      ,[first_name]
      ,[last_name]
      ,[email]
      ,[phone_number]
      ,[hire_date]
      ,[job_id]
      ,[salary]
      ,[manager_id]
      ,[department_id]
  FROM [HR].[dbo].[employees] as e
    where 
  e.department_id = (select d.department_id from departments as d
  where department_name = 'Purchasing'
)

  select d.department_id from departments as d
  where department_name = 'IT'


Administration
Marketing
Purchasing
Human Resources
Shipping
IT


select 
e.*
FROM 
    [HR].[dbo].[employees] as e 
    join 
    departments as d
    on d.department_id = e.department_id
where 
    d.department_name = 'IT'
    
