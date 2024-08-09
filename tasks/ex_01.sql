# Напишите запрос, который выводит Customers (только их полные имена, идентификатор клиента и страну), которые не находятся в US. На выходе в первой колонке должны быть имя и фамилия клиента, во второй идентификатор клиента, в третьей название страны.
$ ls
ex_01.sql
$ cat ex_01.sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name, customer_id, country
FROM customer
WHERE country != 'US';
