
select * from Sales.Orders as o
where 
o.custid = 12
order by custid,orderdate


select * from Sales.Customers as c
where 
c.contactname like 'Ray%'


select * from Sales.Orders as o
where 
o.custid = (select c.custid from Sales.Customers as c where  c.contactname like 'Allen%')
order by custid,orderdate

--SQL89
select 
	 o.* 
from 
	Sales.Orders as o  , Sales.Customers as c
where 
	c.custid = o.custid
	and 
	c.contactname like 'Ray%'

--SQL92
select 
	o.* 
from 
	Sales.Orders as o  join Sales.Customers as c
	on 
	c.custid = o.custid
where 
	c.contactname like 'Ray%'