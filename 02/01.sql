-- 07_August_2026



mysql> CREATE DATABASE batch18;  -- CREATE DATABASE is used to create a new database in MySQL.

-- Query OK, 1 row affected (0.12 sec)





mysql> SHOW DATABASES;    -- SHOW DATABASES is used to display the list of all databases available in the MySQL server.

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | batch18            |
-- | information_schema |
-- | mysql              |
-- | performance_schema |
-- | sys                |
-- +--------------------+
-- 5 rows in set (0.12 sec)





mysql> CREATE DATABASE batch18;

-- ERROR 1007 (HY000): Can't create database 'batch18'; database exists





mysql> CREATE DATABASE IF NOT EXISTS batch18;  -- CREATE DATABASE IF NOT EXISTS is used to create a new database only if it does not already exist.

-- Query OK, 1 row affected, 1 warning (0.00 sec)





mysql> CREATE DATABASE IF NOT EXISTS newone;

-- Query OK, 1 row affected (0.01 sec)






mysql> SHOW DATABASES;

-- +--------------------+
-- | Database           |
-- +--------------------+
-- | batch18            |
-- | information_schema |
-- | mysql              |
-- | newone             |
-- | performance_schema |
-- | sys                |
-- +--------------------+
-- 6 rows in set (0.00 sec)





mysql> USE batch18;  -- USE is used to select a database so that you can work with it.

-- Database changed





mysql> SELECT DATABASE();  -- SELECT DATABASE(); is used to display the name of the currently selected (active) database.

-- +------------+
-- | DATABASE() |
-- +------------+
-- | batch18    |
-- +------------+
-- 1 row in set (0.00 sec)







mysql> USE newone;

-- Database changed

mysql> SELECT DATABASE();

-- +------------+
-- | DATABASE() |
-- +------------+
-- | newone     |
-- +------------+





mysql> DROP DATABASE newone;  -- DROP DATABASE is used to permanently delete a database from the MySQL server. ⚠️ Warning: Once a database is dropped, all its tables and data are deleted permanently. This action cannot be undone.

-- Query OK, 0 rows affected (0.06 sec)






mysql> USE newone;

-- ERROR 1049 (42000): Unknown database 'newone'






mysql> DROP DATABASE newone;

-- ERROR 1008 (HY000): Can't drop database 'newone'; database doesn't exist







mysql> DROP DATABASE IF EXISTS newone;

-- Query OK, 0 rows affected, 1 warning (0.00 sec)






mysql> SELECT DATABASE();
-- +------------+
-- | DATABASE() |
-- +------------+
-- | NULL       |
-- +------------+
-- 1 row in set (0.00 sec)






mysql> USE batch18;

-- Database changed





mysql> CREATE TABLE Student(id INT, name VARCHAR(20), age INT);

-- Query OK, 0 rows affected (0.03 sec)







mysql> DESC student;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.02 sec)







mysql> SHOW TABLES;

-- +-------------------+
-- | Tables_in_batch18 |
-- +-------------------+
-- | student           |
-- +-------------------+
-- 1 row in set (0.00 sec)






mysql> CREATE TABLE A(A int);

-- Query OK, 0 rows affected (0.02 sec)






mysql> DESC A;

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | A     | int  | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+
-- 1 row in set (0.00 sec)






mysql> SHOW TABLES;

-- +-------------------+
-- | Tables_in_batch18 |
-- +-------------------+
-- | a                 |
-- | student           |
-- +-------------------+
-- 2 rows in set (0.00 sec)






mysql> SELECT * FROM student;

-- Empty set (0.01 sec)






mysql> SELECT * FROM A;

-- Empty set (0.00 sec)




mysql> SELECT * FROM a;

-- Empty set (0.00 sec)





mysql> CREATE TABLE student1(id INT PRIMARY KEY, name VARCHAR(20), age INT);

-- Query OK, 0 rows affected (0.23 sec)







mysql> DESC student1;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.05 sec)









mysql> CREATE TABLE employee AS SELECT * FROM student;

-- Query OK, 0 rows affected (0.03 sec)
-- Records: 0  Duplicates: 0  Warnings: 0





mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> CREATE TABLE emp1 AS SELECT * FROM student1;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0







mysql> DESC emp1;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> CREATE TABLE emp2 AS SELECT id, name FROM student;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0






mysql> DESC emp2;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)






mysql> CREATE TABLE emp3 AS SELECT * FROM student WHERE 1=2;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0





mysql> CREATE TABLE emp3 AS SELECT * FROM student WHERE 1=1;

-- ERROR 1050 (42S01): Table 'emp3' already exists






mysql> INSERT student VALUES(101, "deepika", 30);

-- Query OK, 1 row affected (0.01 sec)






mysql> SELECT * FROM student;

-- +------+---------+------+
-- | id   | name    | age  |
-- +------+---------+------+
-- |  101 | deepika |   30 |
-- +------+---------+------+
-- 1 row in set (0.00 sec)






mysql> CREATE TABLE t1 AS SELECT * FROM student;

-- Query OK, 1 row affected (0.02 sec)
-- Records: 1  Duplicates: 0  Warnings: 0







mysql> SELECT * FROM t1;

-- +------+---------+------+
-- | id   | name    | age  |
-- +------+---------+------+
-- |  101 | deepika |   30 |
-- +------+---------+------+
-- 1 row in set (0.00 sec)







mysql> CREATE TABLE t2 AS SELECT * FROM student WHERE 1=2;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0





mysql> SELECT * FROM t2;
-- Empty set (0.00 sec)