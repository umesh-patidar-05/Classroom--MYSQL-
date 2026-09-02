-- 02/september/2026




mysql> CREATE TABLE employee( id INT PRIMARY KEY, name VARCHAR(20), age INT, status VARCHAR(20) DEFAULT 'active');

-- Query OK, 0 rows affected (0.35 sec)




mysql> DESC employee;

-- +--------+-------------+------+-----+---------+-------+
-- | Field  | Type        | Null | Key | Default | Extra |
-- +--------+-------------+------+-----+---------+-------+
-- | id     | int         | NO   | PRI | NULL    |       |
-- | name   | varchar(20) | YES  |     | NULL    |       |
-- | age    | int         | YES  |     | NULL    |       |
-- | status | varchar(20) | YES  |     | active  |       |
-- +--------+-------------+------+-----+---------+-------+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO employee(id, name) VALUES(101, 'deepika');

-- Query OK, 1 row affected (0.06 sec)




mysql> SELECT * FROM employee;

-- +-----+---------+------+--------+
-- | id  | name    | age  | status |
-- +-----+---------+------+--------+
-- | 101 | deepika | NULL | active |
-- +-----+---------+------+--------+
-- 1 row in set (0.00 sec)




mysql> CREATE TABLE employee( id INT, name VARCHAR(20), createdat DATETIME DEFAULT current_timestamp);

-- Query OK, 0 rows affected (0.34 sec)




mysql> DESC employee;

-- +-----------+-------------+------+-----+-------------------+-------------------+
-- | Field     | Type        | Null | Key | Default           | Extra             |
-- +-----------+-------------+------+-----+-------------------+-------------------+
-- | id        | int         | YES  |     | NULL              |                   |
-- | name      | varchar(20) | YES  |     | NULL              |                   |
-- | createdat | datetime    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
-- +-----------+-------------+------+-----+-------------------+-------------------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employee(id, name) VALUES(101, 'deepika');

-- Query OK, 1 row affected (0.06 sec)




mysql> SELECT * FROM employee;

-- +------+---------+---------------------+
-- | id   | name    | createdat           |
-- +------+---------+---------------------+
-- |  101 | deepika | 2026-09-02 09:54:35 |
-- +------+---------+---------------------+
-- 1 row in set (0.00 sec)




mysql> CREATE TABLE employee( id INT NOT NULL DEFAULT 1, name VARCHAR(20));

-- Query OK, 0 rows affected (0.78 sec)




mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   |     | 1       |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee(name) VALUES( 'deepika'),('rashmika');

