-- 17/August/2026







mysql> CREATE TABLE demo1(id TINYINT UNSIGNED);

-- Query OK, 0 rows affected (0.22 sec)



mysql> DESC demo1;

-- +-------+------------------+------+-----+---------+-------+
-- | Field | Type             | Null | Key | Default | Extra |
-- +-------+------------------+------+-----+---------+-------+
-- | id    | tinyint unsigned | YES  |     | NULL    |       |
-- +-------+------------------+------+-----+---------+-------+
-- 1 row in set (0.03 sec)












mysql> CREATE TABLE demo2(id INT, description TEXT);

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC demo2;

-- +-------------+------+------+-----+---------+-------+
-- | Field       | Type | Null | Key | Default | Extra |
-- +-------------+------+------+-----+---------+-------+
-- | id          | int  | YES  |     | NULL    |       |
-- | description | text | YES  |     | NULL    |       |
-- +-------------+------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)












mysql> CREATE TABLE demo3(id INT, status ENUM('active', 'inactive', 'onleave'));

-- Query OK, 0 rows affected (0.03 sec)



mysql> INSERT INTO demo3 VALUES(101, "active");

-- Query OK, 1 row affected (0.02 sec)



mysql> INSERT INTO demo3 VALUES(102, "onleave");

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM demo3;

-- +------+---------+
-- | id   | status  |
-- +------+---------+
-- |  101 | active  |
-- |  102 | onleave |
-- +------+---------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO demo3 VALUES(103, 'yes');

-- ERROR 1265 (01000): Data truncated for column 'status' at row 1
















mysql> CREATE TABLE demo4 (id INT, name VARCHAR(100), status ENUM('leave', 'active'), skills SET('java', 'python', 'mysql'));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC demo4;

-- +--------+------------------------------+------+-----+---------+-------+
-- | Field  | Type                         | Null | Key | Default | Extra |
-- +--------+------------------------------+------+-----+---------+-------+
-- | id     | int                          | YES  |     | NULL    |       |
-- | name   | varchar(100)                 | YES  |     | NULL    |       |
-- | status | enum('leave','active')       | YES  |     | NULL    |       |
-- | skills | set('java','python','mysql') | YES  |     | NULL    |       |
-- +--------+------------------------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql>  INSERT INTO demo4 VALUES(101, 'kuldeep', 'active', 'python,mysql'), (102, 'dhruv', 'leave', 'java,python,mysql');

-- Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0



mysql> DESC demo4;

-- +--------+------------------------------+------+-----+---------+-------+
-- | Field  | Type                         | Null | Key | Default | Extra |
-- +--------+------------------------------+------+-----+---------+-------+
-- | id     | int                          | YES  |     | NULL    |       |
-- | name   | varchar(100)                 | YES  |     | NULL    |       |
-- | status | enum('leave','active')       | YES  |     | NULL    |       |
-- | skills | set('java','python','mysql') | YES  |     | NULL    |       |
-- +--------+------------------------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)



mysql> SELECT * FROM demo4;

-- +------+---------+--------+-------------------+
-- | id   | name    | status | skills            |
-- +------+---------+--------+-------------------+
-- |  101 | kuldeep | active | python,mysql      |
-- |  102 | dhruv   | leave  | java,python,mysql |
-- +------+---------+--------+-------------------+
-- 2 rows in set (0.00 sec)