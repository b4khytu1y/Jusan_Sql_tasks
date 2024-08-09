# Напишите запрос, который показывает счета-фактуры, связанные с каждым торговым агентом. На выходе в первой колонке должен быть идентификатор счета, во второй имя и фамилия работника. HINT: ( "where title like '%sales%' or '%agent% ")
$ ls
ex_06.sql
$ cat ex_06.sql
SELECT i.invoice_id, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
JOIN employee e ON c.support_rep_id = e.employee_id
WHERE e.title LIKE '%sales%' OR e.title LIKE '%agent%';
