select t.Name, il.InvoiceId 
from InvoiceLine il, Track t
where il.TrackId = t.trackId;