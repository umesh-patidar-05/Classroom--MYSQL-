
mysql> DESC pyemployee5;
+--------+---------------+------+-----+---------+----------------+
| Field  | Type          | Null | Key | Default | Extra          |
+--------+---------------+------+-----+---------+----------------+
| id     | int           | NO   | PRI | NULL    | auto_increment |
| name   | varchar(20)   | YES  |     | NULL    |                |
| salary | decimal(10,2) | YES  |     | NULL    |                |
+--------+---------------+------+-----+---------+----------------+
3 rows in set (0.01 sec)

mysql> ALTER TABLE pyemployee5 MODIFY COLUMN name VARCHAR(50), MODIFY COLUMN salary DECIMAL(10,2);
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> DESC pyemployee5;
+--------+---------------+------+-----+---------+----------------+
| Field  | Type          | Null | Key | Default | Extra          |
+--------+---------------+------+-----+---------+----------------+
| id     | int           | NO   | PRI | NULL    | auto_increment |
| name   | varchar(50)   | YES  |     | NULL    |                |
| salary | decimal(10,2) | YES  |     | NULL    |                |
+--------+---------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)
















-- 14/ August/ 2026


DROP

mysql> select * from student;
+------+---------+------+
| id   | name    | age  |
+------+---------+------+
|  101 | deepika |   30 |
+------+---------+------+
1 row in set (0.00 sec)

mysql> drop table student;
Query OK, 0 rows affected (0.29 sec)

mysql> desc student;
ERROR 1146 (42S02): Table 'batch18.student' doesn't exist
mysql> 














 
mutiple drop



mysql> show tables;
+-------------------+
| Tables_in_batch18 |
+-------------------+
| A                 |
| customer_product  |
| emp1              |
| emp2              |
| emp3              |
| employee          |
| product           |
| pybackup          |
| pyemployee5       |
| pyemployee7       |
| pyemployeee       |
| pyemployeee1      |
| pyemployeee3      |
| pystudent         |
| pystudent5        |
| pystudent6        |
| pytruncate        |
| student1          |
| stumarks          |
| t1                |
| t2                |
+-------------------+
21 rows in set (0.00 sec)

mysql> drop table pyemployeee1, pyemployeee3, pyemployee5;
Query OK, 0 rows affected (0.48 sec)

mysql> desc pyemployeee1;
ERROR 1146 (42S02): Table 'batch18.pyemployeee1' doesn't exist
mysql> desc pyemployeee3;
ERROR 1146 (42S02): Table 'batch18.pyemployeee3' doesn't exist
mysql> desc pyemployeee5;
ERROR 1146 (42S02): Table 'batch18.pyemployeee5' doesn't exist
mysql> drop table pyemployeee1;
ERROR 1051 (42S02): Unknown table 'batch18.pyemployeee1'
mysql> drop table if exists  pyemployeee1;
Query OK, 0 rows affected, 1 warning (0.05 sec)









ALTER command


mysql> show tables;
+-------------------+
| Tables_in_batch18 |
+-------------------+
| A                 |
| customer_product  |
| emp1              |
| emp2              |
| emp3              |
| employee          |
| product           |
| pybackup          |
| pyemployee7       |
| pyemployeee       |
| pystudent         |
| pystudent5        |
| pystudent6        |
| pytruncate        |
| student1          |
| stumarks          |
| t1                |
| t2                |
+-------------------+
18 rows in set (0.00 sec)

mysql> create table azadi(student_id int, name varchar(20), age int, city varchar(20));
Query OK, 0 rows affected (0.33 sec)

mysql> desc azadi;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | YES  |     | NULL    |       |
| name       | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into azadi values(101, 'deepika', 30, 'chennai'), (102, 'rashmika', 27, 'indore'), (103, 'virat', 30, 'banglore');
Query OK, 3 rows affected (0.09 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from azadi;
+------------+----------+------+----------+
| student_id | name     | age  | city     |
+------------+----------+------+----------+
|        101 | deepika  |   30 | chennai  |
|        102 | rashmika |   27 | indore   |
|        103 | virat    |   30 | banglore |
+------------+----------+------+----------+
3 rows in set (0.00 sec)

mysql> desc azadi;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | YES  |     | NULL    |       |
| name       | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)








ADD COLUMN



mysql> alter table azadi add column email varchar(20);
Query OK, 0 rows affected (0.24 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | YES  |     | NULL    |       |
| name       | varchar(20) | YES  |     | NULL    |       |
| age        | int         | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| email      | varchar(20) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)


mysql> select * from azadi;
+------------+----------+------+----------+-------+
| student_id | name     | age  | city     | email |
+------------+----------+------+----------+-------+
|        101 | deepika  |   30 | chennai  | NULL  |
|        102 | rashmika |   27 | indore   | NULL  |
|        103 | virat    |   30 | banglore | NULL  |
+------------+----------+------+----------+-------+
3 rows in set (0.00 sec)






add multiple column




