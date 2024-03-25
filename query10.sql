-- Muestra las listas de reproducción cuyo nombre comienza por C, junto a todas
-- sus canciones, ordenadas por álbum y por duración.
USE Chinook;
SELECT List.Name AS "PlayList", t.Name AS "Cancion", a.Title AS "Álbum", t.Milliseconds AS "Duración"
FROM Playlist AS List
JOIN PlaylistTrack AS pt
JOIN Track AS t
JOIN Album AS a
ON List.PlaylistId = pt.PlaylistId
AND pt.TrackId = t.TrackId
AND t.AlbumId = a.AlbumId
WHERE List.Name LIKE "C%"
ORDER BY t.AlbumId, t.Milliseconds Desc;