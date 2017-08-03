select 
    Count (pt.TrackId) as "Song Total",
	p.Name
from PlaylistTrack pt, Playlist p
where pt.PlaylistId = p.PlaylistId
group by p.Name;