-- 14/september/2026




mysql> CREATE TABLE subdepartment(deptid INT PRIMARY KEY, dname VARCHAR(20));

-- Query OK, 0 rows affected (1.49 sec)



mysql> DESC subdepartment;

-- +--------+-------------+------+-----+---------+-------+
-- | Field  | Type        | Null | Key | Default | Extra |
-- +--------+-------------+------+-----+---------+-------+
-- | deptid | int         | NO   | PRI | NULL    |       |
-- | dname  | varchar(20) | YES  |     | NULL    |       |
-- +--------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)



mysql> INSERT INTO subdepartment VALUES(1,'HR'), (2,'IT'), (3,'finance');

-- Query OK, 3 rows affected (0.25 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM subdepartment;

-- +--------+---------+
-- | deptid | dname   |
-- +--------+---------+
-- |      1 | HR      |
-- |      2 | IT      |
-- |      3 | finance |
-- +--------+---------+
-- 3 rows in set (0.00 sec)



mysql> CREATE TABLE subemployee( eid INT PRIMARY KEY, ename VARCHAR(20), salary INT, deptid INT);

-- Query OK, 0 rows affected (0.33 sec)



mysql> DESC subemployee;

-- +--------+-------------+------+-----+---------+-------+
-- | Field  | Type        | Null | Key | Default | Extra |
-- +--------+-------------+------+-----+---------+-------+
-- | eid    | int         | NO   | PRI | NULL    |       |
-- | ename  | varchar(20) | YES  |     | NULL    |       |
-- | salary | int         | YES  |     | NULL    |       |
-- | deptid | int         | YES  |     | NULL    |       |
-- +--------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.01 sec)



mysql> INSERT INTO subemployee VALUES(101, 'amit', 3000, 1), (102, 'rahul', 50000, 2), (103, 'deepika', 6000, 3), (104, 'rashmika', 89000, 1), (105, 'katappa', 70000, 2);

-- Query OK, 5 rows affected (0.16 sec)
-- Records: 5  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM subemployee;

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 101 | amit     |   3000 |      1 |
-- | 102 | rahul    |  50000 |      2 |
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 5 rows in set (0.00 sec)



mysql> SELECT AVG(salary) FROM subemployee;

-- +-------------+
-- | AVG(salary) |
-- +-------------+
-- |  43600.0000 |
-- +-------------+
-- 1 row in set (0.02 sec)



mysql> SELECT * FROM subemployee WHERE salary > 43600;

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 102 | rahul    |  50000 |      2 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary > (SELECT AVG(salary) FROM subemployee);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 102 | rahul    |  50000 |      2 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT MAX(salary) FROM subemployee;

-- +-------------+
-- | MAX(salary) |
-- +-------------+
-- |       89000 |
-- +-------------+
-- 1 row in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary = 89000;

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 104 | rashmika |  89000 |      1 |
-- +-----+----------+--------+--------+
-- 1 row in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary = (SELECT MAX(salary) FROM subemployee);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 104 | rashmika |  89000 |      1 |
-- +-----+----------+--------+--------+
-- 1 row in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary >= (SELECT AVG(salary) FROM subemployee);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 102 | rahul    |  50000 |      2 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee  WHERE salary != ( SELECT MIN(salary) FROM subemployee);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 102 | rahul    |  50000 |      2 |
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary = (SELECT salary FROM subemployee);

-- ERROR 1242 (21000): Subquery returns more than 1 row



mysql> SELECT deptid FROM subdepartment WHERE dname = 'IT' OR dname =  'finance';

-- +--------+
-- | deptid |
-- +--------+
-- |      2 |
-- |      3 |
-- +--------+
-- 2 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE deptid IN (2,3);

-- +-----+---------+--------+--------+
-- | eid | ename   | salary | deptid |
-- +-----+---------+--------+--------+
-- | 102 | rahul   |  50000 |      2 |
-- | 103 | deepika |   6000 |      3 |
-- | 105 | katappa |  70000 |      2 |
-- +-----+---------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE deptid in( SELECT deptid FROM subdepartment WHERE dname = 'IT' OR dname = 'finance');

-- +-----+---------+--------+--------+
-- | eid | ename   | salary | deptid |
-- +-----+---------+--------+--------+
-- | 102 | rahul   |  50000 |      2 |
-- | 103 | deepika |   6000 |      3 |
-- | 105 | katappa |  70000 |      2 |
-- +-----+---------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE deptid NOT in( SELECT deptid FROM subdepartment WHERE dname = 'IT');

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 101 | amit     |   3000 |      1 |
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT deptid, MAX(salary) FROM subemployee GROUP BY deptid;

-- +--------+-------------+
-- | deptid | MAX(salary) |
-- +--------+-------------+
-- |      1 |       89000 |
-- |      2 |       70000 |
-- |      3 |        6000 |
-- +--------+-------------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE (deptid = 1 AND salary = 89000) OR (deptid = 2 AND salary = 70000) OR (deptid = 3 AND salary = 6000);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE(deptid, salary) IN (SELECT deptid, MAX(salary) FROM subemployee GROUP BY deptid);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 3 rows in set (0.00 sec)



mysql> SELECT salary FROM subemployee WHERE deptid = 1;

-- +--------+
-- | salary |
-- +--------+
-- |   3000 |
-- |  89000 |
-- +--------+
-- 2 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary > ANY(SELECT salary FROM subemployee WHERE deptid = 1);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 102 | rahul    |  50000 |      2 |
-- | 103 | deepika  |   6000 |      3 |
-- | 104 | rashmika |  89000 |      1 |
-- | 105 | katappa  |  70000 |      2 |
-- +-----+----------+--------+--------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary > ALL (SELECT salary FROM subemployee WHERE deptid = 2);

-- +-----+----------+--------+--------+
-- | eid | ename    | salary | deptid |
-- +-----+----------+--------+--------+
-- | 104 | rashmika |  89000 |      1 |
-- +-----+----------+--------+--------+
-- 1 row in set (0.00 sec)



mysql> SELECT * FROM subemployee WHERE salary < ALL (SELECT SALARY FROM subemployee WHERE deptid = (SELECT deptid FROM subdepartment WHERE dname = 'finance'));

-- +-----+-------+--------+--------+
-- | eid | ename | salary | deptid |
-- +-----+-------+--------+--------+
-- | 101 | amit  |   3000 |      1 |
-- +-----+-------+--------+--------+
-- 1 row in set (0.00 sec)

