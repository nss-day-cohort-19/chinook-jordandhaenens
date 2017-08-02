select 
    i.Total, 
	c.FirstName ||" "|| c.LastName as CustomerName,  
    i.BillingCountry, 
	e.FirstName ||" "|| e.LastName as SalesAgent
from Customer c, Invoice i, Employee e
where c.supportrepid = e.employeeId
and c.customerid = i.customerid
order by SalesAgent asc;