-- 26-august-2026








mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+----------+------------+------+--------------+----------+
-- | employee_id | employee_name | department | city   | salary   | experience | age  | joining_date | status   |
-- +-------------+---------------+------------+--------+----------+------------+------+--------------+----------+
-- |           1 | Amit          | IT         | Mumbai | 89198.00 |          2 |   25 | 2023-06-10   | Active   |
-- |           2 | Rahul         | HR         | BHOPAL | 65318.00 |          4 |   29 | 2021-04-15   | Inactive |
-- |           3 | Priya         | IT         | INDORE | 93170.00 |          6 |   32 | 2019-08-20   | Active   |
-- |           4 | Neha          | Fiance     | Delhi  | 72760.00 |          5 |   30 | 2020-01-10   | Inactive |
-- |           5 | Vikas         | IT         | Pune   | 99825.00 |          8 |   35 | 2018-03-12   | Active   |
-- |           6 | Sneha         | HR         | Indore | 71150.40 |          3 |   27 | 2022-07-18   | Inactive |
-- +-------------+---------------+------------+--------+----------+------------+------+--------------+----------+
-- 6 rows in set (0.02 sec)








mysql> SELECT employee_id, salary FROM employeeup;

-- +-------------+----------+
-- | employee_id | salary   |
-- +-------------+----------+
-- |           1 | 89198.00 |
-- |           2 | 65318.00 |
-- |           3 | 93170.00 |
-- |           4 | 72760.00 |
-- |           5 | 99825.00 |
-- |           6 | 71150.40 |
-- +-------------+----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = 5000 WHERE employee_id = 1;

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_id, salary FROM employeeup;

-- +-------------+----------+
-- | employee_id | salary   |
-- +-------------+----------+
-- |           1 |  5000.00 |
-- |           2 | 65318.00 |
-- |           3 | 93170.00 |
-- |           4 | 72760.00 |
-- |           5 | 99825.00 |
-- |           6 | 71150.40 |
-- +-------------+----------+
-- 6 rows in set (0.00 sec)








mysql> SELECT employee_id,city, department,  salary FROM employeeup;

-- +-------------+--------+------------+----------+
-- | employee_id | city   | department | salary   |
-- +-------------+--------+------------+----------+
-- |           1 | Mumbai | IT         |  5000.00 |
-- |           2 | BHOPAL | HR         | 65318.00 |
-- |           3 | INDORE | IT         | 93170.00 |
-- |           4 | Delhi  | Fiance     | 72760.00 |
-- |           5 | Pune   | IT         | 99825.00 |
-- |           6 | Indore | HR         | 71150.40 |
-- +-------------+--------+------------+----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = 20000, city = 'BHOPAL', department = 'HR' WHERE employee_id = 5;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_id,city, department,  salary FROM employeeup;

-- +-------------+--------+------------+----------+
-- | employee_id | city   | department | salary   |
-- +-------------+--------+------------+----------+
-- |           1 | Mumbai | IT         |  5000.00 |
-- |           2 | BHOPAL | HR         | 65318.00 |
-- |           3 | INDORE | IT         | 93170.00 |
-- |           4 | Delhi  | Fiance     | 72760.00 |
-- |           5 | BHOPAL | HR         | 20000.00 |
-- |           6 | Indore | HR         | 71150.40 |
-- +-------------+--------+------------+----------+
-- 6 rows in set (0.01 sec)








mysql> UPDATE employeeup SET salary = 55000 WHERE salary < 50000;

-- Query OK, 2 rows affected (0.06 sec)
-- Rows matched: 2  Changed: 2  Warnings: 0








mysql> SELECT employee_id,city, department,  salary FROM employeeup;

-- +-------------+--------+------------+----------+
-- | employee_id | city   | department | salary   |
-- +-------------+--------+------------+----------+
-- |           1 | Mumbai | IT         | 55000.00 |
-- |           2 | BHOPAL | HR         | 65318.00 |
-- |           3 | INDORE | IT         | 93170.00 |
-- |           4 | Delhi  | Fiance     | 72760.00 |
-- |           5 | BHOPAL | HR         | 55000.00 |
-- |           6 | Indore | HR         | 71150.40 |
-- +-------------+--------+------------+----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = 90000 WHERE experience = 5;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_id, experience, salary FROM employeeup;

