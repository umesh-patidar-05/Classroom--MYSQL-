-- 20/august/2026







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
-- 5 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name LIKE 'A%';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- +----+------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)












mysql> SELECT * FROM employeebatch WHERE name LIKE '%A';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE name LIKE '%i%';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  2 | amit  |   30 | bhopal | HR         | 40000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE name LIKE '____';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)







mysql> SELECT * FROM employeebatch WHERE name LIKE '_';

-- Empty set (0.00 sec)






mysql> SELECT * FROM employeebatch WHERE name LIKE '__';

-- Empty set (0.00 sec)








mysql> SELECT * FROM employeebatch WHERE name LIKE '___';

-- Empty set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name LIKE '____';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE name LIKE 'a_it';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- +----+------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE name LIKE 'a%t';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- +----+------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name LIKE 'r%' AND city='indore';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE name LIKE 'r%' OR name LIKE 'a%';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | bhopal | HR         | 40000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name NOT LIKE 'a%';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 4 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE age LIKE '2%';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name = 'priya';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM employeebatch WHERE name LIKE 'priya';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE name LIKE 'priya%';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)









mysql> CREATE TABLE product10(pid INT, name VARCHAR(20), discount VARCHAR(20));

-- Query OK, 0 rows affected (0.36 sec)










mysql> INSERT INTO product10 VALUES(1, 'laptop', '30%'), (2, 'mobile', '30%'), (3, 'watch', '50%');

-- Query OK, 3 rows affected (0.07 sec)
-- Records: 3  Duplicates: 0  Warnings: 0








mysql> SELECT * FROM product10;

-- +------+--------+----------+
-- | pid  | name   | discount |
-- +------+--------+----------+
-- |    1 | laptop | 30%      |
-- |    2 | mobile | 30%      |
-- |    3 | watch  | 50%      |
-- +------+--------+----------+
-- 3 rows in set (0.00 sec)









mysql> SELECT * FROM product10 WHERE discount LIKE '30%';

-- +------+--------+----------+
-- | pid  | name   | discount |
-- +------+--------+----------+
-- |    1 | laptop | 30%      |
-- |    2 | mobile | 30%      |
-- +------+--------+----------+
-- 2 rows in set (0.00 sec)








mysql> ALTER TABLE product10 ADD COLUMN description VARCHAR(30);

-- Query OK, 0 rows affected (0.32 sec)
-- Records: 0  Duplicates: 0  Warnings: 0









mysql> INSERT INTO product10 VALUES( 4, 'mobile1', '20%', 'we are giving 20% discount'), (5, 'laptop2', '40%', 'we are giving 40% discount');

-- Query OK, 2 rows affected (0.06 sec)
-- Records: 2  Duplicates: 0  Warnings: 0









mysql> SELECT * FROM product10;

-- +------+---------+----------+----------------------------+
-- | pid  | name    | discount | description                |
-- +------+---------+----------+----------------------------+
-- |    1 | laptop  | 30%      | NULL                       |
-- |    2 | mobile  | 30%      | NULL                       |
-- |    3 | watch   | 50%      | NULL                       |
-- |    4 | mobile1 | 20%      | we are giving 20% discount |
-- |    5 | laptop2 | 40%      | we are giving 40% discount |
-- +------+---------+----------+----------------------------+
-- 5 rows in set (0.01 sec)










mysql> SELECT * FROM product10 WHERE description LIKE '%20%%';
+------+---------+----------+----------------------------+
| pid  | name    | discount | description                |
+------+---------+----------+----------------------------+
|    4 | mobile1 | 20%      | we are giving 20% discount |
+------+---------+----------+----------------------------+
1 row in set (0.00 sec)