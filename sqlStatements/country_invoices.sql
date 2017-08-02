select 
   count (i.invoiceId) as "Number of Invoices",
    i.billingCountry as Country
from Invoice i
group by i.billingCountry;
   
