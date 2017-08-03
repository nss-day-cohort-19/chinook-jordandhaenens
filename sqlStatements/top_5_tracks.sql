select 
    count (il.TrackId) as "Track Count",
	t.Name as Title
from InvoiceLine il, Track t, Invoice i
where il.invoiceId = i.invoiceId
and il.trackId = t.trackId
group by il.TrackId
order by "Track Count" desc
limit 5;