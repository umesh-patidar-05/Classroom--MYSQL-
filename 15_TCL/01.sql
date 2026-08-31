-- 31/august/2026




mysql> CREATE TABLE orders (orderid INT PRIMARY KEY, name VARCHAR(20), pname VARCHAR(20), amount DECIMAL(10,2), orderstatus VARCHAR(20));

-- Query OK, 0 rows affected (0.78 sec)



mysql> DESC orders;

-- +-------------+---------------+------+-----+---------+-------+
-- | Field       | Type          | Null | Key | Default | Extra |
-- +-------------+---------------+------+-----+---------+-------+
-- | orderid     | int           | NO   | PRI | NULL    |       |
-- | name        | varchar(20)   | YES  |     | NULL    |       |
-- | pname       | varchar(20)   | YES  |     | NULL    |       |
-- | amount      | decimal(10,2) | YES  |     | NULL    |       |
-- | orderstatus | varchar(20)   | YES  |     | NULL    |       |
-- +-------------+---------------+------+-----+---------+-------+
-- 5 rows in set (0.00 sec)










mysql> INSERT INTO orders VALUES(101, 'rahul', 'laptop', 50000, 'pending'), (102, 'amit', 'mobile', 30000, 'pending');

-- Query OK, 2 rows affected (0.06 sec)
-- Records: 2  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50000.00 | pending     |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)










mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50000.00 | pending     |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET orderstatus = 'confirmed' WHERE orderid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50000.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> SAVEPOINT orderconfirmed;

-- Query OK, 0 rows affected (0.00 sec)



mysql> UPDATE orders SET amount = amount - 5000 WHERE orderid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 45000.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK TO SAVEPOINT orderconfirmed;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50000.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET amount = amount + 500 WHERE orderid = 101;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> COMMIT;

-- Query OK, 0 rows affected (0.06 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)










mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> START TRANSACTION;

-- Query OK, 0 rows affected (0.00 sec)



mysql> UPDATE orders SET orderstatus = 'cnfirmed' WHERE orderid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | cnfirmed    |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> SAVEPOINT orderconfirmed;

-- Query OK, 0 rows affected (0.00 sec)



mysql> UPDATE orders SET amount = amount - 5000 WHERE orderid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> RELEASE SAVEPOINT orderconfirmed;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 25000.00 | cnfirmed    |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.04 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK TO SAVEPOINT orderconfirmed;

-- ERROR 1305 (42000): SAVEPOINT orderconfirmed does not exist



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)










mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 30000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET amount = amount + 10000 WHERE orderid = 102;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 40000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 40000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)










mysql> SELECT @@autocommit;

-- +--------------+
-- | @@autocommit |
-- +--------------+
-- |            1 |
-- +--------------+
-- 1 row in set (0.00 sec)



mysql> SHOW VARIABLES LIKE 'autocommit';

-- +---------------+-------+
-- | Variable_name | Value |
-- +---------------+-------+
-- | autocommit    | ON    |
-- +---------------+-------+
-- 1 row in set (0.05 sec)










mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 40000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET amount = amount + 10000 WHERE orderid = 102;

-- Query OK, 1 row affected (0.07 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 50000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 50000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)










mysql> SET AUTOCOMMIT = 0;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT @@autocommit;

-- +--------------+
-- | @@autocommit |
-- +--------------+
-- |            0 |
-- +--------------+
-- 1 row in set (0.00 sec)



mysql> SHOW VARIABLES LIKE 'autocommit';

-- +---------------+-------+
-- | Variable_name | Value |
-- +---------------+-------+
-- | autocommit    | OFF   |
-- +---------------+-------+
-- 1 row in set (0.00 sec)










mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 50000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET amount = amount + 10000 WHERE orderid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 60000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.05 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 50000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> UPDATE orders SET amount = amount + 10000 WHERE orderid = 102;

-- Query OK, 1 row affected (0.00 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+
-- | orderid | name  | pname  | amount   | orderstatus |
-- +---------+-------+--------+----------+-------------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   |
-- |     102 | amit  | mobile | 60000.00 | pending     |
-- +---------+-------+--------+----------+-------------+
-- 2 rows in set (0.00 sec)



mysql> ALTER TABLE orders ADD COLUMN (address VARCHAR(20));

-- Query OK, 0 rows affected (0.40 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+---------+
-- | orderid | name  | pname  | amount   | orderstatus | address |
-- +---------+-------+--------+----------+-------------+---------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   | NULL    |
-- |     102 | amit  | mobile | 60000.00 | pending     | NULL    |
-- +---------+-------+--------+----------+-------------+---------+
-- 2 rows in set (0.00 sec)



mysql> ROLLBACK;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SELECT * FROM orders;

-- +---------+-------+--------+----------+-------------+---------+
-- | orderid | name  | pname  | amount   | orderstatus | address |
-- +---------+-------+--------+----------+-------------+---------+
-- |     101 | rahul | laptop | 50500.00 | confirmed   | NULL    |
-- |     102 | amit  | mobile | 60000.00 | pending     | NULL    |
-- +---------+-------+--------+----------+-------------+---------+
-- 2 rows in set (0.00 sec)










mysql> SET AUTOCOMMIT = 1;

-- Query OK, 0 rows affected (0.00 sec)



mysql> SHOW VARIABLES LIKE 'AUTOCOMMIT';

-- +---------------+-------+
-- | Variable_name | Value |
-- +---------------+-------+
-- | autocommit    | ON    |
-- +---------------+-------+
-- 1 row in set (0.00 sec)