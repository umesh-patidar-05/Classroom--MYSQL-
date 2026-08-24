--  24/August/2026












mysql> SELECT name,salary, salary*12 AS annual_salary FROM employeebatch;

-- +-------+----------+---------------+
-- | name  | salary   | annual_salary |
-- +-------+----------+---------------+
-- | rahul | 45000.00 |     540000.00 |
-- | amit  | 40000.00 |     480000.00 |
-- | priya | 55000.00 |     660000.00 |
-- | neha  | 60000.00 |     720000.00 |
-- | ravi  | 35000.00 |     420000.00 |
-- +-------+----------+---------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT name,salary, salary*12 AS annual_salary FROM employeebatch ORDER BY salary*12 DESC;

-- +-------+----------+---------------+
-- | name  | salary   | annual_salary |
-- +-------+----------+---------------+
-- | neha  | 60000.00 |     720000.00 |
-- | priya | 55000.00 |     660000.00 |
-- | rahul | 45000.00 |     540000.00 |
-- | amit  | 40000.00 |     480000.00 |
-- | ravi  | 35000.00 |     420000.00 |
-- +-------+----------+---------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT name,salary, salary*12 AS annual_salary FROM employeebatch ORDER BY annual_salary DESC;

-- +-------+----------+---------------+
-- | name  | salary   | annual_salary |
-- +-------+----------+---------------+
-- | neha  | 60000.00 |     720000.00 |
-- | priya | 55000.00 |     660000.00 |
-- | rahul | 45000.00 |     540000.00 |
-- | amit  | 40000.00 |     480000.00 |
-- | ravi  | 35000.00 |     420000.00 |
-- +-------+----------+---------------+
-- 5 rows in set (0.00 sec)











mysql> SELECT DISTINCT city FROM employeebatch ORDER BY city;

-- +--------+
-- | city   |
-- +--------+
-- | NULL   |
-- | bhopal |
-- | indore |
-- | pune   |
-- +--------+
-- 4 rows in set (0.00 sec)











mysql> SELECT name, city, age, salary FROM employeebatch WHERE city IN('indore', 'bhopal') ORDER BY salary DESC, age ASC;

-- +-------+--------+------+----------+
-- | name  | city   | age  | salary   |
-- +-------+--------+------+----------+
-- | priya | indore |   28 | 55000.00 |
-- | rahul | indore |   25 | 45000.00 |
-- | ravi  | bhopal |   22 | 35000.00 |
-- +-------+--------+------+----------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch LIMIT 2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.01 sec)











mysql> SELECT * FROM employeebatch ORDER BY salary DESC LIMIT 3;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER BY salary ASC LIMIT 1;

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT name, department, salary FROM employeebatch WHERE department='IT' ORDER BY salary DESC LIMIT 1;

-- +-------+------------+----------+
-- | name  | department | salary   |
-- +-------+------------+----------+
-- | priya | IT         | 55000.00 |
-- +-------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT name, department, salary FROM employeebatch WHERE department='IT' ORDER BY salary DESC LIMIT 0;

-- Empty set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER BY salary ASC LIMIT 100;

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











mysql> SELECT * FROM employeebatch WHERE salary > 50000 ORDER BY salary DESC LIMIT 2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT DISTINCT city FROM employeebatch limit 2;

-- +--------+
-- | city   |
-- +--------+
-- | indore |
-- | NULL   |
-- +--------+
-- 2 rows in set (0.01 sec)











mysql> SELECT name,salary, salary*12 AS annual_salary  FROM employeebatch ORDER BY annual_salary DESC limit 2;

-- +-------+----------+---------------+
-- | name  | salary   | annual_salary |
-- +-------+----------+---------------+
-- | neha  | 60000.00 |     720000.00 |
-- | priya | 55000.00 |     660000.00 |
-- +-------+----------+---------------+
-- 2 rows in set (0.01 sec)











