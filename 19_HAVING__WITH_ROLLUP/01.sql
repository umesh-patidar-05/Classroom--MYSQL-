-- 07/september/2026




mysql> SELECT department, MAX(salary) FROM employee WHERE employment_type = 'FULL_TIME' GROUP BY department;

-- +------------+-------------+
-- | department | MAX(salary) |
-- +------------+-------------+
-- | IT         |    95000.00 |
-- | HR         |    72000.00 |
-- | Finance    |   105000.00 |
-- | Sales      |   110000.00 |
-- +------------+-------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, city, COUNT(*) FROM employee WHERE employment_type = 'FULL_TIME' GROUP BY department, city;

-- +------------+--------+----------+
-- | department | city   | COUNT(*) |
-- +------------+--------+----------+
-- | IT         | Indore |        1 |
-- | IT         | Mumbai |        1 |
-- | IT         | Pune   |        1 |
-- | HR         | Indore |        1 |
-- | HR         | Mumbai |        1 |
-- | Finance    | Pune   |        1 |
-- | Finance    | Indore |        1 |
-- | Sales      | Pune   |        1 |
-- | Sales      | Mumbai |        1 |
-- +------------+--------+----------+
-- 9 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employee GROUP BY department HAVING COUNT(*) > 2;

-- +------------+----------+
-- | department | count(*) |
-- +------------+----------+
-- | IT         |        4 |
-- | Finance    |        3 |
-- | Sales      |        3 |
-- +------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employee GROUP BY department HAVING SUM(salary) > 200000;

-- +------------+-------------+
-- | DEPARTMENT | SUM(salary) |
-- +------------+-------------+
-- | IT         |   277000.00 |
-- | Finance    |   218000.00 |
-- | Sales      |   230000.00 |
-- +------------+-------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) AS totalemployee, AVG(salary)  FROM employee GROUP BY department HAVING COUNT(*) > 2 AND AVG(salary) > 50000;

-- +------------+---------------+--------------+
-- | department | totalemployee | AVG(salary)  |
-- +------------+---------------+--------------+
-- | IT         |             4 | 69250.000000 |
-- | Finance    |             3 | 72666.666667 |
-- | Sales      |             3 | 76666.666667 |
-- +------------+---------------+--------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employee WHERE employment_type = 'FULL_TIME' GROUP BY department HAVING COUNT(*) >= 2;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |        3 |
-- | HR         |        2 |
-- | Finance    |        2 |
-- | Sales      |        2 |
-- +------------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employee WHERE employment_type = 'FULL_TIME' GROUP BY department HAVING COUNT(*) >= 5;

-- Empty set (0.00 sec)





mysql> SELECT city, COUNT(*) AS total FROM employee GROUP BY department;

-- ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'batch18.employee.city' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by




mysql> SELECT department, city, COUNT(*) AS total FROM employee GROUP BY department;

-- ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'batch18.employee.city' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by




mysql> SELECT employee_name, SUM(salary) FROM employee GROUP BY employee_name;

-- +---------------+-------------+
-- | employee_name | SUM(salary) |
-- +---------------+-------------+
-- | Aarav         |    45000.00 |
-- | Rohan         |    75000.00 |
-- | Rahul         |    95000.00 |
-- | Priya         |    55000.00 |
-- | Neha          |    72000.00 |
-- | Anjali        |    65000.00 |
-- | Vikas         |   105000.00 |
-- | Karan         |    48000.00 |
-- | Mohit         |    68000.00 |
-- | Sneha         |    52000.00 |
-- | Amit          |   110000.00 |
-- | Pooja         |    62000.00 |
-- +---------------+-------------+
-- 12 rows in set (0.00 sec)





mysql> SELECT department, employee_name, SUM(salary) FROM employee GROUP BY department, employee_name;

-- +------------+---------------+-------------+
-- | department | employee_name | SUM(salary) |
-- +------------+---------------+-------------+
-- | IT         | Aarav         |    45000.00 |
-- | IT         | Rohan         |    75000.00 |
-- | IT         | Rahul         |    95000.00 |
-- | HR         | Priya         |    55000.00 |
-- | HR         | Neha          |    72000.00 |
-- | Finance    | Anjali        |    65000.00 |
-- | Finance    | Vikas         |   105000.00 |
-- | Finance    | Karan         |    48000.00 |
-- | Sales      | Mohit         |    68000.00 |
-- | Sales      | Sneha         |    52000.00 |
-- | Sales      | Amit          |   110000.00 |
-- | IT         | Pooja         |    62000.00 |
-- +------------+---------------+-------------+
-- 12 rows in set (0.01 sec)




