-- 18/august/2026




mysql> CREATE TABLE employeedt (id INT, name VARCHAR(20), birthdate DATE);

-- Query OK, 0 rows affected (0.15 sec)



mysql> DESC employeedt;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | id        | int         | YES  |     | NULL    |       |
-- | name      | varchar(20) | YES  |     | NULL    |       |
-- | birthdate | date        | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.03 sec)



mysql> INSERT INTO employeedt VALUES( 101, 'deepika', '1978-08-03');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM employeedt;

-- +------+---------+------------+
-- | id   | name    | birthdate  |
-- +------+---------+------------+
-- |  101 | deepika | 1978-08-03 |
-- +------+---------+------------+
-- 1 row in set (0.00 sec)














mysql> CREATE TABLE classschedule( classid INT, calssname VARCHAR(30), starttime TIME);

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC classschedule;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | classid   | int         | YES  |     | NULL    |       |
-- | calssname | varchar(30) | YES  |     | NULL    |       |
-- | starttime | time        | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)



mysql> INSERT INTO classschedule VALUES(5001, 'java', '09:30:49');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM classschedule;

-- +---------+-----------+-----------+
-- | classid | calssname | starttime |
-- +---------+-----------+-----------+
-- |    5001 | java      | 09:30:49  |
-- +---------+-----------+-----------+
-- 1 row in set (0.00 sec)















mysql> CREATE TABLE appointment (aid INT, cusname VARCHAR(20), aptime DATETIME);

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC appointment;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | aid     | int         | YES  |     | NULL    |       |
-- | cusname | varchar(20) | YES  |     | NULL    |       |
-- | aptime  | datetime    | YES  |     | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO appointment VALUES(111, 'rashmika', '2026-08-28 10:20:33');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM appointment;

-- +------+----------+---------------------+
-- | aid  | cusname  | aptime              |
-- +------+----------+---------------------+
-- |  111 | rashmika | 2026-08-28 10:20:33 |
-- +------+----------+---------------------+
-- 1 row in set (0.00 sec)
















mysql> CREATE TABLE employeedt1( id INT, name VARCHAR(20), createdat TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC employeedt1;

-- +-----------+-------------+------+-----+-------------------+-------------------+
-- | Field     | Type        | Null | Key | Default           | Extra             |
-- +-----------+-------------+------+-----+-------------------+-------------------+
-- | id        | int         | YES  |     | NULL              |                   |
-- | name      | varchar(20) | YES  |     | NULL              |                   |
-- | createdat | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +-----------+-------------+------+-----+-------------------+-------------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employeedt1(id, name) VALUES(1011, 'sneha');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM employeedt1;

-- +------+-------+---------------------+
-- | id   | name  | createdat           |
-- +------+-------+---------------------+
-- | 1011 | sneha | 2026-08-18 22:42:40 |
-- +------+-------+---------------------+
-- 1 row in set (0.00 sec)














mysql> CREATE TABLE employeedt3(id INT, name VARCHAR(20), created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, updatedat TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC employeedt3;

-- +------------+-------------+------+-----+-------------------+-----------------------------------------------+
-- | Field      | Type        | Null | Key | Default           | Extra                                         |
-- +------------+-------------+------+-----+-------------------+-----------------------------------------------+
-- | id         | int         | YES  |     | NULL              |                                               |
-- | name       | varchar(20) | YES  |     | NULL              |                                               |
-- | created_at | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED                             |
-- | updatedat  | timestamp   | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED on update CURRENT_TIMESTAMP |
-- +------------+-------------+------+-----+-------------------+-----------------------------------------------+
-- 4 rows in set (0.00 sec)



mysql> INSERT INTO employeedt3(id,name) VALUES(101, 'deepika');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM employeedt3;

-- +------+---------+---------------------+---------------------+
-- | id   | name    | created_at          | updatedat           |
-- +------+---------+---------------------+---------------------+
-- |  101 | deepika | 2026-08-18 22:50:15 | 2026-08-18 22:50:15 |
-- +------+---------+---------------------+---------------------+
-- 1 row in set (0.00 sec)



mysql> UPDATE employeedt3 SET name='deepika padukone' WHERE id=101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM employeedt3;

-- +------+------------------+---------------------+---------------------+
-- | id   | name             | created_at          | updatedat           |
-- +------+------------------+---------------------+---------------------+
-- |  101 | deepika padukone | 2026-08-18 22:50:15 | 2026-08-18 22:53:19 |
-- +------+------------------+---------------------+---------------------+
-- 1 row in set (0.00 sec)












mysql> SELECT CURRENT_TIMESTAMP;

-- +---------------------+
-- | CURRENT_TIMESTAMP   |
-- +---------------------+
-- | 2026-08-18 22:56:00 |
-- +---------------------+
-- 1 row in set (0.00 sec)















mysql> CREATE TABLE vehicle1( vid INT, model VARCHAR(20), mefyear YEAR);

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC vehicle1;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | vid     | int         | YES  |     | NULL    |       |
-- | model   | varchar(20) | YES  |     | NULL    |       |
-- | mefyear | year        | YES  |     | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO vehicle1 VALUES(101,'2021', '2022');

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM vehicle1;

-- +------+-------+---------+
-- | vid  | model | mefyear |
-- +------+-------+---------+
-- |  101 | 2021  |    2022 |
-- +------+-------+---------+
-- 1 row in set (0.00 sec)














mysql> CREATE TABLE employeedt4( id INT, name VARCHAR(20), is_active BOOLEAN);

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC employeedt4;

-- +-----------+-------------+------+-----+---------+-------+
-- | Field     | Type        | Null | Key | Default | Extra |
-- +-----------+-------------+------+-----+---------+-------+
-- | id        | int         | YES  |     | NULL    |       |
-- | name      | varchar(20) | YES  |     | NULL    |       |
-- | is_active | tinyint(1)  | YES  |     | NULL    |       |
-- +-----------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)



mysql> INSERT INTO employeedt4 VALUES(101, 'deepika', TRUE);

-- Query OK, 1 row affected (0.00 sec)



mysql> INSERT INTO employeedt4 VALUES(102, 'katappa', FALSE);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM employeedt4;

-- +------+---------+-----------+
-- | id   | name    | is_active |
-- +------+---------+-----------+
-- |  101 | deepika |         1 |
-- |  102 | katappa |         0 |
-- +------+---------+-----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO employeedt4 VALUES( 103, 'kuldeep', 1);

-- Query OK, 1 row affected (0.00 sec)



mysql> INSERT INTO employeedt4 VALUES( 104, 'cherry', 15);

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM employeedt4;

-- +------+---------+-----------+
-- | id   | name    | is_active |
-- +------+---------+-----------+
-- |  101 | deepika |         1 |
-- |  102 | katappa |         0 |
-- |  103 | kuldeep |         1 |
-- |  104 | cherry  |        15 |
-- +------+---------+-----------+
-- 4 rows in set (0.00 sec)
