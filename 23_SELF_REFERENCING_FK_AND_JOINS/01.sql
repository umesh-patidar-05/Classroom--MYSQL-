-- 11/september/2026




mysql> CREATE TABLE selfemployee(empid INT PRIMARY KEY, empname VARCHAR(20) NOT NULL, managerid INT, FOREIGN KEY(managerid) REFERENCES selfemployee(empid));

-- Query OK, 0 rows affected (0.83 sec)





mysql> DESC selfemployee;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | empid     | int         | NO   | PRI | NULL    |       |
-- | empname   | varchar(20) | NO   |     | NULL    |       |
-- | managerid | int         | YES  | MUL | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(101, 'deepika', NULL);

-- Query OK, 1 row affected (0.06 sec)





mysql> SELECT * FROM selfemployee;

-- +-------+---------+-----------+
-- | empid | empname | managerid |
-- +-------+---------+-----------+
-- |   101 | deepika |      NULL |
-- +-------+---------+-----------+
-- 1 row in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(102, 'thapaji', 108);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`selfemployee`, CONSTRAINT `selfemployee_ibfk_1` FOREIGN KEY (`managerid`) REFERENCES `selfemployee` (`empid`))





mysql> INSERT INTO selfemployee VALUES(102, 'thapaji', 101);

-- Query OK, 1 row affected (0.19 sec)





mysql> SELECT * FROM selfemployee;

-- +-------+---------+-----------+
-- | empid | empname | managerid |
-- +-------+---------+-----------+
-- |   101 | deepika |      NULL |
-- |   102 | thapaji |       101 |
-- +-------+---------+-----------+
-- 2 rows in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(103, 'rashmika', 102);

-- Query OK, 1 row affected (0.19 sec)





mysql> SELECT * FROM selfemployee;

-- +-------+----------+-----------+
-- | empid | empname  | managerid |
-- +-------+----------+-----------+
-- |   101 | deepika  |      NULL |
-- |   102 | thapaji  |       101 |
-- |   103 | rashmika |       102 |
-- +-------+----------+-----------+
-- 3 rows in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(104, 'umesh', 101);

-- Query OK, 1 row affected (0.08 sec)





mysql> SELECT * FROM selfemployee;

-- +-------+----------+-----------+
-- | empid | empname  | managerid |
-- +-------+----------+-----------+
-- |   101 | deepika  |      NULL |
-- |   102 | thapaji  |       101 |
-- |   103 | rashmika |       102 |
-- |   104 | umesh    |       101 |
-- +-------+----------+-----------+
-- 4 rows in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(105, 'abhi', 105);

-- Query OK, 1 row affected (0.07 sec)





mysql> SELECT * FROM selfemployee;

-- +-------+----------+-----------+
-- | empid | empname  | managerid |
-- +-------+----------+-----------+
-- |   101 | deepika  |      NULL |
-- |   102 | thapaji  |       101 |
-- |   103 | rashmika |       102 |
-- |   104 | umesh    |       101 |
-- |   105 | abhi     |       105 |
-- +-------+----------+-----------+
-- 5 rows in set (0.00 sec)





mysql> INSERT INTO selfemployee VALUES(107, 'deepak', 108), (108, 'sneha', 108);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`selfemployee`, CONSTRAINT `selfemployee_ibfk_1` FOREIGN KEY (`managerid`) REFERENCES `selfemployee` (`empid`))





mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr_IT    |
-- |      3 | finance  |
-- +--------+----------+
-- 2 rows in set (0.00 sec)





mysql> INSERT INTO department18 VALUES(2, 'marketing');

-- Query OK, 1 row affected (0.09 sec)





mysql> INSERT INTO department18 VALUES(4, 'sales');

-- Query OK, 1 row affected (0.08 sec)





mysql> SELECT * FROM department18;

-- +--------+-----------+
-- | deptid | deptname  |
-- +--------+-----------+
-- |      1 | hr_IT     |
-- |      2 | marketing |
-- |      3 | finance   |
-- |      4 | sales     |
-- +--------+-----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT * FROM employee18;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | deepika |      1 |
-- |   103 | thapaji |      3 |
-- |   104 | kanak   |      1 |
-- |   105 | katappa |   NULL |
-- +-------+---------+--------+
-- 4 rows in set (0.01 sec)





mysql> INSERT INTO employee18 VALUES(106, 'rashmika', 4);

-- Query OK, 1 row affected (0.11 sec)





mysql> UPDATE department18 SET deptname = 'hr' WHERE deptid = 1;

