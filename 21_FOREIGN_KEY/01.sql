-- 09/september/2026




mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr       |
-- |      2 | it       |
-- |      3 | finance  |
-- +--------+----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT * FROM employee18;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      2 |
-- |   103 | thapaji  |      3 |
-- |   104 | kanak    |      1 |
-- |   105 | katappa  |   NULL |
-- +-------+----------+--------+
-- 5 rows in set (0.00 sec)




mysql> DELETE FROM department18 WHERE deptid = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`batch18`.`employee18`, CONSTRAINT `employee18_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department18` (`deptid`))




mysql> DELETE FROM employee18 WHERE empid = 102;

-- Query OK, 1 row affected (0.11 sec)




mysql> SELECT * FROM employee18;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | deepika |      1 |
-- |   103 | thapaji |      3 |
-- |   104 | kanak   |      1 |
-- |   105 | katappa |   NULL |
-- +-------+---------+--------+
-- 4 rows in set (0.00 sec)




mysql> DELETE FROM department18 WHERE deptid = 2;

-- Query OK, 1 row affected (0.08 sec)




mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr       |
-- |      3 | finance  |
-- +--------+----------+
-- 2 rows in set (0.00 sec)



mysql> SHOW CREATE TABLE employee18;




-- +------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | employee18 | CREATE TABLE `employee18` (
--   `empid` int NOT NULL,
--   `empname` varchar(20) DEFAULT NULL,
--   `deptid` int DEFAULT NULL,
--   PRIMARY KEY (`empid`),
--   KEY `deptid` (`deptid`),
--   CONSTRAINT `employee18_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department18` (`deptid`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
-- +------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- 1 row in set (0.00 sec)




mysql> CREATE TABLE department183( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.38 sec)




mysql> DESC department183;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee183( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department183(deptid) ON DELETE CASCADE);

-- Query OK, 0 rows affected (0.77 sec)




mysql> DESC employee183;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department183 VALUES(1, 'cs');

-- Query OK, 1 row affected (0.11 sec)




mysql> SELECT * FROM department183;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | cs       |
-- +--------+----------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO employee183 VALUES(101, 'deepika', 1);

-- Query OK, 1 row affected (0.09 sec)




mysql> INSERT INTO employee183 VALUES(102, 'rashmika', 1);

-- Query OK, 1 row affected (0.15 sec)




mysql> SELECT * FROM employee183;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      1 |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> DELETE FROM department183 WHERE deptid = 1;

-- Query OK, 1 row affected (0.07 sec)




mysql> SELECT * FROM department183;

-- Empty set (0.00 sec)




mysql> SELECT * FROM employee183;

-- Empty set (0.00 sec)




mysql> CREATE TABLE department184( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.43 sec)




mysql> DESC department184;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee184( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department184(deptid) ON DELETE RESTRICT);

-- Query OK, 0 rows affected (0.97 sec)




mysql> DESC employee184;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department184 VALUES(1, 'IT');

-- Query OK, 1 row affected (0.14 sec)




mysql> SELECT * FROM department184;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | IT       |
-- +--------+----------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO employee184 VALUES( 101, 'deepika', 1);

-- Query OK, 1 row affected (0.05 sec)




mysql> SELECT * FROM employee184;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | deepika |      1 |
-- +-------+---------+--------+
-- 1 row in set (0.00 sec)




mysql> DELETE FROM department184 WHERE deptid = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`batch18`.`employee184`, CONSTRAINT `employee184_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department184` (`deptid`) ON DELETE RESTRICT)




mysql> CREATE TABLE department185( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.76 sec)




mysql> DESC department185;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee185( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department185(deptid) ON DELETE NO ACTION);

-- Query OK, 0 rows affected (0.60 sec)




mysql> DESC employee185;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)




mysql> INSERT INTO department185 VALUES(1, 'finance');

-- Query OK, 1 row affected (0.14 sec)




mysql> SELECT * FROM department185;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | finance  |
-- +--------+----------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO employee185 VALUES( 101, 'katappa', 1);

-- Query OK, 1 row affected (0.05 sec)




mysql> SELECT * FROM employee185;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | katappa |      1 |
-- +-------+---------+--------+
-- 1 row in set (0.01 sec)




mysql> DELETE FROM department185 WHERE deptid = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`batch18`.`employee185`, CONSTRAINT `employee185_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department185` (`deptid`))




mysql> CREATE TABLE department186( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.34 sec)




mysql> DESC department186;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee186( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department186(deptid) ON 
DELETE SET NULL);

-- Query OK, 0 rows affected (2.34 sec)




mysql> DESC employee186;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department186 VALUES(1, 'HR');