mysql> SELECT * FROM employeebatch limit 2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch limit 2 OFFSET 2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER BY salary DESC LIMIT 2 OFFSET 2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE department='it' ORDER BY salary DESC LIMIT 3 OFFSET 1;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  5 | ravi  |   22 | bhopal | IT         | 35000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











-- select------choose column-----from----- choose table------where------filter rows----- order by ----- sort rows----- limit----how many----- offset----- how many rows to skip











mysql> SELECT * FROM employeebatch ORDER by salary desc limit 2,2;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | NULL   | HR         | 40000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch ORDER by salary desc limit 2,1;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM pystudent;

-- +------+---------+------+------------+
-- | id   | name    | age  | city       |
-- +------+---------+------+------------+
-- |  101 | umesh   |   30 | indore     |
-- |  101 | kushal  | NULL | neemuch    |
-- |  103 | kushal1 | NULL | neeeeemuch |
-- |  104 | anil    |   20 | indore     |
-- |  105 | thapaji |   21 | indore     |
-- |  108 | kuldeep |   22 | dewas      |
-- +------+---------+------+------------+
-- 6 rows in set (0.00 sec)











mysql> UPDATE pystudent SET city='goa';

-- Query OK, 6 rows affected (0.06 sec)
-- Rows matched: 6  Changed: 6  Warnings: 0











mysql> SELECT * FROM pystudent;

-- +------+---------+------+------+
-- | id   | name    | age  | city |
-- +------+---------+------+------+
-- |  101 | umesh   |   30 | goa  |
-- |  101 | kushal  | NULL | goa  |
-- |  103 | kushal1 | NULL | goa  |
-- |  104 | anil    |   20 | goa  |
-- |  105 | thapaji |   21 | goa  |
-- |  108 | kuldeep |   22 | goa  |
-- +------+---------+------+------+
-- 6 rows in set (0.00 sec)











mysql> CREATE TABLE employeeup( employee_id INT, employee_name VARCHAR(50), department VARCHAR(30), city VARCHAR(30), salary DECIMAL(10,2), experience INT, age INT, joining_date date, status VARCHAR(20));

-- Query OK, 0 rows affected (0.41 sec)











mysql> DESC employeeup;

-- +---------------+---------------+------+-----+---------+-------+
-- | Field         | Type          | Null | Key | Default | Extra |
-- +---------------+---------------+------+-----+---------+-------+
-- | employee_id   | int           | YES  |     | NULL    |       |
-- | employee_name | varchar(50)   | YES  |     | NULL    |       |
-- | department    | varchar(30)   | YES  |     | NULL    |       |
-- | city          | varchar(30)   | YES  |     | NULL    |       |
-- | salary        | decimal(10,2) | YES  |     | NULL    |       |
-- | experience    | int           | YES  |     | NULL    |       |
-- | age           | int           | YES  |     | NULL    |       |
-- | joining_date  | date          | YES  |     | NULL    |       |
-- | status        | varchar(20)   | YES  |     | NULL    |       |
-- +---------------+---------------+------+-----+---------+-------+
-- 9 rows in set (0.01 sec)











mysql> INSERT INTO employeeup VALUES
    -> (1, 'Amit', 'IT', 'Mumbai', 89198.00, 2, 25, '2023-06-10', 'Active'),
    -> (2, 'Rahul', 'HR', 'BHOPAL', 65318, 4, 29, '2021-04-15', 'Inactive'),
    -> (3, 'Priya', 'IT', 'INDORE', 93170, 6, 32, '2019-08-20', 'Active'),
    -> (4, 'Neha', 'Fiance', 'Delhi', 72760, 5,30, '2020-01-10', 'Inactive'),
    -> (5, 'Vikas', 'IT', 'Pune', 99825, 8, 35, '2018-03-12', 'Active'),
    -> (6, 'Sneha','HR', 'Indore', 71150.40, 3, 27, '2022-07-18', 'Inactive');

-- Query OK, 6 rows affected (0.11 sec)
-- Records: 6  Duplicates: 0  Warnings: 0











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
-- 6 rows in set (0.00 sec)