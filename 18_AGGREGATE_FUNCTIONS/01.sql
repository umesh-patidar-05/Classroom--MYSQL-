-- 03/sept/ 2026




mysql> SELECT * FROM employee1;

-- +------+--------+--------------+
-- | id   | deptid | employeecode |
-- +------+--------+--------------+
-- |  101 |    991 | 4444         |
-- |  101 |    991 | 5555         |
-- |  101 |    992 | 4444         |
-- |  102 |   NULL | NULL         |
-- | NULL |   NULL | NULL         |
-- +------+--------+--------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT COUNT(*) FROM employee1;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        5 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO employee1 VALUES();

-- Query OK, 1 row affected (0.05 sec)





mysql> SELECT * FROM employee1;

-- +------+--------+--------------+
-- | id   | deptid | employeecode |
-- +------+--------+--------------+
-- |  101 |    991 | 4444         |
-- |  101 |    991 | 5555         |
-- |  101 |    992 | 4444         |
-- |  102 |   NULL | NULL         |
-- | NULL |   NULL | NULL         |
-- | NULL |   NULL | NULL         |
-- +------+--------+--------------+
-- 6 rows in set (0.00 sec)




mysql> SELECT COUNT(*) FROM employee1;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> SELECT COUNT(*) FROM students;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        5 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO students VALUES();

-- Query OK, 1 row affected (0.06 sec)





mysql> SELECT * FROM students;

-- +------+--------+------+--------+-----------+------------+----------------------+
-- | id   | name   | age  | gender | address   | phone      | email                |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234 | umesh@gmail.com      |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466 | kpatel@gmailcom      |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111 | donchotu@gmail.com   |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555 | delhisehai@gmail.com |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989 | iamasheela@gmail.com |
-- | NULL | NULL   | NULL | NULL   | NULL      | NULL       | NULL                 |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- 6 rows in set (0.00 sec)





mysql> SELECT COUNT(*) FROM students;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        6 |
-- +----------+
-- 1 row in set (0.00 sec)





mysql> SELECT COUNT(age) FROM students;

-- +------------+
-- | COUNT(age) |
-- +------------+
-- |          5 |
-- +------------+
-- 1 row in set (0.00 sec)





mysql> SELECT * FROM pystudent;

-- +------+---------+------+--------+
-- | id   | name    | age  | city   |
-- +------+---------+------+--------+
-- |  101 | umesh   |   30 | Indore |
-- |  101 | kushal  | NULL | Indore |
-- |  103 | kushal1 | NULL | goa    |
-- |  104 | anil    |   20 | BHOPAL |
-- |  105 | thapaji |   21 | goa    |
-- |  108 | kuldeep |   22 | BHOPAL |
-- +------+---------+------+--------+
-- 6 rows in set (0.00 sec)





mysql> SELECT COUNT(city) FROM pystudent;

-- +-------------+
-- | COUNT(city) |
-- +-------------+
-- |           6 |
-- +-------------+
-- 1 row in set (0.00 sec)





mysql> SELECT COUNT( DISTINCT city) FROM pystudent;

-- +-----------------------+
-- | COUNT( DISTINCT city) |
-- +-----------------------+
-- |                     3 |
-- +-----------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT COUNT(age) FROM pystudent;

-- +------------+
-- | COUNT(age) |
-- +------------+
-- |          4 |
-- +------------+
-- 1 row in set (0.00 sec)




mysql> SELECT * FROM pystudent;

-- +------+---------+------+--------+
-- | id   | name    | age  | city   |
-- +------+---------+------+--------+
-- |  101 | umesh   |   30 | Indore |
-- |  101 | kushal  | NULL | Indore |
-- |  103 | kushal1 | NULL | goa    |
-- |  104 | anil    |   20 | BHOPAL |
-- |  105 | thapaji |   21 | goa    |
-- |  108 | kuldeep |   22 | BHOPAL |
-- | NULL | NULL    |  109 | NULL   |
-- | NULL | NULL    | NULL | NULL   |
-- +------+---------+------+--------+
-- 8 rows in set (0.00 sec)





