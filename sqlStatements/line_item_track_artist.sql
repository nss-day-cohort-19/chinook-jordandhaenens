select t.Name as Track, a.Name as Artist, il.InvoiceId
from InvoiceLine il, Track t, Artist a, Album al
where il.TrackId = t.trackId
and al.AlbumId = t.AlbumId
and al.ArtistId = a.ArtistId;
