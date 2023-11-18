select distinct first_name, last_name, title from employees join titles on employees.emp_no = titles.emp_no where title like "%engineer%" and from_date = '2000-3-23';
/* Output
+------------+---------------+-----------------+
| first_name | last_name     | title           |
+------------+---------------+-----------------+
| Nahla      | Silva         | Engineer        |
| Uli        | Lichtner      | Senior Engineer |
| Matk       | Schlegelmilch | Senior Engineer |
| Mayuko     | Luff          | Engineer        |
| Masami     | Panienski     | Senior Engineer |
| Tzvetan    | Brodie        | Senior Engineer |
| Kerhong    | Pappas        | Senior Engineer |
| Xiaoshan   | Keirsey       | Senior Engineer |
| Jiakeng    | Baaleh        | Senior Engineer |
| Fox        | Begiun        | Senior Engineer |
+------------+---------------+-----------------+
10 rows in set (0.16 sec)
*/