mysql> SELECT COUNT(city) FROM pystudent;

-- +-------------+
-- | COUNT(city) |
-- +-------------+
-- |           6 |
-- +-------------+
-- 1 row in set (0.00 sec)





mysql> SELECT COUNT( DISTINCT city) FROM pystudent;

-- +-----------------------+
-- | COUNT( DISTINCT city) |
-- +-----------------------+
-- |                     3 |
-- +-----------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT COUNT(age) FROM pystudent;

-- +------------+
-- | COUNT(age) |
-- +------------+
-- |          5 |
-- +------------+
-- 1 row in set (0.01 sec)





mysql> SELECT COUNT( DISTINCT age) FROM pystudent;

-- +----------------------+
-- | COUNT( DISTINCT age) |
-- +----------------------+
-- |                    5 |
-- +----------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT COUNT(*) FROM pystudent;

-- +----------+
-- | COUNT(*) |
-- +----------+
-- |        8 |
-- +----------+
-- 1 row in set (0.00 sec)




mysql> SELECT * FROM  employee;

-- +--------+--------------+--------------------+------------+------------+-----------------+-----+----------+------------+--------------+----------+----------+
-- | emp_id | emp_name     | email              | phone      | department | designation     | age | salary   | experience | joining_year | status   | bonus    |
-- +--------+--------------+--------------------+------------+------------+-----------------+-----+----------+------------+--------------+----------+----------+
-- |      1 | Aarav Sharma | aarav@example.com  | 9876543201 | IT         | Developer       |  25 | 40000.00 |          4 |         2022 | Active   |  5000.00 |
-- |      2 | Bhavna Roy   | bhavna@example.com | 9876543202 | IT         | Team Lead       |  38 | 60000.00 |         12 |         2014 | Active   | 10000.00 |
-- |      3 | Chetan Verma | chetan@example.com | 9876543203 | Finance    | Accountant      |  30 | 50000.00 |          5 |         2021 | Inactive |     0.00 |
-- |      4 | Divya Nair   | divya@example.com  | 9876543204 | HR         | HR Manager      |  40 | 50000.00 |         15 |         2011 | On Leave | 10000.00 |
-- |      5 | Eshan Kapoor | eshan@example.com  | 9876543205 | Sales      | Sales Executive |  28 | 45000.00 |          6 |         2020 | Active   |  7000.00 |
-- +--------+--------------+--------------------+------------+------------+-----------------+-----+----------+------------+--------------+----------+----------+
-- 5 rows in set (0.00 sec)





mysql> SELECT COUNT(DISTINCT department) FROM employee;

-- +----------------------------+
-- | COUNT(DISTINCT department) |
-- +----------------------------+
-- |                          4 |
-- +----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUM(salary) FROM employee;

-- +-------------+
-- | SUM(salary) |
-- +-------------+
-- |   245000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT SUM(salary) FROM employee WHERE department = 'IT';

-- +-------------+
-- | SUM(salary) |
-- +-------------+
-- |   100000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT SUM(salary) FROM employee WHERE salary > 50000;

-- +-------------+
-- | SUM(salary) |
-- +-------------+
-- |    60000.00 |
-- +-------------+
-- 1 row in set (0.01 sec)




mysql> SELECT AVG(salary) FROM employee;

-- +--------------+
-- | AVG(salary)  |
-- +--------------+
-- | 49000.000000 |
-- +--------------+
-- 1 row in set (0.00 sec)




mysql> CREATE TABLE employee_aggregate (
    ->     employee_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     employee_name VARCHAR(50) NOT NULL,
    ->     department VARCHAR(30) NOT NULL,
    ->     city VARCHAR(30) NOT NULL,
    ->     experience INT NOT NULL,
    ->     salary DECIMAL(10,2) NOT NULL,
    ->     employment_type VARCHAR(20) NOT NULL
    -> );

-- Query OK, 0 rows affected (0.59 sec)





