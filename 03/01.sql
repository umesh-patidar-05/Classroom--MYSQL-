-- 10_August_2026




mysql> USE batch18;

-- Database changed




mysql> CREATE TABLE pystudent(id INT, name VARCHAR(20), age INT, city VARCHAR(30));

-- Query OK, 0 rows affected (0.13 sec)






mysql> DESC pystudent;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- | city  | varchar(30) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.03 sec)





mysql> INSERT INTO pystudent VALUES(101, "umesh", 21, "indore");

-- Query OK, 1 row affected (0.02 sec)




mysql> SELECT * FROM pystudent;

-- +------+-------+------+--------+
-- | id   | name  | age  | city   |
-- +------+-------+------+--------+
-- |  101 | umesh |   21 | indore |
-- +------+-------+------+--------+
-- 1 row in set (0.00 sec)








mysql> INSERT INTO pystudent VALUES (102, "umesh", 20);

-- ERROR 1136 (21S01): Column count doesn't match value count at row 1



mysql> INSERT INTO pystudent VALUES ("umesh" , 102, 22, "india");

-- ERROR 1366 (HY000): Incorrect integer value: 'umesh' for column 'id' at row 1






mysql> INSERT INTO pystudent(id, name, city) VALUES(101, "kushal", "neemuch");

-- Query OK, 1 row affected (0.01 sec)





mysql> SELECT * FROM pystudent;

-- +------+--------+------+---------+
-- | id   | name   | age  | city    |
-- +------+--------+------+---------+
-- |  101 | umesh  |   21 | indore  |
-- |  101 | kushal | NULL | neemuch |
-- +------+--------+------+---------+
-- 2 rows in set (0.00 sec)






mysql> INSERT INTO pystudent( id, name, city) VALUES("kushal1", 103, "neemuchhhh");

-- ERROR 1366 (HY000): Incorrect integer value: 'kushal1' for column 'id' at row 1







mysql> INSERT INTO pystudent(name, id, city) VALUES("kushal1", 103, "neemuchhhh");

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM pystudent;

-- +------+---------+------+------------+
-- | id   | name    | age  | city       |
-- +------+---------+------+------------+
-- |  101 | umesh   |   21 | indore     |
-- |  101 | kushal  | NULL | neemuch    |
-- |  103 | kushal1 | NULL | neemuchhhh |
-- +------+---------+------+------------+
-- 3 rows in set (0.00 sec)





mysql> INSERT INTO pystudent(id, name, age, city) VALUES(104, "anil", 20, "indore"), (105, "thapaji", 21, "indore");

-- Query OK, 2 rows affected (0.01 sec)
-- Records: 2  Duplicates: 0  Warnings: 0






mysql> SELECT * FROM pystudent;

-- +------+---------+------+------------+
-- | id   | name    | age  | city       |
-- +------+---------+------+------------+
-- |  101 | umesh   |   21 | indore     |
-- |  101 | kushal  | NULL | neemuch    |
-- |  103 | kushal1 | NULL | neemuchhhh |
-- |  104 | anil    |   20 | indore     |
-- |  105 | thapaji |   21 | indore     |
-- +------+---------+------+------------+
-- 5 rows in set (0.00 sec)






mysql> INSERT INTO pystudent SET id= 108, name = "kuldeep", age = 22, city = "dewas";

-- Query OK, 1 row affected (0.00 sec)



mysql> SELECT * FROM pystudent;

-- +------+---------+------+------------+
-- | id   | name    | age  | city       |
-- +------+---------+------+------------+
-- |  101 | umesh   |   21 | indore     |
-- |  101 | kushal  | NULL | neemuch    |
-- |  103 | kushal1 | NULL | neemuchhhh |
-- |  104 | anil    |   20 | indore     |
-- |  105 | thapaji |   21 | indore     |
-- |  108 | kuldeep |   22 | dewas      |
-- +------+---------+------+------------+
-- 6 rows in set (0.00 sec)






mysql> CREATE TABLE pybackup AS SELECT * FROM pystudent WHERE 1=0;

-- Query OK, 0 rows affected (0.20 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> DESC pybackup;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | age   | int         | YES  |     | NULL    |       |
-- | city  | varchar(30) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.04 sec)




mysql> INSERT INTO pybackup SELECT * FROM pystudent;

-- Query OK, 6 rows affected (0.00 sec)
-- Records: 6  Duplicates: 0  Warnings: 0





mysql> INSERT INTO pybackup(id, name) SELECT id, name FROM pystudent;

-- Query OK, 6 rows affected (0.00 sec)
-- Records: 6  Duplicates: 0  Warnings: 0






mysql> SELECT * FROM pybackup;

-- +------+---------+------+------------+
-- | id   | name    | age  | city       |
-- +------+---------+------+------------+
-- |  101 | umesh   |   21 | indore     |
-- |  101 | kushal  | NULL | neemuch    |
-- |  103 | kushal1 | NULL | neemuchhhh |
-- |  104 | anil    |   20 | indore     |
-- |  105 | thapaji |   21 | indore     |
-- |  108 | kuldeep |   22 | dewas      |
-- |  101 | umesh   | NULL | NULL       |
-- |  101 | kushal  | NULL | NULL       |
-- |  103 | kushal1 | NULL | NULL       |
-- |  104 | anil    | NULL | NULL       |
-- |  105 | thapaji | NULL | NULL       |
-- |  108 | kuldeep | NULL | NULL       |
-- +------+---------+------+------------+
-- 12 rows in set (0.00 sec)






mysql> CREATE TABLE pyemployee( empid INT PRIMARY KEY , name VARCHAR(22), salary DECIMAL(10,2));

-- Query OK, 0 rows affected (0.03 sec)





mysql> DESC pyemployee;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | empid  | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(22)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)



    

mysql> CREATE TABLE pyemployee1( empid INT, name VARCHAR(22), salary DECIMAL(10,2), CONSTRAINT pk_emplouee PRIMARY KEY(empid));

-- Query OK, 0 rows affected (0.03 sec)    






mysql> DESC pyemployee1;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | empid  | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(22)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)








mysql> CREATE TABLE pyemployee3 (empid INT, name VARCHAR(22), salary DECIMAL (10,2));

-- Query OK, 0 rows affected (0.03 sec)





mysql> ALTER TABLE pyemployee3 ADD PRIMARY KEY(empid);

-- Query OK, 0 rows affected (0.08 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> DESC pyemployee3;

-- +--------+---------------+------+-----+---------+-------+
-- | Field  | Type          | Null | Key | Default | Extra |
-- +--------+---------------+------+-----+---------+-------+
-- | empid  | int           | NO   | PRI | NULL    |       |
-- | name   | varchar(22)   | YES  |     | NULL    |       |
-- | salary | decimal(10,2) | YES  |     | NULL    |       |
-- +--------+---------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)