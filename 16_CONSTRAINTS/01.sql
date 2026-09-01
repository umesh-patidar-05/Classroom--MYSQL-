-- 01/sept/2026



mysql> CREATE TABLE employee (id INT, name VARCHAR(20) NOT NULL, salary DECIMAL(20,2));

-- Query OK, 0 rows affected (0.65 sec)





mysql> DESC employee;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | YES  |     | NULL    |       |
-- | name   | varchar(20)   | NO   |     | NULL    |       |
-- | salary | decimal(20,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> INSERT INTO employee VALUES (101, 'deepika', 89999);

-- Query OK, 1 row affected (0.06 sec)






mysql> SELECT * FROM employee;

-- +------+---------+----------+
-- | id   | name    | salary   |
-- +------+---------+----------+
-- |  101 | deepika | 89999.00 |
-- +------+---------+----------+
-- 1 row in set (0.00 sec)






mysql> INSERT INTO employee( id, salary) VALUES (102, 89999);

-- ERROR 1364 (HY000): Field 'name' doesnt have a default value






mysql> SELECT * FROM employee;

-- +------+---------+----------+
-- | id   | name    | salary   |
-- +------+---------+----------+
-- |  101 | deepika | 89999.00 |
-- +------+---------+----------+
-- 1 row in set (0.00 sec)






mysql> INSERT INTO employee( id, name,salary) VALUES (102,'null', 89999);

-- Query OK, 1 row affected (0.08 sec)





mysql> INSERT INTO employee( id, name,salary) VALUES (102,null, 89999);

-- ERROR 1048 (23000): Column 'name' cannot be null






mysql> SELECT * FROM employee;

-- +------+---------+----------+
-- | id   | name    | salary   |
-- +------+---------+----------+
-- |  101 | deepika | 89999.00 |
-- |  102 | null    | 89999.00 |
-- +------+---------+----------+
-- 2 rows in set (0.00 sec)





mysql> INSERT INTO employee( id, name,salary) VALUES (102,'', 89999);

-- Query OK, 1 row affected (0.08 sec)






mysql> SELECT * FROM employee;

-- +------+---------+----------+
-- | id   | name    | salary   |
-- +------+---------+----------+
-- |  101 | deepika | 89999.00 |
-- |  102 | null    | 89999.00 |
-- |  102 |         | 89999.00 |
-- +------+---------+----------+
-- 3 rows in set (0.00 sec)





mysql> UPDATE employee SET name = null WHERE id = 101;

-- ERROR 1048 (23000): Column 'name' cannot be null





mysql> CREATE TABLE employee1 (id INT , email VARCHAR(20) UNIQUE);

-- Query OK, 0 rows affected (0.70 sec)






mysql> DESC employee1;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | email | varchar(20) | YES  | UNI | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)






mysql> INSERT INTO employee1 VALUES(101, 'dipu@gmail.com');

-- Query OK, 1 row affected (0.10 sec)






mysql> INSERT INTO employee1 VALUES(102, 'dipu@gmail.com');

-- ERROR 1062 (23000): Duplicate entry 'dipu@gmail.com' for key 'employee1.email'





mysql> CREATE TABLE employee1 (id INT, deptid INT, employeecode VARCHAR(20), CONSTRAINT uk_dept UNIQUE(deptid, employeecode));

-- Query OK, 0 rows affected (0.45 sec)






mysql> DESC employee1;

-- +--------------+-------------+------+-----+---------+-------+
-- | Field        | Type        | Null | Key | Default | Extra |
-- +--------------+-------------+------+-----+---------+-------+
-- | id           | int         | YES  |     | NULL    |       |
-- | deptid       | int         | YES  | MUL | NULL    |       |
-- | employeecode | varchar(20) | YES  |     | NULL    |       |
-- +--------------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)





mysql> INSERT INTO employee1 VALUES (101, 991, 4444);

-- Query OK, 1 row affected (0.05 sec)





mysql> SELECT * FROM employee1;

-- +------+--------+--------------+
-- | id   | deptid | employeecode |
-- +------+--------+--------------+
-- |  101 |    991 | 4444         |
-- +------+--------+--------------+
-- 1 row in set (0.00 sec)






