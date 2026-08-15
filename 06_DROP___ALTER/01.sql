-- 14/August/2026





-- DROP TABLE

mysql> USE batch18;

-- Database changed



mysql> SELECT * FROM student;

-- +------+---------+------+
-- | id   | name    | age  |
-- +------+---------+------+
-- |  101 | deepika |   30 |
-- +------+---------+------+
-- 1 row in set (0.04 sec)



mysql> DROP TABLE student;

-- Query OK, 0 rows affected (0.15 sec)



mysql> DESC student;

-- ERROR 1146 (42S02): Table 'batch18.student' doesn't exist












-- DROP WITH MULTIPLE TABLES


mysql> DROP TABLE pyemployee1, pyemployee3, pyemployee5;

-- Query OK, 0 rows affected (0.05 sec)



mysql> DESC employee1;

-- ERROR 1146 (42S02): Table 'batch18.employee1' doesn't exist



mysql> DESC employee3;

-- ERROR 1146 (42S02): Table 'batch18.employee3' doesn't exist



mysql> DESC employee5;

-- ERROR 1146 (42S02): Table 'batch18.employee5' doesn't exist



mysql> DROP TABLE pyemployee1;

-- ERROR 1051 (42S02): Unknown table 'batch18.pyemployee1'



mysql> DROP TABLE IF EXISTS pyemployee1;

-- Query OK, 0 rows affected, 1 warning (0.00 sec)



mysql> SELECT * FROM pyemployee1;

-- ERROR 1146 (42S02): Table 'batch18.pyemployee1' doesn't exist













-- ALTER COMMAND



mysql> CREATE TABLE azadi(student_id INT, name VARCHAR(20), age INT, city VARCHAR(20));

-- Query OK, 0 rows affected (0.06 sec)



mysql> DESC azadi;

-- +------------+-------------+------+-----+---------+-------+
-- | Field      | Type        | Null | Key | Default | Extra |
-- +------------+-------------+------+-----+---------+-------+
-- | student_id | int         | YES  |     | NULL    |       |
-- | name       | varchar(20) | YES  |     | NULL    |       |
-- | age        | int         | YES  |     | NULL    |       |
-- | city       | varchar(20) | YES  |     | NULL    |       |
-- +------------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.02 sec)



mysql> INSERT INTO azadi VALUES (101, 'deepika', 30, 'chennai'), (102, 'rashmika', 27, 'indore'), (103, 'virat', 30, 'banglore');

-- Query OK, 3 rows affected (0.02 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> SELECT * FROM azadi;

-- +------------+----------+------+----------+
-- | student_id | name     | age  | city     |
-- +------------+----------+------+----------+
-- |        101 | deepika  |   30 | chennai  |
-- |        102 | rashmika |   27 | indore   |
-- |        103 | virat    |   30 | banglore |
-- +------------+----------+------+----------+
-- 3 rows in set (0.00 sec)



mysql> DESC azadi;

-- +------------+-------------+------+-----+---------+-------+
-- | Field      | Type        | Null | Key | Default | Extra |
-- +------------+-------------+------+-----+---------+-------+
-- | student_id | int         | YES  |     | NULL    |       |
-- | name       | varchar(20) | YES  |     | NULL    |       |
-- | age        | int         | YES  |     | NULL    |       |
-- | city       | varchar(20) | YES  |     | NULL    |       |
-- +------------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)










--  ADD A COLUMN


mysql> ALTER TABLE azadi ADD COLUMN email VARCHAR(20);

