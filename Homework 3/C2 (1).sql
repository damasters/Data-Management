select manf as Manufacturer, avg(price) as Average from Beers2Bars group by manf;
/* Output
+----------------+---------+
| Manufacturer   | Average |
+----------------+---------+
| Anheuser-Busch |       3 |
| Heineken       |       2 |
| Pete's         |     3.5 |
+----------------+---------+
3 rows in set (0.00 sec)
*/