mysql> INSERT INTO employee_aggregate
    -> (employee_name, department, city, experience, salary, employment_type)
    -> VALUES
    -> ('Aarav', 'IT', 'Indore', 2, 45000, 'FULL_TIME'),
    -> ('Rohan', 'IT', 'Mumbai', 5, 75000, 'FULL_TIME'),
    -> ('Rahul', 'IT', 'Pune', 7, 95000, 'FULL_TIME'),
    -> ('Priya', 'HR', 'Indore', 3, 55000, 'FULL_TIME'),
    -> ('Neha', 'HR', 'Mumbai', 6, 72000, 'FULL_TIME'),
    -> ('Anjali', 'Finance', 'Pune', 4, 65000, 'FULL_TIME'),
    -> ('Vikas', 'Finance', 'Indore', 8, 105000, 'FULL_TIME'),
    -> ('Karan', 'Finance', 'Mumbai', 2, 48000, 'PART_TIME'),
    -> ('Mohit', 'Sales', 'Pune', 5, 68000, 'FULL_TIME'),
    -> ('Sneha', 'Sales', 'Indore', 3, 52000, 'PART_TIME'),
    -> ('Amit', 'Sales', 'Mumbai', 9, 110000, 'FULL_TIME'),
    -> ('Pooja', 'IT', 'Indore', 4, 62000, 'PART_TIME');

-- Query OK, 12 rows affected (0.07 sec)
-- Records: 12  Duplicates: 0  Warnings: 0





mysql> SELECT * FROM employee_aggregate;

-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- | employee_id | employee_name | department | city   | experience | salary    | employment_type |
-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- |           1 | Aarav         | IT         | Indore |          2 |  45000.00 | FULL_TIME       |
-- |           2 | Rohan         | IT         | Mumbai |          5 |  75000.00 | FULL_TIME       |
-- |           3 | Rahul         | IT         | Pune   |          7 |  95000.00 | FULL_TIME       |
-- |           4 | Priya         | HR         | Indore |          3 |  55000.00 | FULL_TIME       |
-- |           5 | Neha          | HR         | Mumbai |          6 |  72000.00 | FULL_TIME       |
-- |           6 | Anjali        | Finance    | Pune   |          4 |  65000.00 | FULL_TIME       |
-- |           7 | Vikas         | Finance    | Indore |          8 | 105000.00 | FULL_TIME       |
-- |           8 | Karan         | Finance    | Mumbai |          2 |  48000.00 | PART_TIME       |
-- |           9 | Mohit         | Sales      | Pune   |          5 |  68000.00 | FULL_TIME       |
-- |          10 | Sneha         | Sales      | Indore |          3 |  52000.00 | PART_TIME       |
-- |          11 | Amit          | Sales      | Mumbai |          9 | 110000.00 | FULL_TIME       |
-- |          12 | Pooja         | IT         | Indore |          4 |  62000.00 | PART_TIME       |
-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- 12 rows in set (0.00 sec)




mysql> SELECT MIN(experience) FROM employee_aggregate;

-- +-----------------+
-- | MIN(experience) |
-- +-----------------+
-- |               2 |
-- +-----------------+
-- 1 row in set (0.00 sec)




mysql> SELECT employee_name,  MIN(experience) FROM employee_aggregate;

-- ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'batch18.employee_aggregate.employee_name'; this is incompatible with sql_mode=only_full_group_by





mysql> SELECT MAX(experience) FROM employee_aggregate;

-- +-----------------+
-- | MAX(experience) |
-- +-----------------+
-- |               9 |
-- +-----------------+
-- 1 row in set (0.00 sec)





mysql> SELECT MAX(salary) FROM employee_aggregate;

-- +-------------+
-- | MAX(salary) |
-- +-------------+
-- |   110000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT COUNT(*) AS totalemployee, SUM(salary) AS totalsalary, AVG(salary) AS avgsalary, MIN(salary) AS minimum, MAX(salary) AS maximum FROM employee;

-- +---------------+-------------+--------------+----------+----------+
-- | totalemployee | totalsalary | avgsalary    | minimum  | maximum  |
-- +---------------+-------------+--------------+----------+----------+
-- |             5 |   245000.00 | 49000.000000 | 40000.00 | 60000.00 |
-- +---------------+-------------+--------------+----------+----------+
-- 1 row in set (0.00 sec)