-- Query OK, 0 rows affected (0.03 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+-------------+------+-----+---------+-------+
-- | Field      | Type        | Null | Key | Default | Extra |
-- +------------+-------------+------+-----+---------+-------+
-- | student_id | int         | YES  |     | NULL    |       |
-- | name       | varchar(20) | YES  |     | NULL    |       |
-- | age        | int         | YES  |     | NULL    |       |
-- | city       | varchar(20) | YES  |     | NULL    |       |
-- | email      | varchar(20) | YES  |     | NULL    |       |
-- +------------+-------------+------+-----+---------+-------+
-- 5 rows in set (0.00 sec)



mysql> SELECT * FROM azadi;

-- +------------+----------+------+----------+-------+
-- | student_id | name     | age  | city     | email |
-- +------------+----------+------+----------+-------+
-- |        101 | deepika  |   30 | chennai  | NULL  |
-- |        102 | rashmika |   27 | indore   | NULL  |
-- |        103 | virat    |   30 | banglore | NULL  |
-- +------------+----------+------+----------+-------+
-- 3 rows in set (0.00 sec)









-- ADD MULTIPLE COLUMNS


mysql> ALTER TABLE azadi ADD COLUMN mobile VARCHAR(20), ADD COLUMN course VARCHAR(20), ADD COLUMN salary DECIMAL(10,2);

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | mobile     | varchar(20)   | YES  |     | NULL    |       |
-- | course     | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 8 rows in set (0.00 sec)












-- ADD COLUMN AT A SPECIFIC POSITION


mysql> ALTER TABLE azadi ADD COLUMN gender VARCHAR(10) FIRST;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | mobile     | varchar(20)   | YES  |     | NULL    |       |
-- | course     | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 9 rows in set (0.00 sec)













-- ADD COLUMN AT A SPECIFIC POSITION USING AFTER


mysql> ALTER TABLE azadi ADD COLUMN dob DATE AFTER name;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | dob        | date          | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | mobile     | varchar(20)   | YES  |     | NULL    |       |
-- | course     | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 10 rows in set (0.00 sec)



mysql> SELECT name, city FROM azadi;

-- +----------+----------+
-- | name     | city     |
-- +----------+----------+
-- | deepika  | chennai  |
-- | rashmika | indore   |
-- | virat    | banglore |
-- +----------+----------+
-- 3 rows in set (0.00 sec)













-- DROP COLUMN


mysql> ALTER TABLE azadi DROP COLUMN dob;

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | mobile     | varchar(20)   | YES  |     | NULL    |       |
-- | course     | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 9 rows in set (0.00 sec)















-- MULTIPLE DROP


mysql> ALTER TABLE azadi DROP COLUMN mobile, DROP COLUMN course;

-- Query OK, 0 rows affected (0.21 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | int           | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.05 sec)















-- MODIFY COLUMN


mysql> ALTER TABLE azadi MODIFY COLUMN age SMALLINT;

-- Query OK, 3 rows affected (0.08 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(20)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> ALTER TABLE azadi MODIFY COLUMN email VARCHAR(50);

-- Query OK, 0 rows affected (0.02 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(20)   | YES  |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> ALTER TABLE azadi MODIFY COLUMN name VARCHAR(70);

-- Query OK, 3 rows affected (0.06 sec)
-- Records: 3  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(70)   | YES  |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)














-- MULTIPLE MODIFY COLUMN


mysql> DESC pyemployee5;

-- ERROR 1146 (42S02): Table 'batch18.pyemployee5' does not exist



mysql> DESC pyemployee7;

-- +-------+-------------+------+-----+---------+----------------+
-- | Field | Type        | Null | Key | Default | Extra          |
-- +-------+-------------+------+-----+---------+----------------+
-- | eid   | int         | NO   | PRI | NULL    | auto_increment |
-- | name  | varchar(20) | YES  |     | NULL    |                |
-- +-------+-------------+------+-----+---------+----------------+
-- 2 rows in set (0.00 sec)



mysql> ALTER TABLE pyemployee7 MODIFY COLUMN eid decimal(10,2), MODIFY COLUMN name VARCHAR(50);

-- Query OK, 1 row affected (0.06 sec)
-- Records: 1  Duplicates: 0  Warnings: 0



mysql> DESC pyemployee7;

-- +-------+---------------+------+-----+---------+-------+
-- | Field | Type          | Null | Key | Default | Extra |
-- +-------+---------------+------+-----+---------+-------+
-- | eid   | decimal(10,2) | NO   | PRI | NULL    |       |
-- | name  | varchar(50)   | YES  |     | NULL    |       |
-- +-------+---------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)

















-- MODIFY CONSTRAINTS





mysql> ALTER TABLE azadi MODIFY COLUMN name VARCHAR(70) NOT NULL;

-- Query OK, 0 rows affected (0.10 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(70)   | NO   |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM azadi;

-- +--------+------------+----------+------+----------+-------+--------+
-- | gender | student_id | name     | age  | city     | email | salary |
-- +--------+------------+----------+------+----------+-------+--------+
-- | NULL   |        101 | deepika  |   30 | chennai  | NULL  |   NULL |
-- | NULL   |        102 | rashmika |   27 | indore   | NULL  |   NULL |
-- | NULL   |        103 | virat    |   30 | banglore | NULL  |   NULL |
-- +--------+------------+----------+------+----------+-------+--------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO azadi(age) VALUES(12);

-- ERROR 1364 (HY000): Field 'name' does not have a default value



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(70)   | NO   |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | NULL    |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> ALTER TABLE azadi MODIFY COLUMN salary DECIMAL(10,2) DEFAULT 1000;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | name       | varchar(70)   | NO   |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | 1000.00 |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)



mysql> SELECT * FROM azadi;

-- +--------+------------+----------+------+----------+-------+--------+
-- | gender | student_id | name     | age  | city     | email | salary |
-- +--------+------------+----------+------+----------+-------+--------+
-- | NULL   |        101 | deepika  |   30 | chennai  | NULL  |   NULL |
-- | NULL   |        102 | rashmika |   27 | indore   | NULL  |   NULL |
-- | NULL   |        103 | virat    |   30 | banglore | NULL  |   NULL |
-- +--------+------------+----------+------+----------+-------+--------+
-- 3 rows in set (0.00 sec)



mysql> INSERT INTO azadi(name) VALUES("bhagat singh");

-- Query OK, 1 row affected (0.01 sec)



mysql> SELECT * FROM azadi;

-- +--------+------------+--------------+------+----------+-------+---------+
-- | gender | student_id | name         | age  | city     | email | salary  |
-- +--------+------------+--------------+------+----------+-------+---------+
-- | NULL   |        101 | deepika      |   30 | chennai  | NULL  |    NULL |
-- | NULL   |        102 | rashmika     |   27 | indore   | NULL  |    NULL |
-- | NULL   |        103 | virat        |   30 | banglore | NULL  |    NULL |
-- | NULL   |       NULL | bhagat singh | NULL | NULL     | NULL  | 1000.00 |
-- +--------+------------+--------------+------+----------+-------+---------+
-- 4 rows in set (0.00 sec)
















-- CHANGE COLUMN



mysql> ALTER TABLE azadi CHANGE COLUMN name fullname VARCHAR(30);

-- Query OK, 4 rows affected (0.04 sec)
-- Records: 4  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +------------+---------------+------+-----+---------+-------+
-- | Field      | Type          | Null | Key | Default | Extra |
-- +------------+---------------+------+-----+---------+-------+
-- | gender     | varchar(10)   | YES  |     | NULL    |       |
-- | student_id | int           | YES  |     | NULL    |       |
-- | fullname   | varchar(30)   | YES  |     | NULL    |       |
-- | age        | smallint      | YES  |     | NULL    |       |
-- | city       | varchar(20)   | YES  |     | NULL    |       |
-- | email      | varchar(50)   | YES  |     | NULL    |       |
-- | salary     | decimal(10,2) | YES  |     | 1000.00 |       |
-- +------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)












