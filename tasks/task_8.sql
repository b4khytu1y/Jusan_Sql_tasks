# Сколько счетов было выставлено в 2009 и 2011 годах? Каковы соответствующие объемы продаж за каждый год? На выходе в первой колонке должен быть год выставления счет-фактуры, во второй сумма стоимостей всех счет-фактур.
SELECT YEAR(invoice_date) AS year, SUM(total) AS total_sales
FROM invoice
WHERE YEAR(invoice_date) IN (2009, 2011)
GROUP BY YEAR(invoice_date);