mysql> ALTER TABLE employee_aggregate RENAME employee;

-- ERROR 1050 (42S01): Table 'employee' already exists





mysql> DROP TABLE employee;

-- Query OK, 0 rows affected (0.31 sec)





mysql> ALTER TABLE employee_aggregate RENAME employee;

-- Query OK, 0 rows affected (0.46 sec)





mysql> SELECT * FROM employee;

-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- | employee_id | employee_name | department | city   | experience | salary    | employment_type |
-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- |           1 | Aarav         | IT         | Indore |          2 |  45000.00 | FULL_TIME       |
-- |           2 | Rohan         | IT         | Mumbai |          5 |  75000.00 | FULL_TIME       |
-- |           3 | Rahul         | IT         | Pune   |          7 |  95000.00 | FULL_TIME       |
-- |           4 | Priya         | HR         | Indore |          3 |  55000.00 | FULL_TIME       |
-- |           5 | Neha          | HR         | Mumbai |          6 |  72000.00 | FULL_TIME       |
-- |           6 | Anjali        | Finance    | Pune   |          4 |  65000.00 | FULL_TIME       |
-- |           7 | Vikas         | Finance    | Indore |          8 | 105000.00 | FULL_TIME       |
-- |           8 | Karan         | Finance    | Mumbai |          2 |  48000.00 | PART_TIME       |
-- |           9 | Mohit         | Sales      | Pune   |          5 |  68000.00 | FULL_TIME       |
-- |          10 | Sneha         | Sales      | Indore |          3 |  52000.00 | PART_TIME       |
-- |          11 | Amit          | Sales      | Mumbai |          9 | 110000.00 | FULL_TIME       |
-- |          12 | Pooja         | IT         | Indore |          4 |  62000.00 | PART_TIME       |
-- +-------------+---------------+------------+--------+------------+-----------+-----------------+
-- 12 rows in set (0.01 sec)




mysql> SELECT SUM(salary) FROM employee;

-- +-------------+
-- | SUM(salary) |
-- +-------------+
-- |   852000.00 |
-- +-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT department, SUM(salary) FROM employee GROUP BY department;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | IT         |   277000.00 |
-- | HR         |   127000.00 |
-- | Finance    |   218000.00 |
-- | Sales      |   230000.00 |
-- +------------+-------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employee GROUP BY department;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |        4 |
-- | HR         |        2 |
-- | Finance    |        3 |
-- | Sales      |        3 |
-- +------------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, COUNT(department) FROM employee GROUP BY department;

-- +------------+-------------------+
-- | department | COUNT(department) |
-- +------------+-------------------+
-- | IT         |                 4 |
-- | HR         |                 2 |
-- | Finance    |                 3 |
-- | Sales      |                 3 |
-- +------------+-------------------+
-- 4 rows in set (0.01 sec)




mysql> SELECT city, COUNT(name) FROM pystudent GROUP BY city;

-- +--------+-------------+
-- | city   | COUNT(name) |
-- +--------+-------------+
-- | Indore |           2 |
-- | goa    |           2 |
-- | BHOPAL |           2 |
-- | NULL   |           0 |
-- +--------+-------------+
-- 4 rows in set (0.00 sec)





mysql> SELECT city, COUNT(*) FROM pystudent GROUP BY city;

-- +--------+----------+
-- | city   | COUNT(*) |
-- +--------+----------+
-- | Indore |        2 |
-- | goa    |        2 |
-- | BHOPAL |        2 |
-- | NULL   |        2 |
-- +--------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, AVG(salary) FROM employee GROUP BY department;

-- +------------+--------------+
-- | department | AVG(salary)  |
-- +------------+--------------+
-- | IT         | 69250.000000 |
-- | HR         | 63500.000000 |
-- | Finance    | 72666.666667 |
-- | Sales      | 76666.666667 |
-- +------------+--------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT city, AVG(experience) FROM employee GROUP BY city;