-- RENAME



mysql> ALTER TABLE azadi RENAME COLUMN age TO student_age;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadi;

-- +-------------+---------------+------+-----+---------+-------+
-- | Field       | Type          | Null | Key | Default | Extra |
-- +-------------+---------------+------+-----+---------+-------+
-- | gender      | varchar(10)   | YES  |     | NULL    |       |
-- | student_id  | int           | YES  |     | NULL    |       |
-- | fullname    | varchar(30)   | YES  |     | NULL    |       |
-- | student_age | smallint      | YES  |     | NULL    |       |
-- | city        | varchar(20)   | YES  |     | NULL    |       |
-- | email       | varchar(50)   | YES  |     | NULL    |       |
-- | salary      | decimal(10,2) | YES  |     | 1000.00 |       |
-- +-------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)















-- RENAME TABLE 




mysql> ALTER TABLE azadi RENAME TO hamariazadi;

-- Query OK, 0 rows affected (0.01 sec)



mysql> SELECT * FROM humariazadi;

-- ERROR 1146 (42S02): Table 'batch18.humariazadi' doesn't exist



mysql> SELECT * FROM hamariazadi;

-- +--------+------------+--------------+-------------+----------+-------+---------+
-- | gender | student_id | fullname     | student_age | city     | email | salary  |
-- +--------+------------+--------------+-------------+----------+-------+---------+
-- | NULL   |        101 | deepika      |          30 | chennai  | NULL  |    NULL |
-- | NULL   |        102 | rashmika     |          27 | indore   | NULL  |    NULL |
-- | NULL   |        103 | virat        |          30 | banglore | NULL  |    NULL |
-- | NULL   |       NULL | bhagat singh |        NULL | NULL     | NULL  | 1000.00 |
-- +--------+------------+--------------+-------------+----------+-------+---------+
-- 4 rows in set (0.00 sec)










