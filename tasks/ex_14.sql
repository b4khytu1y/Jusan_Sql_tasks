# Напишите запрос, который показывает общее количество треков в каждом Playlist. На выходе в первой колонке должно быть количество треков, во второй название плейлиста.
$ ls
ex_14.sql
$ cat ex_14.sql
SELECT COUNT(pt.track_id) AS track_count, p.name AS playlist_name
FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
GROUP BY p.name;
