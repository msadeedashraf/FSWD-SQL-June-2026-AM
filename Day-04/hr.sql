

select * from [dbo].[employees] as e 
where e.department_id  = 
(
select d.department_id from [dbo].[departments] as d
	where d.location_id = (select l.location_id from [dbo].[locations] as l where l.city = 'Southlake')
)


select e.* 
	from 
		employees as e  join departments as d
		on 
		e.department_id = d.department_id
		join 
		locations as l 
		on 
		d.location_id = l.location_id
	where
		l.city = 'Southlake'



select e.* 
	from 
		employees as e  inner join departments as d
		on 
		e.department_id = d.department_id
		inner join 
		locations as l 
		on 
		d.location_id = l.location_id
	where
		l.city = 'Southlake'
		

