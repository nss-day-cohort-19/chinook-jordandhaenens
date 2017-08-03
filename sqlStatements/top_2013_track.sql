/*Grouping the results by t.name returns incorrect results since the t.name is not a unique identifier and can be shared by separate artists*/
select 
    count (il.TrackId) as "Track Count",
	t.Name as Title
from InvoiceLine il, Track t, Invoice i
where il.invoiceId = i.invoiceId
and i.invoiceDate Like '%2013%'
and il.trackId = t.trackId
group by t.name
order by "Track Count" desc;

/*Grouping by t.TrackId returns the correct results since TrackIds are unique*/
select 
    count (t.trackId) as "Track Count",
	t.Name as Title
from InvoiceLine il, Track t, Invoice i
where il.invoiceId = i.invoiceId
and i.invoiceDate Like '%2013%'
and il.trackId = t.trackId
group by t.trackId
order by "Track Count" desc
limit 1;