-- +--------+-----------------+
-- | city   | AVG(experience) |
-- +--------+-----------------+
-- | Indore |          4.0000 |
-- | Mumbai |          5.5000 |
-- | Pune   |          5.3333 |
-- +--------+-----------------+
-- 3 rows in set (0.00 sec)




mysql> SELECT department, MIN(salary), MAX(salary) FROM employee GROUP BY department;

-- +------------+-------------+-------------+
-- | department | MIN(salary) | MAX(salary) |
-- +------------+-------------+-------------+
-- | IT         |    45000.00 |    95000.00 |
-- | HR         |    55000.00 |    72000.00 |
-- | Finance    |    48000.00 |   105000.00 |
-- | Sales      |    52000.00 |   110000.00 |
-- +------------+-------------+-------------+
-- 4 rows in set (0.00 sec)





DEPARTMENT    JOB_ROLE
   IT          DEVELOPER
   IT          DEVELOPER
   IT          TESTER
   HR          RECRUITER
   HR          MANAGER


SELECT DEPARTMENT, JOB_ROLE, COUNT(*) FROM  EMPLOYEE GROUP BY DEPARTMENT, JOB_ROLE;

IT + DEVELOPER
IT + TESTER
HR + RECUITER
HR + MANAGER




mysql> CREATE TABLE grporder( orderid INT, cname VARCHAR(20), city VARCHAR(20), productcategory VARCHAR(20), amount DECIMAL(10,2));

-- Query OK, 0 rows affected (0.68 sec)





mysql> DESC grporder;

-- +-----------------+---------------+------+-----+---------+-------+
-- | Field           | Type          | Null | Key | Default | Extra |
-- +-----------------+---------------+------+-----+---------+-------+
-- | orderid         | int           | YES  |     | NULL    |       |
-- | cname           | varchar(20)   | YES  |     | NULL    |       |
-- | city            | varchar(20)   | YES  |     | NULL    |       |
-- | productcategory | varchar(20)   | YES  |     | NULL    |       |
-- | amount          | decimal(10,2) | YES  |     | NULL    |       |
-- +-----------------+---------------+------+-----+---------+-------+
-- 5 rows in set (0.00 sec)





mysql> INSERT INTO grporder VALUES
    -> (111, 'deepika', 'Mumbai', 'Electronics', 15000),
    -> (112, 'rashmika', 'Mumbai', 'Cloths', 5000),
    -> (113, 'katappa', 'Indore', 'Cloths', 6000),
    -> (113, 'Vaibhav', 'Indore', 'Electronics', 12000);

-- Query OK, 4 rows affected (0.08 sec)
-- Records: 4  Duplicates: 0  Warnings: 0





mysql> SELECT * FROM grporder;

-- +---------+----------+--------+-----------------+----------+
-- | orderid | cname    | city   | productcategory | amount   |
-- +---------+----------+--------+-----------------+----------+
-- |     111 | deepika  | Mumbai | Electronics     | 15000.00 |
-- |     112 | rashmika | Mumbai | Cloths          |  5000.00 |
-- |     113 | katappa  | Indore | Cloths          |  6000.00 |
-- |     113 | Vaibhav  | Indore | Electronics     | 12000.00 |
-- +---------+----------+--------+-----------------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT city, SUM(amount) FROM grporder GROUP BY city;

-- +--------+-------------+
-- | city   | SUM(amount) |
-- +--------+-------------+
-- | Mumbai |    20000.00 |
-- | Indore |    18000.00 |
-- +--------+-------------+
-- 2 rows in set (0.00 sec)




mysql> SELECT city, productcategory, SUM(amount) FROM grporder GROUP BY city,productcategory;

-- +--------+-----------------+-------------+
-- | city   | productcategory | SUM(amount) |
-- +--------+-----------------+-------------+
-- | Mumbai | Electronics     |    15000.00 |
-- | Mumbai | Cloths          |     5000.00 |
-- | Indore | Cloths          |     6000.00 |
-- | Indore | Electronics     |    12000.00 |
-- +--------+-----------------+-------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, AVG(salary) FROM employee GROUP BY department;