-- +-------------+------------+----------+
-- | employee_id | experience | salary   |
-- +-------------+------------+----------+
-- |           1 |          2 | 55000.00 |
-- |           2 |          4 | 65318.00 |
-- |           3 |          6 | 93170.00 |
-- |           4 |          5 | 90000.00 |
-- |           5 |          8 | 55000.00 |
-- |           6 |          3 | 71150.40 |
-- +-------------+------------+----------+
-- 6 rows in set (0.00 sec)








mysql> SELECT employee_id, experience, salary, department FROM employeeup;

-- +-------------+------------+----------+------------+
-- | employee_id | experience | salary   | department |
-- +-------------+------------+----------+------------+
-- |           1 |          2 | 55000.00 | IT         |
-- |           2 |          4 | 65318.00 | HR         |
-- |           3 |          6 | 98170.00 | IT         |
-- |           4 |          5 | 90000.00 | Finance    |
-- |           5 |          8 | 55000.00 | HR         |
-- |           6 |          3 | 71150.40 | HR         |
-- +-------------+------------+----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary + 3000 WHERE department = 'HR' OR department = 'finance';

-- Query OK, 4 rows affected (0.07 sec)
-- Rows matched: 4  Changed: 4  Warnings: 0








mysql> SELECT employee_id, experience, salary, department FROM employeeup;

-- +-------------+------------+----------+------------+
-- | employee_id | experience | salary   | department |
-- +-------------+------------+----------+------------+
-- |           1 |          2 | 55000.00 | IT         |
-- |           2 |          4 | 68318.00 | HR         |
-- |           3 |          6 | 98170.00 | IT         |
-- |           4 |          5 | 93000.00 | Finance    |
-- |           5 |          8 | 58000.00 | HR         |
-- |           6 |          3 | 74150.40 | HR         |
-- +-------------+------------+----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary + 4000 WHERE department IN ('HR', 'Finance', 'IT');

-- Query OK, 6 rows affected (0.06 sec)
-- Rows matched: 6  Changed: 6  Warnings: 0








mysql> SELECT employee_id, experience, salary, department FROM employeeup;

-- +-------------+------------+-----------+------------+
-- | employee_id | experience | salary    | department |
-- +-------------+------------+-----------+------------+
-- |           1 |          2 |  59000.00 | IT         |
-- |           2 |          4 |  72318.00 | HR         |
-- |           3 |          6 | 102170.00 | IT         |
-- |           4 |          5 |  97000.00 | Finance    |
-- |           5 |          8 |  62000.00 | HR         |
-- |           6 |          3 |  78150.40 | HR         |
-- +-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary + 10000 WHERE department NOT IN ('HR', 'Finance');

-- Query OK, 2 rows affected (0.06 sec)
-- Rows matched: 2  Changed: 2  Warnings: 0








mysql> SELECT employee_id, experience, salary, department FROM employeeup;

-- +-------------+------------+-----------+------------+
-- | employee_id | experience | salary    | department |
-- +-------------+------------+-----------+------------+
-- |           1 |          2 |  69000.00 | IT         |
-- |           2 |          4 |  72318.00 | HR         |
-- |           3 |          6 | 112170.00 | IT         |
-- |           4 |          5 |  97000.00 | Finance    |
-- |           5 |          8 |  62000.00 | HR         |
-- |           6 |          3 |  78150.40 | HR         |
-- +-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary + 7000 WHERE salary BETWEEN 60000 AND 70000;

-- Query OK, 2 rows affected (0.10 sec)
-- Rows matched: 2  Changed: 2  Warnings: 0








mysql> SELECT employee_id, experience, salary, department FROM employeeup;

-- +-------------+------------+-----------+------------+
-- | employee_id | experience | salary    | department |
-- +-------------+------------+-----------+------------+
-- |           1 |          2 |  76000.00 | IT         |
-- |           2 |          4 |  72318.00 | HR         |
-- |           3 |          6 | 112170.00 | IT         |
-- |           4 |          5 |  97000.00 | Finance    |
-- |           5 |          8 |  69000.00 | HR         |
-- |           6 |          3 |  78150.40 | HR         |
-- +-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET department = 'IT' WHERE employee_name LIKE 'a%';

