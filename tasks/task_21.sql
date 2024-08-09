# Напишите запрос, который показывает количество клиентов, назначенных каждому торговому агенту. На выходе в первой колонке должно быть количество клиентов, во второй имя и фамилия продавца.
SELECT COUNT(c.customer_id) AS customer_count, CONCAT(e.first_name, ' ', e.last_name) AS employee_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id
GROUP BY e.employee_id;
