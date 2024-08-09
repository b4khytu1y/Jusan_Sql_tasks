# Напишите запрос, который показывает треки 2013 года, отсортированные по количеству проданных экземпляров. На выходе в первой колонке должно быть название трека, во второй в отсортированном по убыванию порядку количество экземпляров трека.
SELECT t.name AS track_name, SUM(il.quantity) AS total_quantity
FROM invoice_line il
JOIN invoice i ON il.invoice_id = i.invoice_id
JOIN track t ON il.track_id = t.track_id
WHERE YEAR(i.invoice_date) = 2013
GROUP BY t.track_id
ORDER BY total_quantity DESC;
