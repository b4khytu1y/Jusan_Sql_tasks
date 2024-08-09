# Напишите запрос, который выводит только Employees, которые являются агентами по продажам. На выходе в первой колонке должны быть имя и фамилия работника. HINT: where title like '%sales%' or '%agent%'
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employee
WHERE title LIKE '%sales%' OR title LIKE '%agent%';