mysql> RENAME TABLE hamariazadi TO sabkiazadi;

-- Query OK, 0 rows affected (0.01 sec)



mysql> DESC sabkiazadi;

-- +-------------+---------------+------+-----+---------+-------+
-- | Field       | Type          | Null | Key | Default | Extra |
-- +-------------+---------------+------+-----+---------+-------+
-- | gender      | varchar(10)   | YES  |     | NULL    |       |
-- | student_id  | int           | YES  |     | NULL    |       |
-- | fullname    | varchar(30)   | YES  |     | NULL    |       |
-- | student_age | smallint      | YES  |     | NULL    |       |
-- | city        | varchar(20)   | YES  |     | NULL    |       |
-- | email       | varchar(50)   | YES  |     | NULL    |       |
-- | salary      | decimal(10,2) | YES  |     | 1000.00 |       |
-- +-------------+---------------+------+-----+---------+-------+
-- 7 rows in set (0.00 sec)













-- PRIMARY KEY USING ALTER



mysql> CREATE TABLE azadstudent(id INT, name VARCHAR(20), salary DECIMAL(10,2));

-- Query OK, 0 rows affected (0.02 sec)



mysql> DESC azadstudent;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | YES  |     | NULL    |       |
-- | name   | varchar(20)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



mysql> ALTER TABLE azadstudent ADD PRIMARY KEy(id);

-- Query OK, 0 rows affected (0.04 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadstudent;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(20)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)









-- ADD COMPOSITE PRIMARY KEY



mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



mysql> ALTER TABLE employee ADD PRIMARY KEY(id, name);

-- Query OK, 0 rows affected (0.04 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   | PRI | NULL    |       |
-- | name  | varchar(20) | NO   | PRI | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)









mysql> ALTER TABLE azadstudent DROP PRIMARY KEY;

-- Query OK, 0 rows affected (0.04 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadstudent;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | NO   |     | NULL    |       |
-- | name   | varchar(20)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)










-- ALTER WITH AUTO_INCREMENT



mysql> ALTER TABLE azadstudent DROP PRIMARY KEY;

-- Query OK, 0 rows affected (0.04 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadstudent;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | NO   |     | NULL    |       |
-- | name   | varchar(20)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)







mysql> CREATE TABLE azadstudent1(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), salary DECIMAL(10,2));

-- Query OK, 0 rows affected (0.03 sec)



mysql> DESC azadstudent1;

-- +--------+---------------+------+-----+---------+----------------+
-- | Field  | Type          | Null | Key | Default | Extra          |
-- +--------+---------------+------+-----+---------+----------------+
-- | id     | int           | NO   | PRI | NULL    | auto_increment |
-- | name   | varchar(20)   | YES  |     | NULL    |                |
-- | salary | decimal(10,2) | YES  |     | NULL    |                |
-- +--------+---------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)



mysql> ALTER TABLE azadstudent1 DROP PRIMARY KEY;

-- ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key













mysql> ALTER TABLE azadstudent1 MODIFY id INT;

-- Query OK, 0 rows affected (0.05 sec)
-- Records: 0  Duplicates: 0  Warnings: 0



mysql> DESC azadstudent1;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | id     | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(20)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)






mysql> ALTER TABLE azadstudent MODIFY id INT AUTO_INCREMENT PRIMARY KEY;

-- Query OK, 0 rows affected (0.04 sec)
-- Records: 0  Duplicates: 0  Warnings: 0


mysql> DESC azadstudent;

-- +--------+---------------+------+-----+---------+----------------+
-- | Field  | Type          | Null | Key | Default | Extra          |
-- +--------+---------------+------+-----+---------+----------------+
-- | id     | int           | NO   | PRI | NULL    | auto_increment |
-- | name   | varchar(20)   | YES  |     | NULL    |                |
-- | salary | decimal(10,2) | YES  |     | NULL    |                |
-- +--------+---------------+------+-----+---------+----------------+
-- 3 rows in set (0.00 sec)