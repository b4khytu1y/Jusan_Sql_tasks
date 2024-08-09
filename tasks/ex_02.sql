# Напишите запрос, который выводит только Customers из Brasil. На выходе в первой колонке должны быть имя и фамилия клиента.
$ ls
ex_02.sql
$ cat ex_02.sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customer
WHERE country = 'Brasil';
