# Напишите запрос, который включает название трека для каждой позиции из таблицы InvoiceLine. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй название трека.
SELECT il.invoice_id, t.name AS track_name
FROM invoice_line il
JOIN track t ON il.track_id = t.track_id;