-- Query OK, 1 row affected (0.13 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0





mysql> SELECT * FROM department18;

-- +--------+-----------+
-- | deptid | deptname  |
-- +--------+-----------+
-- |      1 | hr        |
-- |      2 | marketing |
-- |      3 | finance   |
-- |      4 | sales     |
-- +--------+-----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT * FROM employee18;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   103 | thapaji  |      3 |
-- |   104 | kanak    |      1 |
-- |   105 | katappa  |   NULL |
-- |   106 | rashmika |      4 |
-- +-------+----------+--------+
-- 5 rows in set (0.00 sec)





mysql> SELECT empname, deptname  FROM employee18, department18;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | sales     |
-- | deepika  | finance   |
-- | deepika  | marketing |
-- | deepika  | hr        |
-- | thapaji  | sales     |
-- | thapaji  | finance   |
-- | thapaji  | marketing |
-- | thapaji  | hr        |
-- | kanak    | sales     |
-- | kanak    | finance   |
-- | kanak    | marketing |
-- | kanak    | hr        |
-- | katappa  | sales     |
-- | katappa  | finance   |
-- | katappa  | marketing |
-- | katappa  | hr        |
-- | rashmika | sales     |
-- | rashmika | finance   |
-- | rashmika | marketing |
-- | rashmika | hr        |
-- +----------+-----------+
-- 20 rows in set (0.00 sec)





mysql> SELECT employee18.empname, department18.deptname FROM employee18 JOIN department18 ON employee18.deptid = department18.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | kanak    | hr       |
-- | thapaji  | finance  |
-- | rashmika | sales    |
-- +----------+----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT e.empname, d.deptname FROM employee18 AS e JOIN department18 AS d  ON e.deptid = d.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | kanak    | hr       |
-- | thapaji  | finance  |
-- | rashmika | sales    |
-- +----------+----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT *  FROM employee18 AS e JOIN department18 AS d  ON e.deptid = d.deptid;

-- +-------+----------+--------+--------+----------+
-- | empid | empname  | deptid | deptid | deptname |
-- +-------+----------+--------+--------+----------+
-- |   101 | deepika  |      1 |      1 | hr       |
-- |   104 | kanak    |      1 |      1 | hr       |
-- |   103 | thapaji  |      3 |      3 | finance  |
-- |   106 | rashmika |      4 |      4 | sales    |
-- +-------+----------+--------+--------+----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT e.empname, d.deptname  FROM employee18 AS e JOIN department18 AS d  ON e.deptid <> d.deptid;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | sales     |
-- | deepika  | finance   |
-- | deepika  | marketing |
-- | thapaji  | sales     |
-- | thapaji  | marketing |
-- | thapaji  | hr        |
-- | kanak    | sales     |
-- | kanak    | finance   |
-- | kanak    | marketing |
-- | rashmika | finance   |
-- | rashmika | marketing |
-- | rashmika | hr        |
-- +----------+-----------+
-- 12 rows in set (0.00 sec)





mysql> SELECT e.empname, d.deptname  FROM employee18 AS e JOIN department18 AS d  ON e.deptid > d.deptid;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | thapaji  | hr        |
-- | rashmika | hr        |
-- | thapaji  | marketing |
-- | rashmika | marketing |
-- | rashmika | finance   |
-- +----------+-----------+
-- 5 rows in set (0.00 sec)





mysql> SELECT e.empname, d.deptname  FROM employee18 AS e JOIN department18 AS d;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | sales     |
-- | deepika  | finance   |
-- | deepika  | marketing |
-- | deepika  | hr        |
-- | thapaji  | sales     |
-- | thapaji  | finance   |
-- | thapaji  | marketing |
-- | thapaji  | hr        |
-- | kanak    | sales     |
-- | kanak    | finance   |
-- | kanak    | marketing |
-- | kanak    | hr        |
-- | katappa  | sales     |
-- | katappa  | finance   |
-- | katappa  | marketing |
-- | katappa  | hr        |
-- | rashmika | sales     |
-- | rashmika | finance   |
-- | rashmika | marketing |
-- | rashmika | hr        |
-- +----------+-----------+
-- 20 rows in set (0.01 sec)





mysql> SELECT e.empname, d.deptname FROM employee18 AS e INNER JOIN department18 AS d  ON e.deptid = d.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | kanak    | hr       |
-- | thapaji  | finance  |
-- | rashmika | sales    |
-- +----------+----------+
-- 4 rows in set (0.00 sec)





mysql> SELECT e.empname, d.deptname FROM department18 AS d INNER JOIN employee18 AS e   ON e.deptid = d.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | kanak    | hr       |
-- | thapaji  | finance  |
-- | rashmika | sales    |
-- +----------+----------+
-- 4 rows in set (0.00 sec)