-- Query OK, 0 rows affected (0.00 sec)
-- Rows matched: 1  Changed: 0  Warnings: 0








mysql> SELECT employee_name,employee_id, experience, salary, department FROM employeeup;

-- +---------------+-------------+------------+-----------+------------+
-- | employee_name | employee_id | experience | salary    | department |
-- +---------------+-------------+------------+-----------+------------+
-- | Amit          |           1 |          2 |  76000.00 | IT         |
-- | Rahul         |           2 |          4 |  72318.00 | HR         |
-- | Priya         |           3 |          6 | 112170.00 | IT         |
-- | Neha          |           4 |          5 |  97000.00 | Finance    |
-- | Vikas         |           5 |          8 |  69000.00 | HR         |
-- | Sneha         |           6 |          3 |  78150.40 | HR         |
-- +---------------+-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET department = 'IT' WHERE employee_name LIKE 'R%';

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_name,employee_id, experience, salary, department FROM employeeup;

-- +---------------+-------------+------------+-----------+------------+
-- | employee_name | employee_id | experience | salary    | department |
-- +---------------+-------------+------------+-----------+------------+
-- | Amit          |           1 |          2 |  76000.00 | IT         |
-- | Rahul         |           2 |          4 |  72318.00 | IT         |
-- | Priya         |           3 |          6 | 112170.00 | IT         |
-- | Neha          |           4 |          5 |  97000.00 | Finance    |
-- | Vikas         |           5 |          8 |  69000.00 | HR         |
-- | Sneha         |           6 |          3 |  78150.40 | HR         |
-- +---------------+-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET city = 'Goa' WHERE city IS NULL;

-- Query OK, 0 rows affected (0.00 sec)
-- Rows matched: 0  Changed: 0  Warnings: 0








mysql> SELECT employee_name,employee_id,city FROM employeeup;

-- +---------------+-------------+--------+
-- | employee_name | employee_id | city   |
-- +---------------+-------------+--------+
-- | Amit          |           1 | Mumbai |
-- | Rahul         |           2 | BHOPAL |
-- | Priya         |           3 | INDORE |
-- | Neha          |           4 | Delhi  |
-- | Vikas         |           5 | Pune   |
-- | Sneha         |           6 | Indore |
-- +---------------+-------------+--------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET city = null WHERE city = 'Delhi';

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_name,employee_id,city FROM employeeup;

-- +---------------+-------------+--------+
-- | employee_name | employee_id | city   |
-- +---------------+-------------+--------+
-- | Amit          |           1 | Mumbai |
-- | Rahul         |           2 | BHOPAL |
-- | Priya         |           3 | INDORE |
-- | Neha          |           4 | NULL   |
-- | Vikas         |           5 | Pune   |
-- | Sneha         |           6 | Indore |
-- +---------------+-------------+--------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET city = 'Goa' WHERE city IS NULL;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_name,employee_id,city FROM employeeup;

-- +---------------+-------------+--------+
-- | employee_name | employee_id | city   |
-- +---------------+-------------+--------+
-- | Amit          |           1 | Mumbai |
-- | Rahul         |           2 | BHOPAL |
-- | Priya         |           3 | INDORE |
-- | Neha          |           4 | Goa    |
-- | Vikas         |           5 | Pune   |
-- | Sneha         |           6 | Indore |
-- +---------------+-------------+--------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary*1.10 WHERE department = 'IT';

-- Query OK, 3 rows affected (0.07 sec)
-- Rows matched: 3  Changed: 3  Warnings: 0








mysql> SELECT employee_id, department, salary FROM employeeup;

-- +-------------+------------+-----------+
-- | employee_id | department | salary    |
-- +-------------+------------+-----------+
-- |           1 | IT         |  83600.00 |
-- |           2 | IT         |  79549.80 |
-- |           3 | IT         | 123387.00 |
-- |           4 | Finance    |  97000.00 |
-- |           5 | HR         |  69000.00 |
-- |           6 | HR         |  78150.40 |
-- +-------------+------------+-----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary*1.15 WHERE department = 'IT' AND experience >= 5 AND salary < 80000;

-- Query OK, 0 rows affected (0.00 sec)
-- Rows matched: 0  Changed: 0  Warnings: 0








mysql> SELECT employee_id, department, salary, experience FROM employeeup;

