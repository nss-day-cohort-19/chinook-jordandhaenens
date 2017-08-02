select Count (il.TrackId) as "Items per Invoice", il.InvoiceId 
from InvoiceLine il
group by il.InvoiceId;