-- 08/september/2026




mysql> CREATE TABLE department18(deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.49 sec)




mysql> DESC department18;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee18( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY( deptid) REFERENCES department18(deptid));

-- Query OK, 0 rows affected (2.22 sec)




mysql> DESC employee18;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department18 VALUES(1, 'hr'), (2, 'it'), (3, 'finance');

-- Query OK, 3 rows affected (0.16 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr       |
-- |      2 | it       |
-- |      3 | finance  |
-- +--------+----------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employee18 VALUES(101, 'deepika', 1), (102, 'rashmika', 2), (103, 'thapaji', 3);

-- Query OK, 3 rows affected (0.07 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee18;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      2 |
-- |   103 | thapaji  |      3 |
-- +-------+----------+--------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employee18 VALUES(104, 'kanak', 5);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`employee18`, CONSTRAINT `employee18_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department18` (`deptid`))




mysql> INSERT INTO employee18 VALUES(104, 'kanak', 1);

-- Query OK, 1 row affected (0.06 sec)




mysql> SELECT * FROM employee18;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      2 |
-- |   103 | thapaji  |      3 |
-- |   104 | kanak    |      1 |
-- +-------+----------+--------+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO employee18(empid, empname) VALUES(105, 'katappa');

-- Query OK, 1 row affected (0.06 sec)




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




CREATE TABLE employee18( empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT NOT NULL, FOREIGN KEY( deptid) REFERENCES department18(deptid));




mysql> CREATE TABLE department181( deptid INT PRIMARY KEY, deptcode VARCHAR(20) UNIQUE);

-- Query OK, 0 rows affected (0.41 sec)




mysql> DESC department181;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptcode | varchar(20) | YES  | UNI | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee181( empid INT PRIMARY KEY, empname VARCHAR(20), dcode VARCHAR(20), FOREIGN KEY(dcode) REFERENCES department181(deptcode));

-- Query OK, 0 rows affected (0.76 sec)




mysql> DESC employee181;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | dcode   | varchar(20) | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department181 VALUES( 1, 'IT111'), (2, 'CS123');

-- Query OK, 2 rows affected (0.08 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM department181;

-- +--------+----------+
-- | deptid | deptcode |
-- +--------+----------+
-- |      2 | CS123    |
-- |      1 | IT111    |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee181 VALUES( 101, 'deepiak', 1);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`employee181`, CONSTRAINT `employee181_ibfk_1` FOREIGN KEY (`dcode`) REFERENCES `department181` (`deptcode`))




mysql> INSERT INTO employee181 VALUES( 101, 'deepiak', 'CS123');

-- Query OK, 1 row affected (0.08 sec)




mysql> SELECT * FROM employee181;

-- +-------+---------+-------+
-- | empid | empname | dcode |
-- +-------+---------+-------+
-- |   101 | deepiak | CS123 |
-- +-------+---------+-------+
-- 1 row in set (0.00 sec)




mysql> CREATE TABLE department182( deptid INT PRIMARY KEY, deptcode VARCHAR(20) UNIQUE);

-- Query OK, 0 rows affected (0.44 sec)




mysql> DESC department182;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptcode | varchar(20) | YES  | UNI | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee182( empid INT PRIMARY KEY, empname VARCHAR(20), dcode VARCHAR(20),CONSTRAINT fk_employee182_depaerment182 FOREIGN KEY(dcode) REFERENCES department181(deptcode));

-- Query OK, 0 rows affected (0.49 sec)




mysql> DESC employee182;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | dcode   | varchar(20) | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> ALTER TABLE employee182 DROP FOREIGN KEY fk_employee182_depaerment182;

-- Query OK, 0 rows affected (0.12 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> INSERT INTO employee182 VALUES(109, 'deepika', 'cs1234');

-- Query OK, 1 row affected (0.07 sec)