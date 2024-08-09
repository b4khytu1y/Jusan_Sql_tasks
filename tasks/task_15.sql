# Напишите запрос, который показывает все треки, но не отображает их идентификаторы. На выходе в первой колонке должно быть название трека, во второй название альбома, в третье медиа-тип, в четвертой жанр трека.
SELECT t.name AS track_name, al.title AS album_title, mt.name AS media_type, g.name AS genre
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN media_type mt ON t.media_type_id = mt.media_type_id
JOIN genre g ON t.genre_id = g.genre_id;
