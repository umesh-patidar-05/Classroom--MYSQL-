-- 10/september/2026




mysql> SELECT * FROM employee18;

-- +-------+---------+--------+
-- | empid | empname | deptid |
-- +-------+---------+--------+
-- |   101 | deepika |      1 |
-- |   103 | thapaji |      3 |
-- |   104 | kanak   |      1 |
-- |   105 | katappa |   NULL |
-- +-------+---------+--------+
-- 4 rows in set (0.03 sec)




mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr       |
-- |      3 | finance  |
-- +--------+----------+
-- 2 rows in set (0.02 sec)




mysql> UPDATE department18 SET deptid = 10 WHERE deptid = 1;

-- ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`batch18`.`employee18`, CONSTRAINT `employee18_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `department18` (`deptid`))




mysql> UPDATE department18 SET deptname = 'hr_IT' WHERE deptid = 1;

-- Query OK, 1 row affected (0.35 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM department18;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | hr_IT    |
-- |      3 | finance  |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE department187( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.37 sec)




mysql> DESC department187;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE employee187(empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department187(deptid) ON UPDATE CASCADE);

-- Query OK, 0 rows affected (0.45 sec)




mysql> DESC employee187;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.01 sec)



mysql> INSERT INTO department187 VALUES(1, 'HR'), (2, 'IT');

-- Query OK, 2 rows affected (0.09 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM department187;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | HR       |
-- |      2 | IT       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee187 VALUES(101, 'deepika', 1), (102, 'rashmika', 1);

-- Query OK, 2 rows affected (0.07 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee187;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      1 |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> UPDATE department187 SET deptid = 10 WHERE deptid = 1;

-- Query OK, 1 row affected (0.06 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM department187;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      2 | IT       |
-- |     10 | HR       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM employee187;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |     10 |
-- |   102 | rashmika |     10 |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE department188( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.79 sec)




mysql> DESC department188;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE employee188(empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department188(deptid) ON UPDATE SET NULL);

-- Query OK, 0 rows affected (0.92 sec)




mysql> DESC employee188;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department188 VALUES(1, 'HR'), (2, 'IT');

-- Query OK, 2 rows affected (0.06 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM department188;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      1 | HR       |
-- |      2 | IT       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee188 VALUES(101, 'deepika', 1), (102, 'rashmika', 1);

-- Query OK, 2 rows affected (0.06 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee188;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |      1 |
-- |   102 | rashmika |      1 |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> UPDATE department188 SET deptid = 10 WHERE deptid = 1;

-- Query OK, 1 row affected (0.08 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM department188;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |      2 | IT       |
-- |     10 | HR       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM employee188;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |   101 | deepika  |   NULL |
-- |   102 | rashmika |   NULL |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE parent1( pid INT PRIMARY KEY, pcode VARCHAR(20));

-- Query OK, 0 rows affected (0.70 sec)




mysql> DESC parent1;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | pid   | int         | NO   | PRI | NULL    |       |
-- | pcode | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> INSERT INTO parent1 VALUES( 101, 'P111'), (102, 'p222');

-- Query OK, 2 rows affected (0.07 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM parent1;

-- +-----+-------+
-- | pid | pcode |
-- +-----+-------+
-- | 101 | P111  |
-- | 102 | p222  |
-- +-----+-------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE child1( cid INT PRIMARY KEY, cname VARCHAR(20), pid INT);

-- Query OK, 0 rows affected (0.02 sec)




mysql> INSERT INTO child1 VALUES(1, 'shyam', 101), (2, 'ram', 102);

-- Query OK, 2 rows affected (0.00 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM child1;

-- +-----+-------+------+
-- | cid | cname | pid  |
-- +-----+-------+------+
-- |   1 | shyam |  101 |
-- |   2 | ram   |  102 |
-- +-----+-------+------+
-- 2 rows in set (0.00 sec)




mysql> ALTER TABLE child1 ADD CONSTRAINT fk_child1_parent1 FOREIGN KEY(pid) REFERENCES parent1(pid);

-- Query OK, 2 rows affected (0.10 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> INSERT INTO child1 VALUES(3, 'deepu', 105);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`child1`, CONSTRAINT `fk_child1_parent1` FOREIGN KEY (`pid`) REFERENCES `parent1` (`pid`))




mysql> INSERT INTO child1 VALUES(3, 'deepu', 102);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM child1;

-- +-----+-------+------+
-- | cid | cname | pid  |
-- +-----+-------+------+
-- |   1 | shyam |  101 |
-- |   2 | ram   |  102 |
-- |   3 | deepu |  102 |
-- +-----+-------+------+
-- 3 rows in set (0.00 sec)




mysql> ALTER TABLE child1 DROP FOREIGN KEY fk_child1_parent1;

-- Query OK, 0 rows affected (0.01 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> INSERT INTO child1 VALUES(4, 'katappa', 105);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM child1;

-- +-----+---------+------+
-- | cid | cname   | pid  |
-- +-----+---------+------+
-- |   1 | shyam   |  101 |
-- |   2 | ram     |  102 |
-- |   3 | deepu   |  102 |
-- |   4 | katappa |  105 |
-- +-----+---------+------+
-- 4 rows in set (0.00 sec)




mysql> SELECT * FROM parent1;

-- +-----+-------+
-- | pid | pcode |
-- +-----+-------+
-- | 101 | P111  |
-- | 102 | p222  |
-- +-----+-------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE department189( deptid INT PRIMARY KEY, deptname VARCHAR(20));

-- Query OK, 0 rows affected (0.53 sec)




mysql> CREATE TABLE employee189(empid INT PRIMARY KEY, empname VARCHAR(20), deptid INT, FOREIGN KEY(deptid) REFERENCES department189(deptid) ON UPDATE CASCADE ON DELETE CASCADE);

-- Query OK, 0 rows affected (0.45 sec)




mysql> DESC department189;

-- +----------+-------------+------+-----+---------+-------+
-- | Field    | Type        | Null | Key | Default | Extra |
-- +----------+-------------+------+-----+---------+-------+
-- | deptid   | int         | NO   | PRI | NULL    |       |
-- | deptname | varchar(20) | YES  |     | NULL    |       |
-- +----------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> DESC employee189;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- | deptid  | int         | YES  | MUL | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO department189 VALUES(101, 'HR'), (102, 'IT');

-- Query OK, 2 rows affected (0.07 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM  department189;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |    101 | HR       |
-- |    102 | IT       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO employee189 VALUES( 1, 'rashmika', 101), (2, 'deepika', 102), (3, 'katappa', 101), (4, 'bahubali', 102);

-- Query OK, 4 rows affected (0.10 sec)
-- Records: 4  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee189;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |     1 | rashmika |    101 |
-- |     2 | deepika  |    102 |
-- |     3 | katappa  |    101 |
-- |     4 | bahubali |    102 |
-- +-------+----------+--------+
-- 4 rows in set (0.00 sec)




mysql> UPDATE department189 SET deptid = 999 WHERE deptid = 101;

-- Query OK, 1 row affected (0.08 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0




mysql> SELECT * FROM department189;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |    102 | IT       |
-- |    999 | HR       |
-- +--------+----------+
-- 2 rows in set (0.00 sec)




mysql> SELECT * FROM employee189;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |     1 | rashmika |    999 |
-- |     2 | deepika  |    102 |
-- |     3 | katappa  |    999 |
-- |     4 | bahubali |    102 |
-- +-------+----------+--------+
-- 4 rows in set (0.00 sec)




mysql> DELETE FROM department189 WHERE deptid = 102;

-- Query OK, 1 row affected (0.12 sec)




mysql> SELECT * FROM department189;

-- +--------+----------+
-- | deptid | deptname |
-- +--------+----------+
-- |    999 | HR       |
-- +--------+----------+
-- 1 row in set (0.00 sec)




mysql> SELECT * FROM employee189;

-- +-------+----------+--------+
-- | empid | empname  | deptid |
-- +-------+----------+--------+
-- |     1 | rashmika |    999 |
-- |     3 | katappa  |    999 |
-- +-------+----------+--------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE employee190(empid INT PRIMARY KEY, empname VARCHAR(20));

-- Query OK, 0 rows affected (1.15 sec)




mysql> DESC employee190;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | empid   | int         | NO   | PRI | NULL    |       |
-- | empname | varchar(20) | YES  |     | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.01 sec)




mysql> CREATE TABLE empcard(cardid INT PRIMARY KEY, empid INT UNIQUE, cardnumber VARCHAR(2), FOREIGN KEY(empid) REFERENCES employee190(empid));

-- Query OK, 0 rows affected (0.54 sec)




mysql> DESC empcard;

-- +------------+------------+------+-----+---------+-------+
-- | Field      | Type       | Null | Key | Default | Extra |
-- +------------+------------+------+-----+---------+-------+
-- | cardid     | int        | NO   | PRI | NULL    |       |
-- | empid      | int        | YES  | UNI | NULL    |       |
-- | cardnumber | varchar(2) | YES  |     | NULL    |       |
-- +------------+------------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO employee190 VALUES(101, 'deepika'),(102, 'rashmika');

-- Query OK, 2 rows affected (0.08 sec)
-- Records: 2  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM employee190;

-- +-------+----------+
-- | empid | empname  |
-- +-------+----------+
-- |   101 | deepika  |
-- |   102 | rashmika |
-- +-------+----------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO empcard VALUES(1, 101, '11');

-- Query OK, 1 row affected (0.09 sec)




mysql> SELECT * FROM empcard;

-- +--------+-------+------------+
-- | cardid | empid | cardnumber |
-- +--------+-------+------------+
-- |      1 |   101 | 11         |
-- +--------+-------+------------+
-- 1 row in set (0.00 sec)




mysql> INSERT INTO empcard VALUES(2, 101, '11');

-- ERROR 1062 (23000): Duplicate entry '101' for key 'empcard.empid'




mysql> CREATE TABLE student191(stuid INT PRIMARY KEY, stuname VARCHAR(20));

-- Query OK, 0 rows affected (0.52 sec)




mysql> DESC student191;

-- +---------+-------------+------+-----+---------+-------+
-- | Field   | Type        | Null | Key | Default | Extra |
-- +---------+-------------+------+-----+---------+-------+
-- | stuid   | int         | NO   | PRI | NULL    |       |
-- | stuname | varchar(20) | YES  |     | NULL    |       |
-- +---------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE course191(cid INT PRIMARY KEY, cname VARCHAR(20));

-- Query OK, 0 rows affected (0.35 sec)




mysql> DESC course191;

-- +-------+-------------+------+-----+---------+-------+
-- | Field | Type        | Null | Key | Default | Extra |
-- +-------+-------------+------+-----+---------+-------+
-- | cid   | int         | NO   | PRI | NULL    |       |
-- | cname | varchar(20) | YES  |     | NULL    |       |
-- +-------+-------------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> CREATE TABLE student_course191( stuid INT, cid INT, PRIMARY KEY( stuid, cid), FOREIGN KEY(stuid) REFERENCES student191(stuid), FOREIGN KEY(cid) REFERENCES course191(cid));

-- Query OK, 0 rows affected (2.73 sec)




mysql> DESC student_course191;

-- +-------+------+------+-----+---------+-------+
-- | Field | Type | Null | Key | Default | Extra |
-- +-------+------+------+-----+---------+-------+
-- | stuid | int  | NO   | PRI | NULL    |       |
-- | cid   | int  | NO   | PRI | NULL    |       |
-- +-------+------+------+-----+---------+-------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO student191 VALUES(101, 'deepika'), (102, 'rashmika'), (103, 'katappa');

-- Query OK, 3 rows affected (0.16 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM student191;

-- +-------+----------+
-- | stuid | stuname  |
-- +-------+----------+
-- |   101 | deepika  |
-- |   102 | rashmika |
-- |   103 | katappa  |
-- +-------+----------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO course191 VALUES(1, 'java'), (2, 'python'), (3, 'mysql');

-- Query OK, 3 rows affected (0.59 sec)
-- Records: 3  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM course191;

-- +-----+--------+
-- | cid | cname  |
-- +-----+--------+
-- |   1 | java   |
-- |   2 | python |
-- |   3 | mysql  |
-- +-----+--------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO student_course191 VALUES( 101, 1), (101,2), (102, 1), (102, 2);

-- Query OK, 4 rows affected (0.09 sec)
-- Records: 4  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM student_course191;

-- +-------+-----+
-- | stuid | cid |
-- +-------+-----+
-- |   101 |   1 |
-- |   102 |   1 |
-- |   101 |   2 |
-- |   102 |   2 |
-- +-------+-----+
-- 4 rows in set (0.00 sec)




mysql> INSERT INTO student_course191 VALUES( 101, 1);

-- ERROR 1062 (23000): Duplicate entry '101-1' for key 'student_course191.PRIMARY'




mysql> CREATE TABLE student_course (
    ->     student_id INT,
    ->     course_id INT,
    ->     student_name VARCHAR(30),
    ->     PRIMARY KEY (student_id, course_id)
    -> );

-- Query OK, 0 rows affected (0.02 sec)




mysql> DESC  student_course;

-- +--------------+-------------+------+-----+---------+-------+
-- | Field        | Type        | Null | Key | Default | Extra |
-- +--------------+-------------+------+-----+---------+-------+
-- | student_id   | int         | NO   | PRI | NULL    |       |
-- | course_id    | int         | NO   | PRI | NULL    |       |
-- | student_name | varchar(30) | YES  |     | NULL    |       |
-- +--------------+-------------+------+-----+---------+-------+
-- 3 rows in set (0.08 sec)




mysql> INSERT INTO student_course
    -> VALUES
    -> (1, 101, 'Bholu'),
    -> (1, 102, 'Bholu'),
    -> (2, 101, 'Golu'),
    -> (2, 102, 'Golu');

-- Query OK, 4 rows affected (0.01 sec)
-- Records: 4  Duplicates: 0  Warnings: 0




mysql> SELECT * FROM student_course;

-- +------------+-----------+--------------+
-- | student_id | course_id | student_name |
-- +------------+-----------+--------------+
-- |          1 |       101 | Bholu        |
-- |          1 |       102 | Bholu        |
-- |          2 |       101 | Golu         |
-- |          2 |       102 | Golu         |
-- +------------+-----------+--------------+
-- 4 rows in set (0.00 sec)




mysql> CREATE TABLE marks (
    ->     student_id INT,
    ->     course_id INT,
    ->     marks INT
    -> );

-- Query OK, 0 rows affected (0.02 sec)




mysql> DESC marks;

-- +------------+------+------+-----+---------+-------+
-- | Field      | Type | Null | Key | Default | Extra |
-- +------------+------+------+-----+---------+-------+
-- | student_id | int  | YES  |     | NULL    |       |
-- | course_id  | int  | YES  |     | NULL    |       |
-- | marks      | int  | YES  |     | NULL    |       |
-- +------------+------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> ALTER TABLE marks
    -> ADD CONSTRAINT fk_marks_student_course
    -> FOREIGN KEY (student_id, course_id)
    -> REFERENCES student_course(student_id, course_id);

-- Query OK, 0 rows affected (0.09 sec)
-- Records: 0  Duplicates: 0  Warnings: 0




mysql> DESC marks;

-- +------------+------+------+-----+---------+-------+
-- | Field      | Type | Null | Key | Default | Extra |
-- +------------+------+------+-----+---------+-------+
-- | student_id | int  | YES  | MUL | NULL    |       |
-- | course_id  | int  | YES  |     | NULL    |       |
-- | marks      | int  | YES  |     | NULL    |       |
-- +------------+------+------+-----+---------+-------+
-- 3 rows in set (0.00 sec)




mysql> INSERT INTO marks
    -> VALUES
    -> (1, 101, 85);

-- Query OK, 1 row affected (0.00 sec)




mysql> INSERT INTO marks
    -> VALUES
    -> (2, 102, 90);

-- Query OK, 1 row affected (0.00 sec)




mysql> SELECT * FROM marks;

-- +------------+-----------+-------+
-- | student_id | course_id | marks |
-- +------------+-----------+-------+
-- |          1 |       101 |    85 |
-- |          2 |       102 |    90 |
-- +------------+-----------+-------+
-- 2 rows in set (0.00 sec)




mysql> INSERT INTO marks
    -> VALUES
    -> (1, 105, 80);

-- ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`batch18`.`marks`, CONSTRAINT `fk_marks_student_course` FOREIGN KEY (`student_id`, `course_id`) REFERENCES `student_course` (`student_id`, `course_id`))