-- Query OK, 1 row affected (0.08 sec)




mysql> SELECT * FROM department186;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | HR       |
-- +--------+----------+
-- 1 row in set (0.01 sec)




mysql> INSERT INTO employee186 VALUES(101, 'kamlesh', 1);

-- Query OK, 1 row affected (0.10 sec)




mysql> SELECT * FROM employee186;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | kamlesh |      1 |
-- +-------+---------+--------+
-- 1 row in set (0.00 sec)




mysql> DELETE FROM department186 WHERE deptid = '1';

-- Query OK, 1 row affected (0.09 sec)




mysql> SELECT * FROM department186;

-- Empty set (0.00 sec)




mysql> SELECT * FROM employee186;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | kamlesh |   NULL |
-- +-------+---------+--------+
-- 1 row in set (0.00 sec)



















VIEWS

mysql> CREATE TABLE view_data (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     department VARCHAR(30),
    ->     salary DECIMAL(10,2),
    ->     city VARCHAR(30)
    -> );

-- Query OK, 0 rows affected (0.72 sec)



mysql> INSERT INTO view_data VALUES
    -> (1, 'Rahul', 'IT', 30000, 'Indore'),
    -> (2, 'Aman', 'HR', 25000, 'Bhopal'),
    -> (3, 'Priya', 'IT', 40000, 'Indore'),
    -> (4, 'Neha', 'Finance', 35000, 'Jaipur'),
    -> (5, 'Ravi', 'HR', 28000, 'Bhopal');

-- Query OK, 5 rows affected (0.18 sec)
-- Records: 5  Duplicates: 0  Warnings: 0




mysql> DESC view_data;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | id         | int           | NO   | PRI | NULL    |       |
-- | name       | varchar(50)   | YES  |     | NULL    |       |
-- | department | varchar(30)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- | city       | varchar(30)   | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 5 rows in set (0.00 sec)




mysql> SELECT * FROM view_data;

-- +----+-------+------------+----------+--------+
-- | id | name  | department | salary   | city   |
-- +----+-------+------------+----------+--------+
-- |  1 | Rahul | IT         | 30000.00 | Indore |
-- |  2 | Aman  | HR         | 25000.00 | Bhopal |
-- |  3 | Priya | IT         | 40000.00 | Indore |
-- |  4 | Neha  | Finance    | 35000.00 | Jaipur |
-- |  5 | Ravi  | HR         | 28000.00 | Bhopal |
-- +----+-------+------------+----------+--------+
-- 5 rows in set (0.00 sec)




mysql> CREATE VIEW show_view AS SELECT id, name, department FROM view_data;

-- Query OK, 0 rows affected (0.08 sec)




mysql> SELECT * FROM show_view;

-- +----+-------+------------+
-- | id | name  | department |
-- +----+-------+------------+
-- |  1 | Rahul | IT         |
-- |  2 | Aman  | HR         |
-- |  3 | Priya | IT         |
-- |  4 | Neha  | Finance    |
-- |  5 | Ravi  | HR         |
-- +----+-------+------------+
-- 5 rows in set (0.00 sec)




mysql> CREATE OR REPLACE VIEW show_view AS SELECT id, name, department, city FROM view_data;

-- Query OK, 0 rows affected (0.09 sec)




mysql> SELECT * FROM show_view;

-- +----+-------+------------+--------+
-- | id | name  | department | city   |
-- +----+-------+------------+--------+
-- |  1 | Rahul | IT         | Indore |
-- |  2 | Aman  | HR         | Bhopal |
-- |  3 | Priya | IT         | Indore |
-- |  4 | Neha  | Finance    | Jaipur |
-- |  5 | Ravi  | HR         | Bhopal |
-- +----+-------+------------+--------+
-- 5 rows in set (0.00 sec)




mysql> DROP VIEW show_view;

-- Query OK, 0 rows affected (0.09 sec)




mysql> SELECT * FROM show_view;

-- ERROR 1146 (42S02): Table 'batch18.show_view' doesnt exist




mysql> SELECT * FROM view_data;

-- +----+-------+------------+----------+--------+
-- | id | name  | department | salary   | city   |
-- +----+-------+------------+----------+--------+
-- |  1 | Rahul | IT         | 30000.00 | Indore |
-- |  2 | Aman  | HR         | 25000.00 | Bhopal |
-- |  3 | Priya | IT         | 40000.00 | Indore |
-- |  4 | Neha  | Finance    | 35000.00 | Jaipur |
-- |  5 | Ravi  | HR         | 28000.00 | Bhopal |
-- +----+-------+------------+----------+--------+
-- 5 rows in set (0.00 sec)