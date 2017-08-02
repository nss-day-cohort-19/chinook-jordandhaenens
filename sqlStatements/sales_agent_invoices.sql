select 
    e.FirstName ||" "|| e.LastName as AgentName, 
	i.invoiceId
from employee e, customer c, invoice i
where e.employeeid = c.supportrepid
AND c.customerid = i.customerid;

