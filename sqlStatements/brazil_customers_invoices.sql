select c.firstName || ' ' ||  c.lastName as "Full Name", c.customerId, i.invoiceId, i.invoiceDate, i.billingCountry
from Customer c
left join Invoice i 
where c.customerId = i.customerId
and c.country = "Brazil";
