-- 12/september/2026




mysql> SELECT e.empname, d.deptname FROM employee18 AS e LEFT JOIN department18 AS d ON e.deptid = d.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | thapaji  | finance  |
-- | kanak    | hr       |
-- | katappa  | NULL     |
-- | rashmika | sales    |
-- +----------+----------+
-- 5 rows in set (0.00 sec)




mysql> SELECT e.empname, d.deptname FROM department18 AS d LEFT JOIN employee18 AS e ON e.deptid = d.deptid;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | hr        |
-- | kanak    | hr        |
-- | NULL     | marketing |
-- | thapaji  | finance   |
-- | rashmika | sales     |
-- +----------+-----------+
-- 5 rows in set (0.00 sec)




mysql> SELECT e.empname, d.deptname FROM department18 AS d RIGHT JOIN employee18 AS e ON e.deptid = d.deptid;

-- +----------+----------+
-- | empname  | deptname |
-- +----------+----------+
-- | deepika  | hr       |
-- | thapaji  | finance  |
-- | kanak    | hr       |
-- | katappa  | NULL     |
-- | rashmika | sales    |
-- +----------+----------+
-- 5 rows in set (0.00 sec)




mysql> SELECT e.empname, d.deptname FROM employee18 AS e RIGHT JOIN department18 AS d ON e.deptid = d.deptid;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | hr        |
-- | kanak    | hr        |
-- | NULL     | marketing |
-- | thapaji  | finance   |
-- | rashmika | sales     |
-- +----------+-----------+
-- 5 rows in set (0.00 sec)




mysql> SELECT e.empname, d.deptname FROM employee18 AS e CROSS JOIN department18 AS d;

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





mysql> SELECT e.empname, d.deptname FROM employee18 AS e, department18 AS d;

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




mysql> CREATE TABLE product18( pid INT PRIMARY KEY, pname VARCHAR(20));

-- Query OK, 0 rows affected (0.41 sec)




mysql> DESC product18;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | pid   | int         | NO   | PRI | NULL    |       |
-- | pname | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE color18( cid INT PRIMARY KEY, colorname VARCHAR(20));

-- Query OK, 0 rows affected (2.43 sec)




mysql> DESC color18;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | cid       | int         | NO   | PRI | NULL    |       |
-- | colorname | varchar(20) | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> INSERT INTO product18 VALUES( 101, 'jeans'), (102, 'Tshirt'), (103, 'jacket');

-- Query OK, 3 rows affected (0.88 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM product18;

-- +-----+--------+
-- | pid | pname  |
-- +-----+--------+
-- | 101 | jeans  |
-- | 102 | Tshirt |
-- | 103 | jacket |
-- +-----+--------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO color18 VALUES(1, 'red'), (2, 'black'), (3, 'blue');

-- Query OK, 3 rows affected (0.10 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM color18;

-- +-----+-----------+
-- | cid | colorname |
-- +-----+-----------+
-- |   1 | red       |
-- |   2 | black     |
-- |   3 | blue      |
-- +-----+-----------+
-- 3 rows in set (0.00 sec)




mysql> SELECT p.pname, c.clolorname FROM product18 AS p CROSS JOIN color18 AS c;




mysql> SELECT p.pname, c.colorname FROM product18 AS p CROSS JOIN color18 AS c;

-- +--------+-----------+
-- | pname  | colorname |
-- +--------+-----------+
-- | jacket | red       |
-- | Tshirt | red       |
-- | jeans  | red       |
-- | jacket | black     |
-- | Tshirt | black     |
-- | jeans  | black     |
-- | jacket | blue      |
-- | Tshirt | blue      |
-- | jeans  | blue      |
-- +--------+-----------+
-- 9 rows in set (0.00 sec)




mysql> SELECT p.pname, c.colorname FROM product18 AS p CROSS JOIN color18 AS c ORDER BY p.pname, c.colorname;

-- +--------+-----------+
-- | pname  | colorname |
-- +--------+-----------+
-- | jacket | black     |
-- | jacket | blue      |
-- | jacket | red       |
-- | jeans  | black     |
-- | jeans  | blue      |
-- | jeans  | red       |
-- | Tshirt | black     |
-- | Tshirt | blue      |
-- | Tshirt | red       |
-- +--------+-----------+
-- 9 rows in set (0.00 sec)




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




mysql> SELECT empname, empid  FROM selfemployee;

-- +----------+-------+
-- | empname  | empid |
-- +----------+-------+
-- | deepika  |   101 |
-- | thapaji  |   102 |
-- | rashmika |   103 |
-- | umesh    |   104 |
-- | abhi     |   105 |
-- +----------+-------+
-- 5 rows in set (0.00 sec)




mysql> SELECT e.empname AS employee, m.empname AS manager FROM selfemployee AS e JOIN selfemployee AS m ON e.managerid = m.empid;

-- +----------+---------+
-- | employee | manager |
-- +----------+---------+
-- | thapaji  | deepika |
-- | rashmika | thapaji |
-- | umesh    | deepika |
-- | abhi     | abhi    |
-- +----------+---------+
-- 4 rows in set (0.00 sec)




mysql> SELECT e.empname AS employee, m.empname AS manager FROM selfemployee AS e LEFT JOIN selfemployee AS m ON e.managerid = m.empid;

-- +----------+---------+
-- | employee | manager |
-- +----------+---------+
-- | deepika  | NULL    |
-- | thapaji  | deepika |
-- | rashmika | thapaji |
-- | umesh    | deepika |
-- | abhi     | abhi    |
-- +----------+---------+
-- 5 rows in set (0.00 sec)

mysql> SELECT e.empname, d.deptname FROM department18 AS d LEFT JOIN employee18 AS e ON e.deptid = d.deptid UNION SELECT e.empname, d.deptname FROM department18 AS d RIGHT JOIN employee18 AS e ON e.deptid = d.deptid;

-- +----------+-----------+
-- | empname  | deptname  |
-- +----------+-----------+
-- | deepika  | hr        |
-- | kanak    | hr        |
-- | NULL     | marketing |
-- | thapaji  | finance   |
-- | rashmika | sales     |
-- | katappa  | NULL      |
-- +----------+-----------+
-- 6 rows in set (0.00 sec)
