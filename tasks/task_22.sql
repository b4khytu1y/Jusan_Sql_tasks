# Напишите запрос, который показывает общий объем продаж по странам. На выходе в первой колонке должно быть название страны, во второй в отсортированном по убыванию сумма счет-фактур.
SELECT i.billing_country, SUM(i.total) AS total_sales
FROM invoice i
GROUP BY i.billing_country
ORDER BY total_sales DESC;