mysql> INSERT INTO employee1 VALUES (101, 991, 5555);

-- Query OK, 1 row affected (0.07 sec)






mysql> SELECT * FROM employee1;

-- +------+--------+--------------+
-- | id   | deptid | employeecode |
-- +------+--------+--------------+
-- |  101 |    991 | 4444         |
-- |  101 |    991 | 5555         |
-- +------+--------+--------------+
-- 2 rows in set (0.00 sec)






mysql> INSERT INTO employee1 VALUES (101, 992, 4444);

-- Query OK, 1 row affected (0.10 sec)






mysql> SELECT * FROM employee1;

-- +------+--------+--------------+
-- | id   | deptid | employeecode |
-- +------+--------+--------------+
-- |  101 |    991 | 4444         |
-- |  101 |    991 | 5555         |
-- |  101 |    992 | 4444         |
-- +------+--------+--------------+
-- 3 rows in set (0.00 sec)






mysql> INSERT INTO employee1 VALUES (101, 991, 5555);

-- ERROR 1062 (23000): Duplicate entry '991-5555' for key 'employee1.uk_dept'





mysql> CREATE TABLE employee (id INT, email VARCHAR(20) UNIQUE);

-- Query OK, 0 rows affected (0.50 sec)






mysql> INSERT INTO employee(id) VALUES(101);

-- Query OK, 1 row affected (0.06 sec)





mysql> INSERT INTO employee(id) VALUES(102);

-- Query OK, 1 row affected (0.08 sec)






mysql> SELECT * FROM employee;

-- +------+------+
-- | id   | email|
-- +------+------+
-- |  101 | NULL |
-- |  102 | NULL |
-- +------+------+
-- 2 rows in set (0.00 sec)





mysql> CREATE TABLE employee19 (id INT, email VARCHAR(20) NOT NULL UNIQUE);

-- Query OK, 0 rows affected (0.50 sec)






mysql> DESC employee19;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | email | varchar(20) | NO   | PRI | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)






mysql> INSERT INTO employee19(id) VALUES(101);

-- ERROR 1364 (HY000): Field 'email' doesnt have a default value





mysql> CREATE TABLE employee20 (id INT PRIMARY KEY, email VARCHAR(20) UNIQUE, mobile VARCHAR(20) UNIQUE);

-- Query OK, 0 rows affected (0.59 sec)






mysql> DESC employee20;

-- +--------+-------------+------+-----+---------+-------+
-- | Field  | Type        | Null | Key | Default | Extra |
-- +--------+-------------+------+-----+---------+-------+
-- | id     | int         | NO   | PRI | NULL    |       |
-- | email  | varchar(20) | YES  | UNI | NULL    |       |
-- | mobile | varchar(20) | YES  | UNI | NULL    |       |
-- +--------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> CREATE TABLE employee21 (id INT PRIMARY KEY, email VARCHAR(20) PRIMARY KEY, mobile VARCHAR(20) UNIQUE);

-- ERROR 1068 (42000): Multiple primary key defined





mysql> CREATE TABLE employee22 (id INT, name VARCHAR(20), age INT CHECk (age >= 18));

-- Query OK, 0 rows affected (0.36 sec)






mysql> DESC employee22;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> INSERT INTO employee22 VALUES(101, 'deepika', 17);

-- ERROR 3819 (HY000): Check constraint 'employee22_chk_1' is violated.






mysql> INSERT INTO employee22 VALUES(101, 'deepika', 27);

-- Query OK, 1 row affected (0.07 sec)






mysql> SELECT * FROM employee22;

-- +------+---------+------+
-- | id   | name    | age  |
-- +------+---------+------+
-- |  101 | deepika |   27 |
-- +------+---------+------+
-- 1 row in set (0.00 sec)





mysql> CREATE TABLE employee23(id INT, name VARCHAR(20), dno INT CHECK(dno IN(10,20,30)));

-- Query OK, 0 rows affected (0.43 sec)






mysql> INSERT INTO employee23 VALUES(101, 'deepika', 40);

