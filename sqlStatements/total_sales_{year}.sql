SELECT (select Sum (i.Total) from Invoice i where i.InvoiceDate Like "%2009%") as "2009",
          (select Sum (i.Total) from Invoice i where i.InvoiceDate Like "%2011%") as "2011";


select '$' || sum (i.Total) Total,
    strftime ('%Y', i.InvoiceDate) InvoiceYEra
from invoice i
where invoiceYeat = '2011'