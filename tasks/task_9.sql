# Просматривая таблицу InvoiceLine, напишите запрос, который подсчитывает количество позиций для счета-фактуры с InvoiceId 37. На выходе в первой колонке должно быть количество позиций.
SELECT COUNT(*) AS line_items_count
FROM invoice_line
WHERE invoice_id = 37;
