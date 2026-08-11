-- 11_August_2026







mysql> CREATE TABLE customer_product(id INT, pid INT, quantity INT, PRIMARY KEY(id, pid));

-- Query OK, 0 rows affected (0.10 sec)



mysql> DESC customer_product;

-- +----------+------+------+-----+---------+-------+
-- | Field    | Type | Null | Key | Default | Extra |
-- +----------+------+------+-----+---------+-------+
-- | id       | int  | NO   | PRI | NULL    |       |
-- | pid      | int  | NO   | PRI | NULL    |       |
-- | quantity | int  | YES  |     | NULL    |       |
-- +----------+------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)



mysql> INSERT INTO customer_product VALUES(101, 501, 2);

-- Query OK, 1 row affected (0.01 sec)



mysql> INSERT INTO customer_product VALUES(102, 501, 4);

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM customer_product;

-- +-----+-----+----------+
-- | id  | pid | quantity |
-- +-----+-----+----------+
-- | 101 | 501 |        2 |
-- | 102 | 501 |        4 |
-- +-----+-----+----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO customer_product VALUES(101, 501, 9);

-- ERROR 1062 (23000): Duplicate entry '101-501' for key 'customer_product.PRIMARY'



mysql> INSERT INTO customer_product VALUES(101, 504, 9);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM customer_product;

-- +-----+-----+----------+
-- | id  | pid | quantity |
-- +-----+-----+----------+
-- | 101 | 501 |        2 |
-- | 101 | 504 |        9 |
-- | 102 | 501 |        4 |
-- +-----+-----+----------+
-- 3 rows in set (0.00 sec)










mysql> CREATE TABLE stumarks(sid INT, subid INT, marks INT, PRIMARY KEY(sid, subid));

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC stumarks;

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | sid   | int  | NO   | PRI | NULL    |       |
-- | subid | int  | NO   | PRI | NULL    |       |
-- | marks | int  | YES  |     | NULL    |       |
-- +-------+------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO stumarks VALUES (101, 501, 98);

-- Query OK, 1 row affected (0.01 sec)



mysql> INSERT INTO stumarks VALUES (101, 502, 93), (102, 501, 93), (102, 502, 84);

-- Query OK, 3 rows affected (0.01 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM stumarks;

-- +-----+-------+-------+
-- | sid | subid | marks |
-- +-----+-------+-------+
-- | 101 |   501 |    98 |
-- | 101 |   502 |    93 |
-- | 102 |   501 |    93 |
-- | 102 |   502 |    84 |
-- +-----+-------+-------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO stumarks VALUES(102, 502, 99);

-- ERROR 1062 (23000): Duplicate entry '102-502' for key 'stumarks.PRIMARY'



mysql> SELECT * FROM stumarks;

-- +-----+-------+-------+
-- | sid | subid | marks |
-- +-----+-------+-------+
-- | 101 |   501 |    98 |
-- | 101 |   502 |    93 |
-- | 102 |   501 |    93 |
-- | 102 |   502 |    84 |
-- +-----+-------+-------+
-- 4 rows in set (0.00 sec)










mysql> CREATE TABLE pyemployee5( id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), salary DECIMAL(10,2));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC pyemployee5;

-- +--------+---------------+------+-----+---------+----------------+
-- | Field  | Type          | Null | Key | Default | Extra          |
-- +--------+---------------+------+-----+---------+----------------+
-- | id     | int           | NO   | PRI | NULL    | auto_increment |
-- | name   | varchar(20)   | YES  |     | NULL    |                |
-- | salary | decimal(10,2) | YES  |     | NULL    |                |
-- +--------+---------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)



mysql> CREATE TABLE pyemployee6( id INT AUTO_INCREMENT, name VARCHAR(20), salary DECIMAL(10,2));

-- ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key



mysql> INSERT pyemployee5( name, salary) VALUES('dipu', 89999);

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM pyemployee5;

-- +----+------+----------+
-- | id | name | salary   |
-- +----+------+----------+
-- |  1 | dipu | 89999.00 |
-- +----+------+----------+
-- 1 row in set (0.00 sec)



mysql> INSERT pyemployee5( name, salary) VALUES('rashmika', 666666);

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM pyemployee5;

-- +----+----------+-----------+
-- | id | name     | salary    |
-- +----+----------+-----------+
-- |  1 | dipu     |  89999.00 |
-- |  2 | rashmika | 666666.00 |
-- +----+----------+-----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT pyemployee5 VALUES('rashi', 77777);

