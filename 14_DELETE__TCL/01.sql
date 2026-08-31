-- 27-august-2026




mysql> DELETE FROM employeeup WHERE employee_id = 3;
-- Query OK, 1 row affected (0.07 sec)





mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- | employee_id | employee_name | department | city   | salary    | experience | age  | joining_date | status   |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- |           1 | Amit          | IT         | Mumbai | 111041.70 |          3 |   25 | 2023-06-10   | Active   |
-- |           2 | Rahul         | IT         | BHOPAL | 112674.64 |          5 |   29 | 2021-04-15   | Inactive |
-- |           4 | Neha          | Finance    | Goa    | 122160.83 |          5 |   30 | 2020-01-10   | Inactive |
-- |           5 | Vikas         | HR         | Pune   |  99186.12 |          8 |   35 | 2018-03-12   | INACTIVE |
-- |           6 | Sneha         | HR         | Indore |  88622.55 |          3 |   27 | 2022-07-18   | Inactive |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- 5 rows in set (0.00 sec)








mysql> DELETE FROM employeeup WHERE department = 'HR';

-- Query OK, 2 rows affected (0.11 sec)



mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- | employee_id | employee_name | department | city   | salary    | experience | age  | joining_date | status   |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- |           1 | Amit          | IT         | Mumbai | 111041.70 |          3 |   25 | 2023-06-10   | Active   |
-- |           2 | Rahul         | IT         | BHOPAL | 112674.64 |          5 |   29 | 2021-04-15   | Inactive |
-- |           4 | Neha          | Finance    | Goa    | 122160.83 |          5 |   30 | 2020-01-10   | Inactive |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- 3 rows in set (0.00 sec)








mysql> DELETE FROM employeeup WHERE department = 'IT' AND experience > 3;

-- Query OK, 1 row affected (0.06 sec)



mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- | employee_id | employee_name | department | city   | salary    | experience | age  | joining_date | status   |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- |           1 | Amit          | IT         | Mumbai | 111041.70 |          3 |   25 | 2023-06-10   | Active   |
-- |           4 | Neha          | Finance    | Goa    | 122160.83 |          5 |   30 | 2020-01-10   | Inactive |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+----------+
-- 2 rows in set (0.00 sec)








mysql> DELETE FROM employeeup WHERE department NOT IN ('IT', 'HR');

-- Query OK, 1 row affected (0.10 sec)



mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- | employee_id | employee_name | department | city   | salary    | experience | age  | joining_date | status |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- |           1 | Amit          | IT         | Mumbai | 111041.70 |          3 |   25 | 2023-06-10   | Active |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- 1 row in set (0.00 sec)








mysql> DELETE FROM employeeup WHERE joining_date < '2020-02-01';

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM employeeup;

-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- | employee_id | employee_name | department | city   | salary    | experience | age  | joining_date | status |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- |           1 | Amit          | IT         | Mumbai | 111041.70 |          3 |   25 | 2023-06-10   | Active |
-- +-------------+---------------+------------+--------+-----------+------------+------+--------------+--------+
-- 1 row in set (0.00 sec)








mysql> DELETE FROM employeeup ORDER BY salary LIMIT 1;

-- Query OK, 1 row affected (0.07 sec)



mysql> SELECT * FROM employeeup;

-- Empty set (0.00 sec)








mysql> DELETE FROM employeeup ORDER BY salary DESC  LIMIT 1;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM employeeup;

-- Empty set (0.00 sec)








mysql> DELETE FROM employeeup WHERE department = 'IT' ORDER BY salary LIMIT 1;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM employeeup;

-- Empty set (0.00 sec)








mysql> DELETE FROM employeeup WHERE department IN ('IT', 'HR') AND salary < 60000;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM employeeup;

-- Empty set (0.00 sec)








mysql> CREATE TABLE accounts( accid INT PRIMARY KEY, accname VARCHAR(20), balance DECIMAL(10,2));

-- Query OK, 0 rows affected (0.38 sec)



mysql> DESC accounts;

-- +---------+---------------+------+-----+---------+-------+
-- | Field   | Type          | Null | Key | Default | Extra |
-- +---------+---------------+------+-----+---------+-------+
-- | accid   | int           | NO   | PRI | NULL    |       |
-- | accname | varchar(20)   | YES  |     | NULL    |       |
-- | balance | decimal(10,2) | YES  |     | NULL    |       |
-- +---------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)








mysql> INSERT INTO accounts VALUES(101, 'rahul', 10000), (102, 'amit', 5000);

-- Query OK, 2 rows affected (0.08 sec)
-- Records: 2  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  5000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)








mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> UPDATE accounts SET balance = balance - 2000 WHERE accid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 5000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE accounts SET balance = balance + 2000 WHERE accid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> COMMIT;

-- Query OK, 0 rows affected (0.06 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACk;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.01 sec)








mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.01 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> UPDATE accounts SET balance = balance - 3000 WHERE accid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 4000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE accounts SET balance = balance + 3000 WHERE accid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 11000.00 |
-- |   102 | amit    |  4000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.04 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)








mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE accounts SET balance = balance + 2000 WHERE accid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  7000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.03 sec)



mysql> SELECT * FROM accounts;\

-- +-------+---------+---------+
-- | accid | accname | balance |
-- +-------+---------+---------+
-- |   101 | rahul   | 8000.00 |
-- |   102 | amit    | 7000.00 |
-- +-------+---------+---------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE accounts SET balance = balance + 2000 WHERE accid = 101;

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  7000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  7000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)








mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  7000.00 |
-- +-------+---------+----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO accounts VALUES(103, 'thapaji', 15000);

-- Query OK, 1 row affected (0.08 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+
-- | accid | accname | balance  |
-- +-------+---------+----------+
-- |   101 | rahul   | 10000.00 |
-- |   102 | amit    |  7000.00 |
-- |   103 | thapaji | 15000.00 |
-- +-------+---------+----------+
-- 3 rows in set (0.00 sec)



mysql> ALTER TABLE accounts ADD COLUMN address VARCHAR(50);

-- Query OK, 0 rows affected (0.23 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM accounts;

-- +-------+---------+----------+---------+
-- | accid | accname | balance  | address |
-- +-------+---------+----------+---------+
-- |   101 | rahul   | 10000.00 | NULL    |
-- |   102 | amit    |  7000.00 | NULL    |
-- |   103 | thapaji | 15000.00 | NULL    |
-- +-------+---------+----------+---------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO accounts VALUES(104, 'dipu', 150000, 'Chennai');

-- Query OK, 1 row affected (0.07 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+-----------+---------+
-- | accid | accname | balance   | address |
-- +-------+---------+-----------+---------+
-- |   101 | rahul   |  10000.00 | NULL    |
-- |   102 | amit    |   7000.00 | NULL    |
-- |   103 | thapaji |  15000.00 | NULL    |
-- |   104 | dipu    | 150000.00 | Chennai |
-- +-------+---------+-----------+---------+
-- 4 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+---------+-----------+---------+
-- | accid | accname | balance   | address |
-- +-------+---------+-----------+---------+
-- |   101 | rahul   |  10000.00 | NULL    |
-- |   102 | amit    |   7000.00 | NULL    |
-- |   103 | thapaji |  15000.00 | NULL    |
-- |   104 | dipu    | 150000.00 | Chennai |
-- +-------+---------+-----------+---------+
-- 4 rows in set (0.00 sec)








mysql> SELECT * FROM accounts;

-- +-------+---------+-----------+---------+
-- | accid | accname | balance   | address |
-- +-------+---------+-----------+---------+
-- |   101 | rahul   |  10000.00 | NULL    |
-- |   102 | amit    |   7000.00 | NULL    |
-- |   103 | thapaji |  15000.00 | NULL    |
-- |   104 | dipu    | 150000.00 | Chennai |
-- +-------+---------+-----------+---------+
-- 4 rows in set (0.00 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> INSERT INTO accounts VALUES(105, 'rashmika', 50000, 'hyd');

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+-----------+---------+
-- | accid | accname  | balance   | address |
-- +-------+----------+-----------+---------+
-- |   101 | rahul    |  10000.00 | NULL    |
-- |   102 | amit     |   7000.00 | NULL    |
-- |   103 | thapaji  |  15000.00 | NULL    |
-- |   104 | dipu     | 150000.00 | Chennai |
-- |   105 | rashmika |  50000.00 | hyd     |
-- +-------+----------+-----------+---------+
-- 5 rows in set (0.00 sec)



mysql> ALTER TABLE accounts ADD COLUMN (age INT);

-- Query OK, 0 rows affected (0.32 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> INSERT INTO accounts VALUES(106, 'katappa', 1150000, 'hyd', 30);

-- Query OK, 1 row affected (0.07 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- +-------+----------+------------+---------+------+
-- 6 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- +-------+----------+------------+---------+------+
-- 6 rows in set (0.00 sec)








mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT @@autocommit;

-- +--------------+
-- | @@autocommit |
-- +--------------+
-- |            1 |
-- +--------------+
-- 1 row in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> INSERT INTO accounts VALUES(107, 'vaibhav', 750000, 'IND', 25);

-- Query OK, 1 row affected (0.00 sec)



mysql> CREATE TABLE timepass (id INT, kam VARCHAR(20));

-- Query OK, 0 rows affected (0.42 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- |   107 | vaibhav  |  750000.00 | IND     |   25 |
-- +-------+----------+------------+---------+------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM timepass;

-- Empty set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- |   107 | vaibhav  |  750000.00 | IND     |   25 |
-- +-------+----------+------------+---------+------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM timepass;

-- Empty set (0.00 sec)








mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT @@autocommit;

-- +--------------+
-- | @@autocommit |
-- +--------------+
-- |            1 |
-- +--------------+
-- 1 row in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> INSERT INTO accounts VALUES(107, 'vaibhav', 750000, 'IND', 25);

-- Query OK, 1 row affected (0.00 sec)



mysql> CREATE TABLE timepass (id INT, kam VARCHAR(20));

-- Query OK, 0 rows affected (0.42 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- |   107 | vaibhav  |  750000.00 | IND     |   25 |
-- +-------+----------+------------+---------+------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM timepass;

-- Empty set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM accounts;

-- +-------+----------+------------+---------+------+
-- | accid | accname  | balance    | address | age  |
-- +-------+----------+------------+---------+------+
-- |   101 | rahul    |   10000.00 | NULL    | NULL |
-- |   102 | amit     |    7000.00 | NULL    | NULL |
-- |   103 | thapaji  |   15000.00 | NULL    | NULL |
-- |   104 | dipu     |  150000.00 | Chennai | NULL |
-- |   105 | rashmika |   50000.00 | hyd     | NULL |
-- |   106 | katappa  | 1150000.00 | hyd     |   30 |
-- |   107 | vaibhav  |  750000.00 | IND     |   25 |
-- +-------+----------+------------+---------+------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM timepass;

-- Empty set (0.00 sec)