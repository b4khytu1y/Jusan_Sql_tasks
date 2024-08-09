# Напишите запрос, который показывает топ-5 самых покупаемых треков за все время. На выходе в первой колонке должно быть название трека, во второй в отсортированном по убыванию порядке количество экземпляров трека.
SELECT t.name AS track_name, SUM(il.quantity) AS total_quantity
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id
GROUP BY t.track_id
ORDER BY total_quantity DESC
LIMIT 5;