-- ERROR 1136 (21S01): Column count does not match value count at row 1



mysql> INSERT pyemployee5( name, salary) VALUES('thapaji', 89999);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pyemployee5;

-- +----+----------+-----------+
-- | id | name     | salary    |
-- +----+----------+-----------+
-- |  1 | dipu     |  89999.00 |
-- |  2 | rashmika | 666666.00 |
-- |  3 | thapaji  |  89999.00 |
-- +----+----------+-----------+
-- 3 rows in set (0.00 sec)










mysql> CREATE TABLE pyemployee6 (id INT AUTO_INCREMENT, did INT AUTO_INCREMENT);

-- ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key











mysql> CREATE TABLE pyemployee7 (eid INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20)) AUTO_INCREMENT = 1000;

-- Query OK, 0 rows affected (0.02 sec)




mysql> DESC pyemployee7;

-- +-------+-------------+------+-----+---------+----------------+
-- | Field | Type        | Null | Key | Default | Extra          |
-- +-------+-------------+------+-----+---------+----------------+
-- | eid   | int         | NO   | PRI | NULL    | auto_increment |
-- | name  | varchar(20) | YES  |     | NULL    |                |
-- +-------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO pyemployee7 (name) VALUES ("deepika");

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM pyemployee7;

-- +------+---------+
-- | eid  | name    |
-- +------+---------+
-- | 1000 | deepika |
-- +------+---------+
-- 1 row in set (0.00 sec)










mysql> CREATE TABLE pyemployee8 (eid INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20));

-- Query OK, 0 rows affected (0.02 sec)



mysql> INSERT INTO pyemployee8(name) VALUES ('katappa');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM pyemployee8;

-- +-----+---------+
-- | eid | name    |
-- +-----+---------+
-- |   1 | katappa |
-- +-----+---------+
-- 1 row in set (0.00 sec)



mysql> INSERT INTO pyemployee8 VALUES (10, 'deepika');

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pyemployee8;

-- +-----+---------+
-- | eid | name    |
-- +-----+---------+
-- |   1 | katappa |
-- |  10 | deepika |
-- +-----+---------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO pyemployee8 (name) VALUES ('kuldeep');

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pyemployee8;

-- +-----+---------+
-- | eid | name    |
-- +-----+---------+
-- |   1 | katappa |
-- |  10 | deepika |
-- |  11 | kuldeep |
-- +-----+---------+
-- 3 rows in set (0.00 sec)










mysql> CREATE TABLE pystudent5( sid INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), age INT);

-- Query OK, 0 rows affected (0.02 sec)



mysql> INSERT INTO pystudent5 (name, age) VALUES ('abc', 30);

-- Query OK, 1 row affected (0.01 sec)



mysql> INSERT INTO pystudent5 VALUES (NULL, 'xyz', 30);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pystudent5;

-- +-----+------+------+
-- | sid | name | age  |
-- +-----+------+------+
-- |   1 | abc  |   30 |
-- |   2 | xyz  |   30 |
-- +-----+------+------+
-- 2 rows in set (0.00 sec)










mysql> CREATE TABLE pystudent6( sid INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(20), age INT);

-- Query OK, 0 rows affected (0.02 sec)



mysql> INSERT INTO pystudent6 (name, age ) VALUES( 'ABCD', 40);

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM pystudent6;

-- +-----+------+------+
-- | sid | name | age  |
-- +-----+------+------+
-- |   1 | ABCD |   40 |
-- +-----+------+------+
-- 1 row in set (0.00 sec)



mysql> INSERT INTO pystudent6 VALUES (0, 'xyz', 30);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pystudent6;

-- +-----+------+------+
-- | sid | name | age  |
-- +-----+------+------+
-- |   1 | ABCD |   40 |
-- |   2 | xyz  |   30 |
-- +-----+------+------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO pystudent6 VALUES( 0, "umesh", 20);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM pystudent6;

-- +-----+-------+------+
-- | sid | name  | age  |
-- +-----+-------+------+
-- |   1 | ABCD  |   40 |
-- |   2 | xyz   |   30 |
-- |   3 | umesh |   20 |
-- +-----+-------+------+
-- 3 rows in set (0.00 sec)










mysql> SELECT @@SQL_MODE;

-- +-----------------------------------------------------------------------------------------------------------------------+
-- | @@SQL_MODE                                                                                                            |
-- +-----------------------------------------------------------------------------------------------------------------------+
-- | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION |
-- +-----------------------------------------------------------------------------------------------------------------------+
-- 1 row in set (0.00 sec)
