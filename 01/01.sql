-- 06_August_2026


mysql> SELECT VERSION();   -- Displays the current version of the MySQL server.

-- +-----------+
-- | VERSION() |
-- +-----------+
-- | 8.0.46    |
-- +-----------+
-- 1 row in set (0.00 sec)






mysql> SELECT NOW();  -- Returns the current date and time of the MySQL server.   YYYY-MM-DD HH:MM:SS

-- +---------------------+
-- | NOW()               |
-- +---------------------+
-- | 2026-08-06 20:31:33 |
-- +---------------------+
-- 1 row in set (0.00 sec)







mysql> SELECT CURTIME();  -- Returns the current time of the MySQL server.  HH:MM:SS

-- +-----------+
-- | CURTIME() |
-- +-----------+
-- | 20:36:07  |
-- +-----------+
-- 1 row in set (0.00 sec)







mysql> SELECT CURDATE();  -- Returns the current date of the MySQL server.  YYYY-MM-DD

-- +------------+
-- | CURDATE()  |
-- +------------+
-- | 2026-08-06 |
-- +------------+
-- 1 row in set (0.00 sec)







mysql> SELECT USER();   -- Returns the current MySQL user account and the host from which the user is connected.

-- +----------------+
-- | USER()         |
-- +----------------+
-- | root@localhost |
-- +----------------+
-- 1 row in set (0.00 sec)






mysql> SELECT DATABASE();  -- Returns the name of the currently selected database.

-- +------------+
-- | DATABASE() |
-- +------------+
-- | NULL       |
-- +------------+
-- 1 row in set (0.00 sec) 






mysql> SELECT @@HOSTNAME;   -- Returns the hostname of the computer on which the MySQL server is running.

-- +-----------------+
-- | @@HOSTNAME      |
-- +-----------------+
-- | DESKTOP-RR4LU59 |
-- +-----------------+
-- 1 row in set (0.00 sec)






mysql> SELECT @@PORT;  -- Returns the port number on which the MySQL server is running.

-- +--------+
-- | @@PORT |
-- +--------+
-- |   3306 |
-- +--------+
-- 1 row in set (0.00 sec)







mysql> SELECT 10+20;

-- +-------+
-- | 10+20 |
-- +-------+
-- |    30 |
-- +-------+
-- 1 row in set (0.00 sec)






mysql> SELECT 20%2;

-- +------+
-- | 20%2 |
-- +------+
-- |    0 |
-- +------+
-- 1 row in set (0.00 sec)






mysql> SELECT SQRT(144);

-- +-----------+
-- | SQRT(144) |
-- +-----------+
-- |        12 |
-- +-----------+
-- 1 row in set (0.01 sec)






mysql> SELECT POW(2,5);

-- +----------+
-- | POW(2,5) |
-- +----------+
-- |       32 |
-- +----------+
-- 1 row in set (0.00 sec)






mysql> SELECT RAND();

-- +--------------------+
-- | RAND()             |
-- +--------------------+
-- | 0.7884196339067254 |
-- +--------------------+
-- 1 row in set (0.00 sec)
