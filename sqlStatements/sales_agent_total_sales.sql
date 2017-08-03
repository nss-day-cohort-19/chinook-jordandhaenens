
select
    sum (i.total) as "Agent Sales",
	e.FirstName || ' ' || e.LastName as "Sales Agent"
from Invoice i, Customer c, Employee e
where i.customerId = c.customerId
and c.supportRepId = e.employeeId
and e.title = "Sales Support Agent"
group by "Sales Agent";