create or replace view Beers2Bars as select manf, beer, bar, price from Beers join Sells on Beers.name = Sells.beer;
/* Output
Query OK, 0 rows affected (0.03 sec)
To view the table:
select * from Beers2Bars;
+----------------+------------+------------+-------+
| manf           | beer       | bar        | price |
+----------------+------------+------------+-------+
| Anheuser-Busch | Bud        | Bob's bar  |     3 |
| Anheuser-Busch | Bud        | Joe's bar  |     3 |
| Anheuser-Busch | Bud        | Mary's bar |  NULL |
| Anheuser-Busch | Bud Lite   | Joe's bar  |     3 |
| Anheuser-Busch | Bud Lite   | Mary's bar |     3 |
| Heineken       | Budweiser  | Mary's bar |     2 |
| Anheuser-Busch | Michelob   | Joe's bar  |     3 |
| Pete's         | Summerbrew | Bob's bar  |     3 |
| Pete's         | Summerbrew | Joe's bar  |     4 |
+----------------+------------+------------+-------+
9 rows in set (0.00 sec)
*/


