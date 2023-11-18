select drinker from Likes where drinker in (select drinker from Likes where beer = 'Bud') and drinker not in (select drinker from Likes where beer = 'Summerbrew');
/* Output
+----------+
| drinker  |
+----------+
| Bill     |
| Jennifer |
+----------+
2 rows in set (0.01 sec)
*/