mysql> alter table azadi add column mobile varchar(20), add column course varchar(20), add column salary decimal(10,2);
Query OK, 0 rows affected (0.26 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| mobile     | varchar(20)   | YES  |     | NULL    |       |
| course     | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
8 rows in set (0.00 sec)







add column at a specific position


I


mysql> alter table azadi add column gender varchar(10) first;
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| mobile     | varchar(20)   | YES  |     | NULL    |       |
| course     | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
9 rows in set (0.00 sec)






II 

mysql> alter table azadi add column dab date after name;
Query OK, 0 rows affected (0.22 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| dab        | date          | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| mobile     | varchar(20)   | YES  |     | NULL    |       |
| course     | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
10 rows in set (0.01 sec)


note


mysql> select name, city from azadi;
+----------+----------+
| name     | city     |
+----------+----------+
| deepika  | chennai  |
| rashmika | indore   |
| virat    | banglore |
+----------+----------+
3 rows in set (0.01 sec)







DROP COLUMN



syntax
ALTER Table tablename DROP COLUMN column_name;





ALTER Table azadi DROP COLUMN dob;


mysql> ALTER Table azadi DROP COLUMN dab;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| mobile     | varchar(20)   | YES  |     | NULL    |       |
| course     | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
9 rows in set (0.00 sec)







multiple DROP

mysql> ALTER Table azadi DROP COLUMN mobile, drop column course;
Query OK, 0 rows affected (0.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | int           | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)





modify COLUMN

ALTER Table tablename modify COLUMN cloumn_name newdefination;


mysql> alter table azadi modify column age smallint;
Query OK, 3 rows affected (1.37 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(20)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)







mysql> alter table azadi modify column email varchar(50);
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(20)   | YES  |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)




mysql> alter table azadi modify column name varchar(70);
Query OK, 3 rows affected (1.04 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(70)   | YES  |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)





modify multiple columns

khud SE







modify constraints;



mysql> alter table azadi modify column name varchar(70) not null;
Query OK, 0 rows affected (1.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(70)   | NO   |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)




mysql> select * from azadi;
+--------+------------+----------+------+----------+-------+--------+
| gender | student_id | name     | age  | city     | email | salary |
+--------+------------+----------+------+----------+-------+--------+
| NULL   |        101 | deepika  |   30 | chennai  | NULL  |   NULL |
| NULL   |        102 | rashmika |   27 | indore   | NULL  |   NULL |
| NULL   |        103 | virat    |   30 | banglore | NULL  |   NULL |
+--------+------------+----------+------+----------+-------+--------+
3 rows in set (0.00 sec)



mysql> insert into azadi(name) values(12);
Query OK, 1 row affected (0.07 sec)

mysql> insert into azadi(age) values(12);
ERROR 1364 (HY000): Field 'name' doesnt have a default value










mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(70)   | NO   |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> alter table azadi modify column salary decimal(10,2) default 1000;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| name       | varchar(70)   | NO   |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | 1000.00 |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

mysql> select * from azadi;
+--------+------------+----------+------+----------+-------+--------+
| gender | student_id | name     | age  | city     | email | salary |
+--------+------------+----------+------+----------+-------+--------+
| NULL   |        101 | deepika  |   30 | chennai  | NULL  |   NULL |
| NULL   |        102 | rashmika |   27 | indore   | NULL  |   NULL |
| NULL   |        103 | virat    |   30 | banglore | NULL  |   NULL |
| NULL   |       NULL | 12       | NULL | NULL     | NULL  |   NULL |
+--------+------------+----------+------+----------+-------+--------+
4 rows in set (0.00 sec)

mysql> insert into azadi(name) values("bhagat singh");
Query OK, 1 row affected (0.07 sec)

mysql> select * from azadi;
+--------+------------+--------------+------+----------+-------+---------+
| gender | student_id | name         | age  | city     | email | salary  |
+--------+------------+--------------+------+----------+-------+---------+
| NULL   |        101 | deepika      |   30 | chennai  | NULL  |    NULL |
| NULL   |        102 | rashmika     |   27 | indore   | NULL  |    NULL |
| NULL   |        103 | virat        |   30 | banglore | NULL  |    NULL |
| NULL   |       NULL | 12           | NULL | NULL     | NULL  |    NULL |
| NULL   |       NULL | bhagat singh | NULL | NULL     | NULL  | 1000.00 |
+--------+------------+--------------+------+----------+-------+---------+
5 rows in set (0.00 sec)








change COLUMN

syntax
ALTER TABLE table_name CHANGE COLUMN old_name new_name datatype;


mysql> alter Table azadi CHANGE COLUMN name fullname varchar(30);
Query OK, 5 rows affected (0.89 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| gender     | varchar(10)   | YES  |     | NULL    |       |
| student_id | int           | YES  |     | NULL    |       |
| fullname   | varchar(30)   | YES  |     | NULL    |       |
| age        | smallint      | YES  |     | NULL    |       |
| city       | varchar(20)   | YES  |     | NULL    |       |
| email      | varchar(50)   | YES  |     | NULL    |       |
| salary     | decimal(10,2) | YES  |     | 1000.00 |       |
+------------+---------------+------+-----+---------+-------+
7 rows in set (0.01 sec)











RENAME


syntax
ALTER Table table_name RENAME COLUMN old to new;



ALTER Table azadi rename column age to student_age;



mysql> ALTER Table azadi rename column age to student_age;
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadi;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| gender      | varchar(10)   | YES  |     | NULL    |       |
| student_id  | int           | YES  |     | NULL    |       |
| fullname    | varchar(30)   | YES  |     | NULL    |       |
| student_age | smallint      | YES  |     | NULL    |       |
| city        | varchar(20)   | YES  |     | NULL    |       |
| email       | varchar(50)   | YES  |     | NULL    |       |
| salary      | decimal(10,2) | YES  |     | 1000.00 |       |
+-------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)















RENAME TABLE;

syntax
ALTER TABLE oldtablename RENAME to newtablename;





mysql> ALTER Table azadi RENAME TO hamariazadi;
Query OK, 0 rows affected (0.29 sec)

mysql> select * from hamariazadi;
+--------+------------+--------------+-------------+----------+-------+---------+
| gender | student_id | fullname     | student_age | city     | email | salary  |
+--------+------------+--------------+-------------+----------+-------+---------+
| NULL   |        101 | deepika      |          30 | chennai  | NULL  |    NULL |
| NULL   |        102 | rashmika     |          27 | indore   | NULL  |    NULL |
| NULL   |        103 | virat        |          30 | banglore | NULL  |    NULL |
| NULL   |       NULL | 12           |        NULL | NULL     | NULL  |    NULL |
| NULL   |       NULL | bhagat singh |        NULL | NULL     | NULL  | 1000.00 |
+--------+------------+--------------+-------------+----------+-------+---------+
5 rows in set (0.00 sec)

















RENAME TABLE;


mysql> RENAME TABLE hamariazadi to sabkiazadi;
Query OK, 0 rows affected (0.29 sec)

mysql> DESC sabkiazadi;
+-------------+---------------+------+-----+---------+-------+
| Field       | Type          | Null | Key | Default | Extra |
+-------------+---------------+------+-----+---------+-------+
| gender      | varchar(10)   | YES  |     | NULL    |       |
| student_id  | int           | YES  |     | NULL    |       |
| fullname    | varchar(30)   | YES  |     | NULL    |       |
| student_age | smallint      | YES  |     | NULL    |       |
| city        | varchar(20)   | YES  |     | NULL    |       |
| email       | varchar(50)   | YES  |     | NULL    |       |
| salary      | decimal(10,2) | YES  |     | 1000.00 |       |
+-------------+---------------+------+-----+---------+-------+
7 rows in set (0.00 sec)










PRIMARY key using alter




mysql> create table azadstudent(id int, name varchar(20), salary decimal(10,2));
Query OK, 0 rows affected (0.36 sec)

mysql> desc azadstudent;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| id     | int           | YES  |     | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| salary | decimal(10,2) | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table azadstudent add primary key(id);
Query OK, 0 rows affected (0.85 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadstudent;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| id     | int           | NO   | PRI | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| salary | decimal(10,2) | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)








add composite primary KEY:
 khude se krna 










next------>

mysql> alter table azadstudent drop PRIMARY KEY;
Query OK, 0 rows affected (1.28 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadstudent;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| id     | int           | NO   |     | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| salary | decimal(10,2) | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)












alter with auto increment


mysql> create table azadstudent1(id int primary key auto_increment, name varchar(20), salary decimal(10,2));
Query OK, 0 rows affected (0.55 sec)

mysql> desc azadstudent1;
+--------+---------------+------+-----+---------+----------------+
| Field  | Type          | Null | Key | Default | Extra          |
+--------+---------------+------+-----+---------+----------------+
| id     | int           | NO   | PRI | NULL    | auto_increment |
| name   | varchar(20)   | YES  |     | NULL    |                |
| salary | decimal(10,2) | YES  |     | NULL    |                |
+--------+---------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)

mysql> alter table azadstudent1 drop PRIMARY KEY;
ERROR 1075 (42000): Incorrect table definition; there can be only one auto column and it must be defined as a key


note:
    copy me likha Haiiiiiiiiiiii....................



mysql> ALTER Table azadstudent1 modify id int;
Query OK, 0 rows affected (1.47 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadstudent1;
+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| id     | int           | NO   | PRI | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| salary | decimal(10,2) | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)








we can add autoincrement also


mysql> alter table azadstudent modify id int auto_increment primary key;
Query OK, 0 rows affected (1.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc azadstudent;
+--------+---------------+------+-----+---------+----------------+
| Field  | Type          | Null | Key | Default | Extra          |
+--------+---------------+------+-----+---------+----------------+
| id     | int           | NO   | PRI | NULL    | auto_increment |
| name   | varchar(20)   | YES  |     | NULL    |                |
| salary | decimal(10,2) | YES  |     | NULL    |                |
+--------+---------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)



