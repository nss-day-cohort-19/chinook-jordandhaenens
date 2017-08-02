select Count (i.InvoiceDate) as 'Total Invoices'
from Invoice i
where i.InvoiceDate Like '%2009%'
or i.InvoiceDate Like '%2011%';