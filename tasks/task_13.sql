# Напишите запрос, который показывает количество позиций счет-фактур в каждой стране. На выходе в первой колонке должно быть количество позиций счет-фактур, во второй название страны. HINT: GROUP BY
SELECT COUNT(il.invoice_line_id) AS line_items_count, i.billing_country
FROM invoice_line il
JOIN invoice i ON il.invoice_id = i.invoice_id
GROUP BY i.billing_country;
