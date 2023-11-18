select name as Drinker from Drinkers where name not in (select drinker from Frequents);
/* Output
Empty set (0.00 sec)
*/