-- Query OK, 2 rows affected (0.07 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee;

-- +----+----------+
-- | id | name     |
-- +----+----------+
-- |  1 | deepika  |
-- |  1 | rashmika |
-- +----+----------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE employee( id INT DEFAULT 1 NOT NULL, name VARCHAR(20));

-- Query OK, 0 rows affected (0.51 sec)




mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | NO   |     | 1       |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee(name) VALUES( 'deepika'),('rashmika');

-- Query OK, 2 rows affected (0.07 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee;

-- +----+----------+
-- | id | name     |
-- +----+----------+
-- |  1 | deepika  |
-- |  1 | rashmika |
-- +----+----------+
-- 2 rows in set (0.00 sec)




CREATE TABLE employee( id INT , name VARCHAR(20), NOT NULL(id));

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'NOT NULL(id))' at line 1




mysql> CREATE TABLE employee( id INT , name VARCHAR(20), dno INT DEFAULT 10 CHECK(dno IN( 10, 20, 30)));

-- Query OK, 0 rows affected (0.42 sec)




mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | dno   | int         | YES  |     | 10      |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> CREATE TABLE employee( id INT , name VARCHAR(20), dno INT DEFAULT 11 CHECK(dno IN( 10, 20, 30)));

-- Query OK, 0 rows affected (0.39 sec)




mysql> DESC employee;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | id    | int         | YES  |     | NULL    |       |
-- | name  | varchar(20) | YES  |     | NULL    |       |
-- | dno   | int         | YES  |     | 11      |       |
-- +-------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)




mysql> INSERT INTO employee(id,name) VALUES(101,'deepika');

-- ERROR 3819 (HY000): Check constraint 'employee_chk_1' is violated.




mysql> INSERT INTO employee(id,name, dno) VALUES(101,'deepika', 20);

-- Query OK, 1 row affected (0.09 sec)




mysql> SELECT * FROM employee;

-- +------+---------+------+
-- | id   | name    | dno  |
-- +------+---------+------+
-- |  101 | deepika |   20 |
-- +------+---------+------+
-- 1 row in set (0.00 sec)





string FUNCTION


mysql> SELECT UPPER('deepika');

-- +------------------+
-- | UPPER('deepika') |
-- +------------------+
-- | DEEPIKA          |
-- +------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, UPPER(name) FROM employee;

-- +---------+-------------+
-- | name    | UPPER(name) |
-- +---------+-------------+
-- | deepika | DEEPIKA     |
-- +---------+-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, UPPER(name) FROM students;

-- +--------+-------------+
-- | name   | UPPER(name) |
-- +--------+-------------+
-- | umesh  | UMESH       |
-- | kushal | KUSHAL      |
-- | chotu  | CHOTU       |
-- | motu   | MOTU        |
-- | sheela | SHEELA      |
-- +--------+-------------+
-- 5 rows in set (0.04 sec)




mysql> SELECT UPPER('deepika');

-- +------------------+
-- | UPPER('deepika') |
-- +------------------+
-- | DEEPIKA          |
-- +------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, UPPER(name) FROM employee;

-- +---------+-------------+
-- | name    | UPPER(name) |
-- +---------+-------------+
-- | deepika | DEEPIKA     |
-- +---------+-------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, UPPER(name) FROM student111;

-- ERROR 1146 (42S02): Table 'batch18.student111' doesnt exist




mysql> SELECT name, UPPER(name) FROM student1;

-- Empty set (0.03 sec)




mysql> SELECT name, UPPER(name) FROM students;

-- +--------+-------------+
-- | name   | UPPER(name) |
-- +--------+-------------+
-- | umesh  | UMESH       |
-- | kushal | KUSHAL      |
-- | chotu  | CHOTU       |
-- | motu   | MOTU        |
-- | sheela | SHEELA      |
-- +--------+-------------+
-- 5 rows in set (0.04 sec)




mysql> SELECT LOWER('UMESH');

-- +----------------+
-- | LOWER('UMESH') |
-- +----------------+
-- | umesh          |
-- +----------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, LOWER(name) FROM students;

-- +--------+-------------+
-- | name   | LOWER(name) |
-- +--------+-------------+
-- | umesh  | umesh       |
-- | kushal | kushal      |
-- | chotu  | chotu       |
-- | motu   | motu        |
-- | sheela | sheela      |
-- +--------+-------------+
-- 5 rows in set (0.01 sec)




mysql> SELECT LENGTH('amitabh');

-- +-------------------+
-- | LENGTH('amitabh') |
-- +-------------------+
-- |                 7 |
-- +-------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT name, LENGTH(name) FROM students;

-- +--------+--------------+
-- | name   | LENGTH(name) |
-- +--------+--------------+
-- | umesh  |            5 |
-- | kushal |            6 |
-- | chotu  |            5 |
-- | motu   |            4 |
-- | sheela |            6 |
-- +--------+--------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT CONCAT('Hii ', 'i', ' ', 'am ', 'developer');

-- +----------------------------------------------+
-- | CONCAT('Hii ', 'i', ' ', 'am ', 'developer') |
-- +----------------------------------------------+
-- | Hii i am developer                           |
-- +----------------------------------------------+
-- 1 row in set (0.00 sec)




mysql> SELECT * from students;

-- +------+--------+------+--------+-----------+------------+----------------------+
-- | id   | name   | age  | gender | address   | phone      | email                |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- |  101 | umesh  |   21 | male   | indore    | 1223451234 | umesh@gmail.com      |
-- |  102 | kushal |   20 | male   | neemuch   | 2222444466 | kpatel@gmailcom      |
-- |  103 | chotu  |   15 | male   | tihad     | 1111111111 | donchotu@gmail.com   |
-- |  104 | motu   |   18 | male   | delhi     | 5555555555 | delhisehai@gmail.com |
-- |  105 | sheela |   25 | female | hyderabad | 8989898989 | iamasheela@gmail.com |
-- +------+--------+------+--------+-----------+------------+----------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT id, CONCAT(name,' ', address, ' ', gender) FROM students;

-- +------+----------------------------------------+
-- | id   | CONCAT(name,' ', address, ' ', gender) |
-- +------+----------------------------------------+
-- |  101 | umesh indore male                      |
-- |  102 | kushal neemuch male                    |
-- |  103 | chotu tihad male                       |
-- |  104 | motu delhi male                        |
-- |  105 | sheela hyderabad female                |
-- +------+----------------------------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT id, CONCAT(name,' ', address, ' ', gender, age) FROM students;

-- +------+---------------------------------------------+
-- | id   | CONCAT(name,' ', address, ' ', gender, age) |
-- +------+---------------------------------------------+
-- |  101 | umesh indore male21                         |
-- |  102 | kushal neemuch male20                       |
-- |  103 | chotu tihad male15                          |
-- |  104 | motu delhi male18                           |
-- |  105 | sheela hyderabad female25                   |
-- +------+---------------------------------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT id, CONCAT(name,' ', address, ' ', gender,' ', age) FROM students;

-- +------+-------------------------------------------------+
-- | id   | CONCAT(name,' ', address, ' ', gender,' ', age) |
-- +------+-------------------------------------------------+
-- |  101 | umesh indore male 21                            |
-- |  102 | kushal neemuch male 20                          |
-- |  103 | chotu tihad male 15                             |
-- |  104 | motu delhi male 18                              |
-- |  105 | sheela hyderabad female 25                      |
-- +------+-------------------------------------------------+
-- 5 rows in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashika', 2, 6);

-- +----------------------------+
-- | SUBSTRING('Rashika', 2, 6) |
-- +----------------------------+
-- | ashika                     |
-- +----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashika', 2, 9);

-- +----------------------------+
-- | SUBSTRING('Rashika', 2, 9) |
-- +----------------------------+
-- | ashika                     |
-- +----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashika', 2);

-- +-------------------------+
-- | SUBSTRING('Rashika', 2) |
-- +-------------------------+
-- | ashika                  |
-- +-------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashika');

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1





mysql> SELECT SUBSTRING('Rashika',0);

-- +------------------------+
-- | SUBSTRING('Rashika',0) |
-- +------------------------+
-- |                        |
-- +------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashika',0, );

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1





mysql> SELECT SUBSTRING('Rashika',0, );

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1






mysql> SELECT SUBSTRING('Rashmika', 2, 6);

-- +-----------------------------+
-- | SUBSTRING('Rashmika', 2, 6) |
-- +-----------------------------+
-- | ashmik                      |
-- +-----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashmika', 2, 9);

-- +-----------------------------+
-- | SUBSTRING('Rashmika', 2, 9) |
-- +-----------------------------+
-- | ashmika                     |
-- +-----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT SUBSTRING('Rashmika', 3);

-- +--------------------------+
-- | SUBSTRING('Rashmika', 3) |
-- +--------------------------+
-- | shmika                   |
-- +--------------------------+
-- 1 row in set (0.00 sec)





mysql> SELET name, SUNSTRING(city, 2, 3) FROM students;

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELET name, SUNSTRING(city, 2, 3) FROM students' at line 1




mysql> SELET name, SUBSTRING(city, 2, 3) FROM students;

-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELET name, SUBSTRING(city, 2, 3) FROM students' at line 1




mysql> SELECT name, SUBSTRING(city, 2, 3) FROM students;

-- ERROR 1054 (42S22): Unknown column 'city' in 'field list'





mysql> SELECT name, SUBSTRING(address, 2, 3) FROM students;

-- +--------+--------------------------+
-- | name   | SUBSTRING(address, 2, 3) |
-- +--------+--------------------------+
-- | umesh  | ndo                      |
-- | kushal | eem                      |
-- | chotu  | iha                      |
-- | motu   | elh                      |
-- | sheela | yde                      |
-- +--------+--------------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT name,address, SUBSTRING(address, 2, 3) FROM students;

-- +--------+-----------+--------------------------+
-- | name   | address   | SUBSTRING(address, 2, 3) |
-- +--------+-----------+--------------------------+
-- | umesh  | indore    | ndo                      |
-- | kushal | neemuch   | eem                      |
-- | chotu  | tihad     | iha                      |
-- | motu   | delhi     | elh                      |
-- | sheela | hyderabad | yde                      |
-- +--------+-----------+--------------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT address, SUBSTRING(address, 2, 3) FROM students;

-- +-----------+--------------------------+
-- | address   | SUBSTRING(address, 2, 3) |
-- +-----------+--------------------------+
-- | indore    | ndo                      |
-- | neemuch   | eem                      |
-- | tihad     | iha                      |
-- | delhi     | elh                      |
-- | hyderabad | yde                      |
-- +-----------+--------------------------+
-- 5 rows in set (0.00 sec)




mysql> SELECT TRIM('  bahu and bali   ');

-- +----------------------------+
-- | TRIM('  bahu and bali   ') |
-- +----------------------------+
-- | bahu and bali              |
-- +----------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT REPLACE('Hello World', 'World', 'Umesh');

-- +------------------------------------------+
-- | REPLACE('Hello World', 'World', 'Umesh') |
-- +------------------------------------------+
-- | Hello Umesh                              |
-- +------------------------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT name, REPLACE(name, 'sheela', 'rashmika') FROM students;

-- +--------+-------------------------------------+
-- | name   | REPLACE(name, 'sheela', 'rashmika') |
-- +--------+-------------------------------------+
-- | umesh  | umesh                               |
-- | kushal | kushal                              |
-- | chotu  | chotu                               |
-- | motu   | motu                                |
-- | sheela | rashmika                            |
-- +--------+-------------------------------------+
-- 5 rows in set (0.01 sec)





mysql> SELECT LEFT('Bahubali', 4);

-- +---------------------+
-- | LEFT('Bahubali', 4) |
-- +---------------------+
-- | Bahu                |
-- +---------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT RIGHT('Bahubali', 4);

-- +----------------------+
-- | RIGHT('Bahubali', 4) |
-- +----------------------+
-- | bali                 |
-- +----------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT CONCAT_WS('-', 'umesh', 'patidar', 'batch18');

-- +-----------------------------------------------+
-- | CONCAT_WS('-', 'umesh', 'patidar', 'batch18') |
-- +-----------------------------------------------+
-- | umesh-patidar-batch18                         |
-- +-----------------------------------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT CONCAT_WS('-->', name, address, gender) FROM students;

-- +-----------------------------------------+
-- | CONCAT_WS('-->', name, address, gender) |
-- +-----------------------------------------+
-- | umesh-->indore-->male                   |
-- | kushal-->neemuch-->male                 |
-- | chotu-->tihad-->male                    |
-- | motu-->delhi-->male                     |
-- | sheela-->hyderabad-->female             |
-- +-----------------------------------------+
-- 5 rows in set (0.00 sec)





mysql> SELECT REVERSE('umesh');

-- +------------------+
-- | REVERSE('umesh') |
-- +------------------+
-- | hsemu            |
-- +------------------+
-- 1 row in set (0.00 sec)





mysql> SELECT name, REVERSE(name) FROM students;

-- +--------+---------------+
-- | name   | REVERSE(name) |
-- +--------+---------------+
-- | umesh  | hsemu         |
-- | kushal | lahsuk        |
-- | chotu  | utohc         |
-- | motu   | utom          |
-- | sheela | aleehs        |
-- +--------+---------------+
-- 5 rows in set (0.00 sec)
