select 
    i.invoiceId as Invoice,
	count (il.invoiceLineId) as "Line Items/Invoice"
from Invoice i, InvoiceLine il
where i.invoiceId = il.invoiceId
group by i.invoiceId;