-- +------------+--------------+
-- | department | AVG(salary)  |
-- +------------+--------------+
-- | IT         | 69250.000000 |
-- | HR         | 63500.000000 |
-- | Finance    | 72666.666667 |
-- | Sales      | 76666.666667 |
-- +------------+--------------+
-- 4 rows in set (0.01 sec)





mysql> SELECT department, AVG(salary) FROM employee WHERE salary > 50000 GROUP BY department;

-- +------------+--------------+
-- | department | AVG(salary)  |
-- +------------+--------------+
-- | IT         | 77333.333333 |
-- | HR         | 63500.000000 |
-- | Finance    | 85000.000000 |
-- | Sales      | 76666.666667 |
-- +------------+--------------+
-- 4 rows in set (0.00 sec)





mysql> SELECT department, COUNT(*) FROM employee GROUP BY department;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |        4 |
-- | HR         |        2 |
-- | Finance    |        3 |
-- | Sales      |        3 |
-- +------------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) FROM employee WHERE salary > 50000 GROUP BY department;

-- +------------+----------+
-- | department | COUNT(*) |
-- +------------+----------+
-- | IT         |        3 |
-- | HR         |        2 |
-- | Finance    |        2 |
-- | Sales      |        3 |
-- +------------+----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, MAX(salary) FROM employee WHERE employment_type = 'FULL_TIME'  GROUP BY department;

-- +------------+-------------+
-- | department | MAX(salary) |
-- +------------+-------------+
-- | IT         |    95000.00 |
-- | HR         |    72000.00 |
-- | Finance    |   105000.00 |
-- | Sales      |   110000.00 |
-- +------------+-------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, MIN(salary) FROM employee WHERE employment_type = 'FULL_TIME'  GROUP BY department;

-- +------------+-------------+
-- | department | MIN(salary) |
-- +------------+-------------+
-- | IT         |    45000.00 |
-- | HR         |    55000.00 |
-- | Finance    |    65000.00 |
-- | Sales      |    68000.00 |
-- +------------+-------------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, city, COUNT(*) FROM employee WHERE employment_type = 'FULL_TIME'  GROUP BY department,city ;

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




SELECT department, COUNT(*) FROM employee WHERE joining_date > '2025-01-01'  GROUP BY department;




mysql> SELECT department, SUM(salary) FROM employee GROUP BY DEPARTMENT ORDER BY SUM(salary) DESC;

-- +------------+-------------+
-- | department | SUM(salary) |
-- +------------+-------------+
-- | IT         |   277000.00 |
-- | Sales      |   230000.00 |
-- | Finance    |   218000.00 |
-- | HR         |   127000.00 |
-- +------------+-------------+
-- 4 rows in set (0.00 sec)





mysql> SELECT department, SUM(salary) AS total FROM employee GROUP BY DEPARTMENT ORDER BY SUM(salary) DESC;

-- +------------+-----------+
-- | department | total     |
-- +------------+-----------+
-- | IT         | 277000.00 |
-- | Sales      | 230000.00 |
-- | Finance    | 218000.00 |
-- | HR         | 127000.00 |
-- +------------+-----------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, COUNT(*) AS total FROM employee GROUP BY DEPARTMENT ORDER BY COUNT(*) DESC;

-- +------------+-------+
-- | department | total |
-- +------------+-------+
-- | IT         |     4 |
-- | Finance    |     3 |
-- | Sales      |     3 |
-- | HR         |     2 |
-- +------------+-------+
-- 4 rows in set (0.00 sec)




mysql> SELECT department, SUM(salary) AS total FROM employee GROUP BY DEPARTMENT ORDER BY SUM(salary) DESC LIMIT 2;

-- +------------+-----------+
-- | department | total     |
-- +------------+-----------+
-- | IT         | 277000.00 |
-- | Sales      | 230000.00 |
-- +------------+-----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT department, SUM(salary) AS total FROM employee GROUP BY DEPARTMENT ORDER BY SUM(salary) DESC LIMIT 1 OFFSET 1;

-- +------------+-----------+
-- | department | total     |
-- +------------+-----------+
-- | Sales      | 230000.00 |
-- +------------+-----------+
-- 1 row in set (0.00 sec)
