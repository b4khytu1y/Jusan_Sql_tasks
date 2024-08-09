# Напишите запрос, который показывает общую сумму счета, имя клиента, страну и имя агента по продаже для всех счетов и клиентов. На выходе в первой колонке должна быть общая стоимость счет-фактуры, во второй имя и фамилия покупателя, в третьей страна выставления счета, в четвертой имя и фамилия продавца.
$ ls
ex_07.sql
$ cat ex_07.sql
SELECT i.total, CONCAT(c.first_name, ' ', c.last_name) AS customer_name, i.billing_country,
       CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
LEFT JOIN employee e ON c.support_rep_id = e.employee_id;
