# 15/september/2026



'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 

print("Import done")

try :
    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="kyu_batau",database="batch18") # Connection establish
    print("Connection established")
    if conn.is_connected():
        print("connection established ")
    cursor = conn.cursor()
    query = """create table pdemployee(id int primary key, 
                               name varchar(20), salary decimal(10,2))"""

    cursor.execute(query)

    print("table also created without tea")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''


# Import done
# Connection established
# connection established 
# table also created without tea
# inside finally block
# Connection closed successfully.













import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") # Connection establish
    print("Connection established")

    if conn.is_connected():
        print("connection established again")

    cursor = conn.cursor()
    query = "insert into pdemployee values(1,'Dipu',30000)"
    cursor.execute(query)
    print("table also created without tea")
    conn.commit()

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
    


# Import done
# Connection established
# connection established again
# table also created without tea
# inside finally block
# Connection closed successfully.   









'''
mysql> use batch18;

Database changed



mysql> DESC pdemployee;

+--------+---------------+------+-----+---------+-------+
| Field  | Type          | Null | Key | Default | Extra |
+--------+---------------+------+-----+---------+-------+
| id     | int           | NO   | PRI | NULL    |       |
| name   | varchar(20)   | YES  |     | NULL    |       |
| salary | decimal(10,2) | YES  |     | NULL    |       |
+--------+---------------+------+-----+---------+-------+
3 rows in set (0.05 sec)



mysql> SELECT * FROM pdemployee;
+----+------+----------+
| id | name | salary   |
+----+------+----------+
|  1 | Dipu | 30000.00 |
+----+------+----------+
1 row in set (0.00 sec)
'''