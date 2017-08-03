select 
    t.Name as TrackName,
	al.Title as Album,
	m.Name as MediaType,
	g.name as Genre
from Track t, Album al, MediaType m, Genre g
where t.albumId = al.albumId
and t.mediaTypeId = m.mediaTypeId
and t.genreId = g.genreId
order by Genre asc;

	