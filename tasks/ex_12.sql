# Напишите запрос, который включает название приобретенного трека и имя исполнителя для каждой позиции счета-фактуры из таблицы InvoiceLine. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй название трека, в третьей имя исполнителя.
$ ls
ex_12.sql
$ cat ex_12.sql
SELECT il.invoice_id, t.name AS track_name, ar.name AS artist_name
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
JOIN album al ON t.album_id = al.album_id
JOIN artist ar ON al.artist_id = ar.artist_id;
