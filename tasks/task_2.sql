# Напишите запрос, который выводит только Customers из Brasil. На выходе в первой колонке должны быть имя и фамилия клиента.
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customer
WHERE country = 'Brasil';
