-- foundation@IB-SEZ-PC-273:~$ sudo mysql -u root -p
-- Enter password: 
-- Welcome to the MySQL monitor.  Commands end with ; or \g.
-- Your MySQL connection id is 13
-- Server version: 8.0.40-0ubuntu0.20.04.1 (Ubuntu)

-- Copyright (c) 2000, 2024, Oracle and/or its affiliates.

-- Oracle is a registered trademark of Oracle Corporation and/or its
-- affiliates. Other names may be trademarks of their respective
-- owners.

-- Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.




mysql> select version();

-- +-------------------------+
-- | version()               |
-- +-------------------------+
-- | 8.0.40-0ubuntu0.20.04.1 |
-- +-------------------------+
-- 1 row in set (0.00 sec)





mysql> select now();

-- +---------------------+
-- | now()               |
-- +---------------------+
-- | 2026-08-06 10:20:07 |
-- +---------------------+
-- 1 row in set (0.00 sec)





mysql> select curtime();

-- +-----------+
-- | curtime() |
-- +-----------+
-- | 10:21:29  |
-- +-----------+
-- 1 row in set (0.00 sec)







mysql> select user();

-- +----------------+
-- | user()         |
-- +----------------+
-- | root@localhost |
-- +----------------+
-- 1 row in set (0.01 sec)







mysql> select database();

-- +------------+
-- | database() |
-- +------------+
-- | NULL       |
-- +------------+
-- 1 row in set (0.00 sec)







mysql> select @@hostname;

-- +---------------+
-- | @@hostname    |
-- +---------------+
-- | IB-SEZ-PC-273 |
-- +---------------+
-- 1 row in set (0.00 sec)









mysql> select @@port;

-- +--------+
-- | @@port |
-- +--------+
-- |   3306 |
-- +--------+
-- 1 row in set (0.00 sec)






mysql> select 10+20;

-- +-------+
-- | 10+20 |
-- +-------+
-- |    30 |
-- +-------+
-- 1 row in set (0.00 sec)







mysql> select 20%2;

-- +------+
-- | 20%2 |
-- +------+
-- |    0 |
-- +------+
-- 1 row in set (0.00 sec)







mysql> select sqrt(144);

-- +-----------+
-- | sqrt(144) |
-- +-----------+
-- |        12 |
-- +-----------+
-- 1 row in set (0.00 sec)






mysql> SELECT POW(2,5);

-- +----------+
-- | POW(2,5) |
-- +----------+
-- |       32 |
-- +----------+
-- 1 row in set (0.00 sec)






mysql> SELECT RAND();

-- +---------------------+
-- | RAND()              |
-- +---------------------+
-- | 0.38449313434259325 |
-- +---------------------+
-- 1 row in set (0.00 sec)







types of sql languages  --->
sql consists of different categories of commands eac category is desigined to perform spcific types of operations on a database such as creating databse objects manipulating data retriving information , managing user permissions and controllling transitions .

1. ddl(data defination language)
2. dml(data manipulation language)
3. dql(data query language)
4. dcl(data controll language)
5. tcl(transition controll language)




ddl---> 
1. it is used to define , create , modiff and delete the structure of databse objects.
2. ddl command deals with structure with of the objects.


  NOTE: databse objects are
  1. database
  2. table
  3. view
  4. index
  5. stored processer
  6. trigger
  7. foundation



3. ddl command intract with database directly .
4. ddl command enforce an immplicit commit before and after the statement
5. in ddl commands we can no undo(role back) the changes 




-----
-----
-----
-----____commit
ddl  
-----______commit
-----
-----
----- __ rollback
----
----



6. ddl commands are faster than other commands

examples of ddl commands:
1. create
2. alter
3. drop
4. truncate
5. rename







dml : 