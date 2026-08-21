-- 21/august/2026









mysql> SELECT * FROM employeebatch;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | bhopal | HR         | 40000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.02 sec)










mysql> UPDATE employeebatch SET city=NULL WHERE id=2;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0










mysql> SELECT * FROM employeebatch;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE city=NULL;

-- Empty set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE city='NULL';

-- Empty set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE city IS NULL;

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  2 | amit |   30 | NULL | HR         | 40000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)










mysql> SELECT name FROM employeebatch WHERE city IS NOT  NULL;

-- +-------+
-- | name  |
-- +-------+
-- | rahul |
-- | priya |
-- | neha  |
-- | ravi  |
-- +-------+
-- 4 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE city IS NULL AND salary > 35000;

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  2 | amit |   30 | NULL | HR         | 40000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)








mysql> SELECT * FROM employeebatch WHERE city='indore' OR city='bhopal' AND salary >50000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE (city='indore' OR city='bhopal') AND salary> 40000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE NOT city ='indore';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE NOT city ='indore' OR city IS NULL;

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | NULL   | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE NOT city<>'indore';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE NOT city='indore' OR  city='bhopal';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 2 rows in set (0.01 sec)











mysql> SELECT * FROM employeebatch WHERE NOT (city='indore' OR  city='bhopal');

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  4 | neha |   35 | pune | finance    | 60000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)












mysql> SELECT * FROM employeebatch WHERE NOT (city='indore' OR  city='bhopal') AND salary>50000;

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  4 | neha |   35 | pune | finance    | 60000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE city='indore' OR city='bhopal' AND salary>40000 AND age>25;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)














mysql> SELECT * FROM employeebatch WHERE (city='indore' OR city='bhopal') AND salary>40000 AND age>25;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE (city='indore' OR city='bhopal') AND salary>20000 AND age>25;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)












mysql> SELECT * FROM employeebatch;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY salary;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY salary ASC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY salary DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)















mysql> SELECT name FROM employeebatch ORDER BY salary DESC;

-- +-------+
-- | name  |
-- +-------+
-- | neha  |
-- | priya |
-- | rahul |
-- | amit  |
-- | ravi  |
-- +-------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER BY name;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY name DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY city;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch ORDER BY city DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)














mysql> SELECT * FROM employeebatch WHERE department='it'ORDER BY salary DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)















mysql> SELECT * FROM employeebatch ORDER BY city,salary DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER BY city DESC ,salary DESC;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 5 rows in set (0.01 sec)