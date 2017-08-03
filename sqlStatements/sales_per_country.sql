select 
    sum (i.Total) as Sales,
	i.billingCountry as Country
from Invoice i 
group by Country;