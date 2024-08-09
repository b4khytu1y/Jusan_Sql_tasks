<h2> Это репозиторий, в котором содержатся решения задач по SQL, выполненных в рамках курса MOST Java Backend Access</h2>
<h2> Схема Базы данных</h2>
![image](https://github.com/user-attachments/assets/0cc4a449-1baa-486b-93b0-0053dc1b865d)
<div> <h2> Список задач:</h2>

1) Напишите запрос, который выводит Customers (только их полные имена, идентификатор клиента и страну), которые не находятся в US. На выходе в первой колонке должны быть имя и фамилия клиента, во второй идентификатор клиента, в третьей название страны.<br>
2) Напишите запрос, который выводит только Customers из Brasil. На выходе в первой колонке должны быть имя и фамилия клиента.<br>
3) Напишите запрос, который выводит счета-фактуры Customers из Brasil. На выходе в первой колонке должны быть имя и фамилия клиента, во второй идентификатор счета, в третьей дата выставления счета, в четвертой страна выставления счета.<br>
4) Напишите запрос, который выводит только Employees, которые являются агентами по продажам. На выходе в первой колонке должны быть имя и фамилия работника. HINT: where title like '%sales%' or '%agent%'<br>
5) Напишите запрос, который выводит уникальный список стран для которых был выставлен счет из таблицы Invoice. На выходе в первой колонке должно быть название страны.<br>
6) Напишите запрос, который показывает счета-фактуры, связанные с каждым торговым агентом. На выходе в первой колонке должен быть идентификатор счета, во второй имя и фамилия работника. HINT: `where title like '%sales%' or '%agent%'<br>
7) Напишите запрос, который показывает общую сумму счета, имя клиента, страну и имя агента по продаже для всех счетов и клиентов. На выходе в первой колонке должна быть общая стоимость счет-фактуры, во второй имя и фамилия покупателя, в третьей страна выставления счета, в четвертой имя и фамилия продавца.<br>
8) Сколько счетов было выставлено в 2009 и 2011 годах? Каковы соответствующие объемы продаж за каждый год? На выходе в первой колонке должен быть год выставления счет-фактуры, во второй сумма стоимостей всех счет-фактур.<br>
9) Просматривая таблицу InvoiceLine, напишите запрос, который подсчитывает количество позиций для счета-фактуры с InvoiceId 37. На выходе в первой колонке должно быть количество позиций.<br>
10) Просматривая таблицу InvoiceLine, напишите запрос, который подсчитывает количество позиций для каждой счета-фактуры. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй количество позиций. HINT: GROUP BY.<br>
11) Напишите запрос, который включает название трека для каждой позиции из таблицы InvoiceLine. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй название трека.<br>
12) Напишите запрос, который включает название приобретенного трека и имя исполнителя для каждой позиции счета-фактуры из таблицы InvoiceLine. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй название трека, в третьей имя исполнителя.<br>
13) Напишите запрос, который показывает количество позиций счет-фактур в каждой стране. На выходе в первой колонке должно быть количество позиций счет-фактур, во второй название страны. HINT: GROUP BY<br>
14) Напишите запрос, который показывает общее количество треков в каждом Playlist. На выходе в первой колонке должно быть количество треков, во второй название плейлиста.<br>
15) Напишите запрос, который показывает все треки, но не отображает их идентификаторы. На выходе в первой колонке должно быть название трека, во второй название альбома, в третье медиа-тип, в четвертой жанр трека.<br>
16) Напишите запрос, который показывает все счета-фактуры и количество позиций. На выходе в первой колонке должен быть идентификатор счет-фактуры, во второй количество позиций в счет-фактуре.<br>
17) Напишите запрос, который показывает общий объем продаж, совершенных работником. На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.<br>
18) Какой работник сделал самый большой объем продаж в 2009 году? На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.<br>
19) Какой работник добился наибольшего объема продаж в 2010 году? На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.<br>
20) Какой работник сделал больше всего по объему продаж за все время? На выходе в первой колонке должна быть сумма продаж, во второй имя и фамилия продавца.<br>
21) Напишите запрос, который показывает количество клиентов, назначенных каждому торговому агенту. На выходе в первой колонке должно быть количество клиентов, во второй имя и фамилия продавца.<br>
22) Напишите запрос, который показывает общий объем продаж по странам. На выходе в первой колонке должно быть название страны, во второй в отсортированном по убыванию сумма счет-фактур.<br>
23) Напишите запрос, который показывает треки 2013 года, отсортированные по количеству проданных экземпляров. На выходе в первой колонке должно быть название трека, во второй в отсортированном по убыванию порядку количество экземпляров трека.<br>
24) Напишите запрос, который показывает топ-5 самых покупаемых треков за все время. На выходе в первой колонке должно быть название трека, во второй в отсортированном по убыванию порядке количество экземпляров трека.
</div>
