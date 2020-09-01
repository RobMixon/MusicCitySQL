/*
SELECT s.title,
		a.ArtistName
FROM Song s
	LEFT JOIN Artist a on s.ArtistId = a.id
;
*/

/*
SELECT a.ArtistName
FROM album al
left JOIN Artist a on a.Id = al.ArtistId
left JOIN Genre g ON g.Id = al.GenreId
where (g.Label ='Jazz' OR g.Label = 'Rock');
*/
/*
SELECT AlbumId, Count(AlbumId) as 'song count'
from Song s
GROUP BY AlbumId;

SELECT ArtistId, Count(ArtistId) as 'song count'
from Song
group by ArtistId;
*/

Select Title, AlbumLength
FROM Album
where AlbumLength = (SELECT Max(albumlength) from Album);

Select s.title, s.songlength, a.title
from song s 
left join album a on s.albumId = a.id where songlength = (select max(songlength) from song);