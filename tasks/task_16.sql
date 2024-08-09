# Напишите запрос, который показывает все счета-фактуры и количество позиций. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй количество позиций в счет-фактуре.
SELECT i.invoice_id, COUNT(il.invoice_line_id) AS line_items_count
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
GROUP BY i.invoice_id;
