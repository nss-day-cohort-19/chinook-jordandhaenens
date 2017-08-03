select 
    "Sales Agent", max ("Agent Sales") as "Agent Sales"
from (select
		sum (i.total) as "Agent Sales",
		e.FirstName || ' ' || e.LastName as "Sales Agent"
	from Invoice i, Customer c, Employee e
	where i.customerId = c.customerId
	and c.supportRepId = e.employeeId
	group by "Sales Agent");