-- +-------------+------------+-----------+------------+
-- | employee_id | department | salary    | experience |
-- +-------------+------------+-----------+------------+
-- |           1 | IT         |  83600.00 |          2 |
-- |           2 | IT         |  79549.80 |          4 |
-- |           3 | IT         | 123387.00 |          6 |
-- |           4 | Finance    |  97000.00 |          5 |
-- |           5 | HR         |  69000.00 |          8 |
-- |           6 | HR         |  78150.40 |          3 |
-- +-------------+------------+-----------+------------+
-- 6 rows in set (0.01 sec)








mysql> UPDATE employeeup SET salary = salary*1.15, experience = experience +1  WHERE department = 'IT';


-- Query OK, 3 rows affected (0.10 sec)
-- Rows matched: 3  Changed: 3  Warnings: 0








mysql> SELECT employee_id, department, salary, experience FROM employeeup;

-- +-------------+------------+-----------+------------+
-- | employee_id | department | salary    | experience |
-- +-------------+------------+-----------+------------+
-- |           1 | IT         |  96140.00 |          3 |
-- |           2 | IT         |  91482.27 |          5 |
-- |           3 | IT         | 141895.05 |          7 |
-- |           4 | Finance    |  97000.00 |          5 |
-- |           5 | HR         |  69000.00 |          8 |
-- |           6 | HR         |  78150.40 |          3 |
-- +-------------+------------+-----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary * 1.10 WHERE joining_date < '2020-02-02';

-- Query OK, 3 rows affected, 1 warning (0.05 sec)
-- Rows matched: 3  Changed: 3  Warnings: 1








mysql> SELECT employee_id, employee_name, joining_date, salary, experience FROM employeeup;

-- +-------------+---------------+--------------+-----------+------------+
-- | employee_id | employee_name | joining_date | salary    | experience |
-- +-------------+---------------+--------------+-----------+------------+
-- |           1 | Amit          | 2023-06-10   |  96140.00 |          3 |
-- |           2 | Rahul         | 2021-04-15   |  91482.27 |          5 |
-- |           3 | Priya         | 2019-08-20   | 156084.56 |          7 |
-- |           4 | Neha          | 2020-01-10   | 106700.00 |          5 |
-- |           5 | Vikas         | 2018-03-12   |  75900.00 |          8 |
-- |           6 | Sneha         | 2022-07-18   |  78150.40 |          3 |
-- +-------------+---------------+--------------+-----------+------------+
-- 6 rows in set (0.00 sec)








UPDATE employeeup SET salary = salary*1.10 WHERE YEAR(joining_date)< '2020';

-- Query OK, 2 rows affected, 1 warning (0.06 sec)
-- Rows matched: 2  Changed: 2  Warnings: 1








mysql> SELECT employee_name, salary,
    -> CASE
    -> WHEN salary>= 80000 THEN 'HIGH'
    -> WHEN salary>= 50000 THEN 'MEDIUM'
    -> ELSE 'LOW'
    -> END AS salary_category FROM employeeup;

-- +---------------+-----------+-----------------+
-- | employee_name | salary    | salary_category |
-- +---------------+-----------+-----------------+
-- | Amit          |  96140.00 | HIGH            |
-- | Rahul         |  91482.27 | HIGH            |
-- | Priya         | 171693.02 | HIGH            |
-- | Neha          | 106700.00 | HIGH            |
-- | Vikas         |  83490.00 | HIGH            |
-- | Sneha         |  78150.40 | MEDIUM          |
-- +---------------+-----------+-----------------+
-- 6 rows in set (0.00 sec)








mysql> SELECT employee_name, department, salary FROM employeeup ORDER BY
    -> CASE
    -> WHEN department= 'IT' then 1
    -> WHEN department= 'HR' then 2
    -> WHEN department= 'Finance' then 3
    -> WHEN department= 'Salaes' then 4
    -> ELSE 5
    -> END;

