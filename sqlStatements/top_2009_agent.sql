select 
    max ("Agent Sales") as "Agent Sales", "Sales Agent"
from (select
		sum (i.total) as "Agent Sales",
		e.FirstName || ' ' || e.LastName as "Sales Agent"
	from Invoice i, Customer c, Employee e
	where i.customerId = c.customerId
	and c.supportRepId = e.employeeId
    and i.invoiceDate Like '%2009%'
	group by "Sales Agent");