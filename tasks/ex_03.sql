# Напишите запрос, который выводит счета-фактуры Customers из Brasil. На выходе в первой колонке должны быть имя и фамилия клиента, во второй идентификатор счета, в третьей дата выставления счета, в четвертой страна выставления счета.
$ ls
ex_03.sql
$ cat ex_03.sql
SELECT CONCAT(c.first_name, ' ', c.last_name) AS full_name, i.invoice_id, i.invoice_date, i.billing_country
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
WHERE c.country = 'Brasil';
