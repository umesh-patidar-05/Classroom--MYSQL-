-- 12/August/2026




mysql> SELECT * FROM pyemployee;

-- +-------+----------+-----------+
-- | empid | name     | salary    |
-- +-------+----------+-----------+
-- |   101 | deepika  | 500000.00 |
-- |   102 | rashmika |  70000.00 |
-- +-------+----------+-----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO pyemployee (empid, name, salary) VALUES(102, "virat", 80000);

-- ERROR 1062 (23000): Duplicate entry '102' for key 'pyemployee.PRIMARY'



mysql> INSERT IGNORE INTO pyemployee (empid, name, salary) VALUES(102, "virat", 80000);

-- Query OK, 0 rows affected, 1 warning (0.00 sec)



mysql> SELECT * FROM pyemployee;

-- +-------+----------+-----------+
-- | empid | name     | salary    |
-- +-------+----------+-----------+
-- |   101 | deepika  | 500000.00 |
-- |   102 | rashmika |  70000.00 |
-- +-------+----------+-----------+
-- 2 rows in set (0.00 sec)














mysql> SELECT * FROM pyemployee;

-- +-------+----------+-----------+
-- | empid | name     | salary    |
-- +-------+----------+-----------+
-- |   101 | deepika  | 500000.00 |
-- |   102 | rashmika |  70000.00 |
-- +-------+----------+-----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO pyemployee VALUES(101, 'dipu', 70000) ON DUPLICATE KEY UPDATE name = "bahubali", salary = 87000;

-- Query OK, 2 rows affected (0.01 sec)



mysql> SELECT * FROM pyemployee;

-- +-------+----------+----------+
-- | empid | name     | salary   |
-- +-------+----------+----------+
-- |   101 | bahubali | 87000.00 |
-- |   102 | rashmika | 70000.00 |
-- +-------+----------+----------+
-- 2 rows in set (0.00 sec)



mysql> INSERT INTO pyemployee VALUES(103, 'dipu', 70000) ON DUPLICATE KEY UPDATE name = "bahubali", salary = 8700;

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pyemployee;

-- +-------+----------+----------+
-- | empid | name     | salary   |
-- +-------+----------+----------+
-- |   101 | bahubali | 87000.00 |
-- |   102 | rashmika | 70000.00 |
-- |   103 | dipu     | 70000.00 |
-- +-------+----------+----------+
-- 3 rows in set (0.00 sec)










mysql> DESC pyemployee7;

-- +-------+-------------+------+-----+---------+----------------+
-- | Field | Type        | Null | Key | Default | Extra          |
-- +-------+-------------+------+-----+---------+----------------+
-- | eid   | int         | NO   | PRI | NULL    | auto_increment |
-- | name  | varchar(20) | YES  |     | NULL    |                |
-- +-------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)




mysql> SHOW CREATE TABLE pyemployee7;

-- +-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | Table       | Create Table                                                                                                                                                                                                      |
-- +-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- | pyemployee7 | CREATE TABLE `pyemployee7` (
--   `eid` int NOT NULL AUTO_INCREMENT,
--   `name` varchar(20) DEFAULT NULL,
--   PRIMARY KEY (`eid`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
-- +-------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
-- 1 row in set (0.01 sec)











mysql> SELECT * FROM pyemployee;

-- +-------+----------+----------+
-- | empid | name     | salary   |
-- +-------+----------+----------+
-- |   101 | bahubali | 87000.00 |
-- |   102 | rashmika | 70000.00 |
-- |   103 | dipu     | 70000.00 |
-- +-------+----------+----------+
-- 3 rows in set (0.00 sec)



mysql> TRUNCATE TABLE pyemployee;

-- Query OK, 0 rows affected (0.10 sec)



mysql> SELECT * FROM pyemployee;

-- Empty set (0.00 sec)



mysql> DESC pyemployee;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | empid  | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(22)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)










mysql> CREATE TABLE pytruncate(id INT PRIMARY KEY AUTO_INCREMENT, names VARCHAR(20));

-- Query OK, 0 rows affected (0.10 sec)



mysql> DESC pytruncate;

-- +-------+-------------+------+-----+---------+----------------+
-- | Field | Type        | Null | Key | Default | Extra          |
-- +-------+-------------+------+-----+---------+----------------+
-- | id    | int         | NO   | PRI | NULL    | auto_increment |
-- | names | varchar(20) | YES  |     | NULL    |                |
-- +-------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)





mysql> INSERT INTO pytruncate(names) VALUES('deepika'), ('rashmika'), ('vaishnavi') ;

-- Query OK, 3 rows affected (0.00 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> CREATE TABLE pytruncate(id INT PRIMARY KEY AUTO_INCREMENT, names VARCHAR(20))



mysql> SELECT * FROM pytruncate;
+----+-----------+
| id | names     |
+----+-----------+
|  1 | deepika   |
|  2 | rashmika  |
|  3 | vaishnavi |
+----+-----------+
3 rows in set (0.00 sec)


  

mysql> TRUNCATE pytruncate;

-- Query OK, 0 rows affected (0.03 sec)




mysql> SELECT * FROM pytruncate;

-- Empty set (0.00 sec)


mysql> INSERT pytruncate (names) VALUES ('deepika');

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pytruncate;

-- +----+---------+
-- | id | names   |
-- +----+---------+
-- |  1 | deepika |
-- +----+---------+
-- 1 row in set (0.00 sec)