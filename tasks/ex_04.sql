# Напишите запрос, который выводит только Employees, которые являются агентами по продажам. На выходе в первой колонке должны быть имя и фамилия работника. HINT: where title like '%sales%' or '%agent%'
$ ls
ex_04.sql
$ cat ex_04.sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employee
WHERE title LIKE '%sales%' OR title LIKE '%agent%';