-- ERROR 3819 (HY000): Check constraint 'employee23_chk_1' is violated.






mysql> INSERT INTO employee23 VALUES(101, 'deepika', 20);

-- Query OK, 1 row affected (0.10 sec)






mysql> SELECT * FROM employee23;

-- +------+---------+------+
-- | id   | name    | dno  |
-- +------+---------+------+
-- |  101 | deepika |   20 |
-- +------+---------+------+
-- 1 row in set (0.00 sec)





mysql> INSERT INTO employee23(id, name) VALUES(102, 'rashmika');

-- Query OK, 1 row affected (0.11 sec)






mysql> SELECT * FROM employee23;

-- +------+----------+------+
-- | id   | name     | dno  |
-- +------+----------+------+
-- |  101 | deepika  |   20 |
-- |  102 | rashmika | NULL |
-- +------+----------+------+
-- 2 rows in set (0.00 sec)





mysql> CREATE TABLE employee24(id INT, name VARCHAR(20), dno INT CHECK(dno IN(10,20,30)) NOT NULL);

-- Query OK, 0 rows affected (0.38 sec)






mysql> INSERT INTO employee24(id, name) VALUES(103, 'katappa');

-- ERROR 1364 (HY000): Field 'dno' doesnt have a default value






mysql> INSERT INTO employee24 VALUES(103, 'katappa', 30);

-- Query OK, 1 row affected (0.10 sec)






mysql> SELECT * FROM employee24;

-- +------+---------+-----+
-- | id   | name    | dno |
-- +------+---------+-----+
-- |  103 | katappa |  30 |
-- +------+---------+-----+
-- 1 row in set (0.00 sec)





mysql> CREATE TABLE employee27(id INT, name VARCHAR(20), age INT, salary DECIMAL(10,2), CHECK(age>=18 AND salary>=10000));

-- Query OK, 0 rows affected (0.61 sec)






mysql> INSERT INTO employee27 VALUES(101, 'deepika',19, 9000);

-- ERROR 3819 (HY000): Check constraint 'employee27_chk_1' is violated.





mysql> INSERT INTO employee27 VALUES(101, 'deepika',17, 19000);

-- ERROR 3819 (HY000): Check constraint 'employee27_chk_1' is violated.






mysql> INSERT INTO employee27 VALUES(101, 'deepika',19, 19000);

-- Query OK, 1 row affected (0.08 sec)






mysql> SELECT * FROM employee27;

-- +------+---------+------+----------+
-- | id   | name    | age  | salary   |
-- +------+---------+------+----------+
-- |  101 | deepika |   19 | 19000.00 |
-- +------+---------+------+----------+
-- 1 row in set (0.00 sec)





mysql> CREATE TABLE employee28(rollno INT, name VARCHAR(20), marks INT CHECK(marks BETWEEN 0 AND 100));

-- Query OK, 0 rows affected (0.41 sec)






mysql> INSERT INTO employee28 VALUES (101, 'abc', 120);

-- ERROR 3819 (HY000): Check constraint 'employee28_chk_1' is violated.





mysql> CREATE TABLE emloyee29 (id INT, name VARCHAR(20), experience INT, salary DECIMAL(10,2), CHECK((experience<2 AND salary>=15000) OR (experience>=2 AND salary>=25000)));

-- Query OK, 0 rows affected (0.50 sec)
 





mysql> INSERT INTO emloyee29 VALUES(101, 'dipu', 1, 13000);

-- ERROR 3819 (HY000): Check constraint 'emloyee29_chk_1' is violated.






mysql> INSERT INTO emloyee29 VALUES(101, 'dipu', 2, 16000);

-- ERROR 3819 (HY000): Check constraint 'emloyee29_chk_1' is violated.






mysql> INSERT INTO emloyee29 VALUES(101, 'dipu', 2, 26000);

-- Query OK, 1 row affected (0.08 sec)






mysql> SELECT * FROM emloyee29;

-- +------+------+------------+----------+
-- | id   | name | experience | salary   |
-- +------+------+------------+----------+
-- |  101 | dipu |          2 | 26000.00 |
-- +------+------+------------+----------+
-- 1 row in set (0.00 sec)