mysql> SELECT department, COUNT(*) FROM employee GROUP BY department, COUNT(*);

-- ERROR 1056 (42000): Cant group on 'COUNT(*)'




mysql> SELECT department FROM employee GROUP BY department;

-- +------------+
-- | department |
-- +------------+
-- | IT         |
-- | HR         |
-- | Finance    |
-- | Sales      |
-- +------------+
-- 4 rows in set (0.01 sec)




mysql> SELECT department, salary FROM employee GROUP BY department;

-- ERROR 1055 (42000): Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'batch18.employee.salary' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by




mysql> SELECT department, SUM(salary) FROM employee GROUP BY department WHERE salary > 5000;

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE salary > 5000' at line 1




mysql> SELECT department, SUM(salary) FROM employee GROUP BY department HAVING salary > 5000;

-- ERROR 1054 (42S22): Unknown column 'salary' in 'having clause'




mysql> SELECT department, SUM(salary) FROM employee HAVING SUM(salary)>5000;

-- ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'batch18.employee.department'; this is incompatible with sql_mode=only_full_group_by




mysql> SELECT department, SUM(salary) FROM employee HAVING salary>5000;

-- ERROR 1054 (42S22): Unknown column 'salary' in 'having clause'




mysql> SELECT SUM(salary) FROM employee WHERE SUM(salary) > 50000;

-- ERROR 1111 (HY000): Invalid use of group function




mysql> SELECT SUM(salary) FROM employee HAVING SUM(salary) > 50000;

-- +-------------+
-- | SUM(salary) |
-- +-------------+
-- |   852000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employee GROUP BY department WITH ROLLUP;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | Finance    |   218000.00 |
-- | HR         |   127000.00 |
-- | IT         |   277000.00 |
-- | Sales      |   230000.00 |
-- | NULL       |   852000.00 |
-- +------------+-------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT department,city,  SUM(salary) FROM employee GROUP BY department,city WITH ROLLUP;

-- +------------+--------+-------------+
-- | department | city   | SUM(salary) |
-- +------------+--------+-------------+
-- | Finance    | Indore |   105000.00 |
-- | Finance    | Mumbai |    48000.00 |
-- | Finance    | Pune   |    65000.00 |
-- | Finance    | NULL   |   218000.00 |
-- | HR         | Indore |    55000.00 |
-- | HR         | Mumbai |    72000.00 |
-- | HR         | NULL   |   127000.00 |
-- | IT         | Indore |   107000.00 |
-- | IT         | Mumbai |    75000.00 |
-- | IT         | Pune   |    95000.00 |
-- | IT         | NULL   |   277000.00 |
-- | Sales      | Indore |    52000.00 |
-- | Sales      | Mumbai |   110000.00 |
-- | Sales      | Pune   |    68000.00 |
-- | Sales      | NULL   |   230000.00 |
-- | NULL       | NULL   |   852000.00 |
-- +------------+--------+-------------+
-- 16 rows in set (0.00 sec)




mysql> SELECT department, city FROM employee GROUP BY department, city;

-- +------------+--------+
-- | department | city   |
-- +------------+--------+
-- | IT         | Indore |
-- | IT         | Mumbai |
-- | IT         | Pune   |
-- | HR         | Indore |
-- | HR         | Mumbai |
-- | Finance    | Pune   |
-- | Finance    | Indore |
-- | Finance    | Mumbai |
-- | Sales      | Pune   |
-- | Sales      | Indore |
-- | Sales      | Mumbai |
-- +------------+--------+
-- 11 rows in set (0.00 sec)




mysql> SELECT city FROM employee GROUP BY city;

-- +--------+
-- | city   |
-- +--------+
-- | Indore |
-- | Mumbai |
-- | Pune   |
-- +--------+
-- 3 rows in set (0.00 sec)




mysql> SELECT DISTINCT city FROM employee;

-- +--------+
-- | city   |
-- +--------+
-- | Indore |
-- | Mumbai |
-- | Pune   |
-- +--------+
-- 3 rows in set (0.00 sec)