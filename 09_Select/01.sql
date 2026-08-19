-- 19/august/2026








mysql> CREATE TABLE employeebatch( id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(30), age INT, city VARCHAR(40), department VARCHAR(30), salary DECIMAL(10,2));

-- Query OK, 0 rows affected (0.38 sec)



mysql> DESC employeebatch;

-- +------------+---------------+------+-----+---------+----------------+
-- | Field      | Type          | Null | Key | Default | Extra          |
-- +------------+---------------+------+-----+---------+----------------+
-- | id         | int           | NO   | PRI | NULL    | auto_increment |
-- | name       | varchar(30)   | YES  |     | NULL    |                |
-- | age        | int           | YES  |     | NULL    |                |
-- | city       | varchar(40)   | YES  |     | NULL    |                |
-- | department | varchar(30)   | YES  |     | NULL    |                |
-- | salary     | decimal(10,2) | YES  |     | NULL    |                |
-- +------------+---------------+------+-----+---------+----------------+
-- 6 rows in set (0.00 sec)



mysql> INSERT INTO employeebatch(name, age, city, department, salary) VALUES('rahul', 25, 'indore', 'IT', 45000),
    -> ('amit', 30, 'bhopal', 'HR', 40000),
    -> ('priya', 28, 'indore', 'IT', 55000),
    -> ('neha', 35, 'pune', 'finance', 60000),
    -> ('ravi', 22, 'bhopal', 'IT', 35000);

-- Query OK, 5 rows affected (0.13 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



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















mysql> SELECT name,city FROM employeebatch;

-- +-------+--------+
-- | name  | city   |
-- +-------+--------+
-- | rahul | indore |
-- | amit  | bhopal |
-- | priya | indore |
-- | neha  | pune   |
-- | ravi  | bhopal |
-- +-------+--------+
-- 5 rows in set (0.01 sec)










mysql> SELECT salary,city,name FROM employeebatch;

-- +----------+--------+-------+
-- | salary   | city   | name  |
-- +----------+--------+-------+
-- | 45000.00 | indore | rahul |
-- | 40000.00 | bhopal | amit  |
-- | 55000.00 | indore | priya |
-- | 60000.00 | pune   | neha  |
-- | 35000.00 | bhopal | ravi  |
-- +----------+--------+-------+
-- 5 rows in set (0.00 sec)













mysql> SELECT name,salary, salary*12 FROM employeebatch;

-- +-------+----------+-----------+
-- | name  | salary   | salary*12 |
-- +-------+----------+-----------+
-- | rahul | 45000.00 | 540000.00 |
-- | amit  | 40000.00 | 480000.00 |
-- | priya | 55000.00 | 660000.00 |
-- | neha  | 60000.00 | 720000.00 |
-- | ravi  | 35000.00 | 420000.00 |
-- +-------+----------+-----------+
-- 5 rows in set (0.00 sec)

















mysql> SELECT name,salary, salary*12 as annual_salary FROM employeebatch;

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



mysql> SELECT name AS employee_name , salary AS monthly_salary FROM employeebatch;

-- +---------------+----------------+
-- | employee_name | monthly_salary |
-- +---------------+----------------+
-- | rahul         |       45000.00 |
-- | amit          |       40000.00 |
-- | priya         |       55000.00 |
-- | neha          |       60000.00 |
-- | ravi          |       35000.00 |
-- +---------------+----------------+
-- 5 rows in set (0.00 sec)












mysql> SELECT city FROM employeebatch;

-- +--------+
-- | city   |
-- +--------+
-- | indore |
-- | bhopal |
-- | indore |
-- | pune   |
-- | bhopal |
-- +--------+
-- 5 rows in set (0.00 sec)




mysql> SELECT DISTINCT city FROM employeebatch;

-- +--------+
-- | city   |
-- +--------+
-- | indore |
-- | bhopal |
-- | pune   |
-- +--------+
-- 3 rows in set (0.00 sec)




mysql> SELECT city, department FROM employeebatch;

-- +--------+------------+
-- | city   | department |
-- +--------+------------+
-- | indore | IT         |
-- | bhopal | HR         |
-- | indore | IT         |
-- | pune   | finance    |
-- | bhopal | IT         |
-- +--------+------------+
-- 5 rows in set (0.00 sec)



mysql> SELECT DISTINCT city, department FROM employeebatch;

-- +--------+------------+
-- | city   | department |
-- +--------+------------+
-- | indore | IT         |
-- | bhopal | HR         |
-- | pune   | finance    |
-- | bhopal | IT         |
-- +--------+------------+
-- 4 rows in set (0.00 sec)

















mysql> SELECT * FROM employeebatch WHERE salary>50000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE city='indore';

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)
















mysql> SELECT * FROM employeebatch WHERE city='indore' AND salary>50000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)



mysql> SELECT * FROM employeebatch WHERE city='indore' AND salary>50000 AND department='HR';

-- Empty set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE city='indore' or salary>50000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)













mysql> SELECT * FROM employeebatch WHERE NOT city='indore';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM employeebatch WHERE city<>'indore';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)





mysql> SELECT * FROM employeebatch WHERE city!='indore';

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)



















mysql> SELECT * FROM employeebatch WHERE salary BETWEEN 40000 AND 55000;

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | bhopal | HR         | 40000.00 |
-- |  3 | priya |   28 | indore | IT         | 55000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT * FROM employeebatch WHERE salary NOT BETWEEN 40000 AND 55000;

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  4 | neha |   35 | pune   | finance    | 60000.00 |
-- |  5 | ravi |   22 | bhopal | IT         | 35000.00 |
-- +----+------+------+--------+------------+----------+
-- 2 rows in set (0.00 sec)














mysql> SELECT * FROM employeebatch WHERE city='indore' OR city='bhopal' OR city='pune';

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



mysql> SELECT * FROM employeebatch WHERE city IN('indore', 'bhopal', 'pune');

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













mysql> SELECT * FROM employeebatch WHERE age IN(25,30,35);

-- +----+-------+------+--------+------------+----------+
-- | id | name  | age  | city   | department | salary   |
-- +----+-------+------+--------+------------+----------+
-- |  1 | rahul |   25 | indore | IT         | 45000.00 |
-- |  2 | amit  |   30 | bhopal | HR         | 40000.00 |
-- |  4 | neha  |   35 | pune   | finance    | 60000.00 |
-- +----+-------+------+--------+------------+----------+
-- 3 rows in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE city NOT IN('indore', 'bhopal');

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  4 | neha |   35 | pune | finance    | 60000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)











mysql> SELECT * FROM employeebatch WHERE city<>'indore' AND city<>'bhopal';

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  4 | neha |   35 | pune | finance    | 60000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.00 sec)







mysql> SELECT * FROM employeebatch WHERE city IN('indore', 'bhopal') AND age>28;

-- +----+------+------+--------+------------+----------+
-- | id | name | age  | city   | department | salary   |
-- +----+------+------+--------+------------+----------+
-- |  2 | amit |   30 | bhopal | HR         | 40000.00 |
-- +----+------+------+--------+------------+----------+
-- 1 row in set (0.00 sec)









mysql> SELECT * FROM employeebatch WHERE city NOT IN('indore', 'bhopal') AND age>28;

-- +----+------+------+------+------------+----------+
-- | id | name | age  | city | department | salary   |
-- +----+------+------+------+------------+----------+
-- |  4 | neha |   35 | pune | finance    | 60000.00 |
-- +----+------+------+------+------------+----------+
-- 1 row in set (0.01 sec)