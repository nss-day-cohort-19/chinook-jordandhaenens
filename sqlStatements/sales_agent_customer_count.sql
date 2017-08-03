select 
    count (c.customerId) as "Customer Count",
	e.FirstName || ' ' || e.LastName as "Sales Agent"
from Customer c, Employee e
where c.supportRepId = e.employeeId
group by "Sales Agent";
