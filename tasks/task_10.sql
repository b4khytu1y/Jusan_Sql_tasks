# Просматривая таблицу InvoiceLine, напишите запрос, который подсчитывает количество позиций для каждой счета-фактуры. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй количество позиций. HINT: GROUP BY.
SELECT invoice_id, COUNT(*) AS line_items_count
FROM invoice_line
GROUP BY invoice_id;
