# Какой работник сделал самый большой объем продаж в 2009 году? На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.
$ ls
ex_18.sql
$ cat ex_18.sql
SELECT SUM(i.total) AS total_sales, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id
JOIN employee e ON c.support_rep_id = e.employee_id
WHERE YEAR(i.invoice_date) = 2009
GROUP BY e.employee_id
ORDER BY total_sales DESC
LIMIT 1;