-- +---------------+------------+-----------+
-- | employee_name | department | salary    |
-- +---------------+------------+-----------+
-- | Amit          | IT         |  96140.00 |
-- | Rahul         | IT         |  91482.27 |
-- | Priya         | IT         | 171693.02 |
-- | Vikas         | HR         |  83490.00 |
-- | Sneha         | HR         |  78150.40 |
-- | Neha          | Finance    | 106700.00 |
-- +---------------+------------+-----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary=
    -> CASE
    ->     WHEN department = 'HR' THEN salary*1.08
    ->     WHEN department = 'IT' THEN salary* 1.10
    ->     WHEN department = 'Finance' THEN salary*1.07
    ->     ELSE salary
    -> END;

-- Query OK, 6 rows affected, 3 warnings (0.06 sec)
-- Rows matched: 6  Changed: 6  Warnings: 3








mysql> SELECT employee_name, employee_id, department, salary FROM employeeup;

-- +---------------+-------------+------------+-----------+
-- | employee_name | employee_id | department | salary    |
-- +---------------+-------------+------------+-----------+
-- | Amit          |           1 | IT         | 105754.00 |
-- | Rahul         |           2 | IT         | 100630.50 |
-- | Priya         |           3 | IT         | 188862.32 |
-- | Neha          |           4 | Finance    | 114169.00 |
-- | Vikas         |           5 | HR         |  90169.20 |
-- | Sneha         |           6 | HR         |  84402.43 |
-- +---------------+-------------+------------+-----------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = 
    ->     CASE 
    ->         WHEN experience > 8 THEN salary*1.15
    ->         WHEN experience > 5 THEN salary*1.10
    ->         WHEN experience > 3 THEN salary*1.07
    ->         ELSE salary*1.05
    ->     END;

-- Query OK, 6 rows affected, 3 warnings (0.06 sec)
-- Rows matched: 6  Changed: 6  Warnings: 3








mysql> SELECT employee_name, employee_id, department, salary FROM employeeup;

-- +---------------+-------------+------------+-----------+
-- | employee_name | employee_id | department | salary    |
-- +---------------+-------------+------------+-----------+
-- | Amit          |           1 | IT         | 111041.70 |
-- | Rahul         |           2 | IT         | 107674.64 |
-- | Priya         |           3 | IT         | 207748.55 |
-- | Neha          |           4 | Finance    | 122160.83 |
-- | Vikas         |           5 | HR         |  99186.12 |
-- | Sneha         |           6 | HR         |  88622.55 |
-- +---------------+-------------+------------+-----------+
-- 6 rows in set (0.00 sec)








mysql> SELECT employee_name, status, department FROM employeeup;

-- +---------------+----------+------------+
-- | employee_name | status   | department |
-- +---------------+----------+------------+
-- | Amit          | Active   | IT         |
-- | Rahul         | Inactive | IT         |
-- | Priya         | Active   | IT         |
-- | Neha          | Inactive | Finance    |
-- | Vikas         | Active   | HR         |
-- | Sneha         | Inactive | HR         |
-- +---------------+----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET status='INACTIVE' WHERE department = 'HR' LIMIT 1;

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_name, status, department FROM employeeup;

-- +---------------+----------+------------+
-- | employee_name | status   | department |
-- +---------------+----------+------------+
-- | Amit          | Active   | IT         |
-- | Rahul         | Inactive | IT         |
-- | Priya         | Active   | IT         |
-- | Neha          | Inactive | Finance    |
-- | Vikas         | INACTIVE | HR         |
-- | Sneha         | Inactive | HR         |
-- +---------------+----------+------------+
-- 6 rows in set (0.00 sec)








mysql> UPDATE employeeup SET salary = salary + 5000 WHERE department = 'IT' ORDER BY salary LIMIT 1;

-- Query OK, 1 row affected (0.09 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0








mysql> SELECT employee_name, department, salary FROM employeeup;

-- +---------------+------------+-----------+
-- | employee_name | department | salary    |
-- +---------------+------------+-----------+
-- | Amit          | IT         | 111041.70 |
-- | Rahul         | IT         | 112674.64 |
-- | Priya         | IT         | 207748.55 |
-- | Neha          | Finance    | 122160.83 |
-- | Vikas         | HR         |  99186.12 |
-- | Sneha         | HR         |  88622.55 |
-- +---------------+------------+-----------+
-- 6 rows in set (0.00 sec)








UPDATE employeeup SET salary = salary + 5000 WHERE department = 'IT' ORDER BY salary DESC LIMIT 1,1;

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',1' at line 1
--  error beacuse here offset is not support in UPDATE
