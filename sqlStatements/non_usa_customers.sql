select c.FirstName as First, c.LastName as Last, c.CustomerId, c.country
from Customer c
where c.country != "USA"
order by c.Country ASC;