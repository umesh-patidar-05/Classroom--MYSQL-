# 17/sept/2026


'''
import mysql.connector  
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    name = input("Enter name")
    salary = float(input("enter salary "))

    query = "select * from pdemployee where name = %s and salary > %s"
    cursor.execute(query, (name, salary))

    for row in cursor.fetchall():
        print(row)

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''



# Import done
# connected to database successfully
# Enter namedeepika
# enter salary 1000
# (101, 'deepika', Decimal('5000.00'))
# inside finally block
# Connection closed successfully.








# dynamic insert

'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
if conn.is_connected():
    print("connected to database successfully")

cursor = conn.cursor()

id = int(input("enter id"))
name = input("Enter name")
salary = float(input("enter salary "))

query = "insert into pdemployee(id, name, salary) values(%s, %s, %s)"
cursor.execute(query, (id,name, salary))
conn.commit()

print('data inserted')
conn.close()
'''


# connected to database successfully
# enter id107
# Enter namesuraj
# enter salary 89898
# data inserted








'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
cursor = conn.cursor()

id = int(input("enter id"))
salary = float(input("Enter salary"))


query = "update pdemployee set salary = %s Where id = %s"

cursor.execute(query, (salary, id))
conn.commit()

print('data inserted')
conn.close()
'''



# enter id101
# Enter salary70000
# data inserted







# MYSQL

# mysql> SELECT * FROM pdemployuee;
# ERROR 1146 (42S02): Table 'batch18.pdemployuee' doesn't exist
# mysql> SELECT * FROM pdemployee;
# +-----+----------+----------+
# | id  | name     | salary   |
# +-----+----------+----------+
# | 101 | deepika  |  5000.00 |
# | 102 | rashmika | 70000.00 |
# | 103 | virat    | 89000.00 |
# | 104 | sneha    | 89999.00 |
# | 105 | vishnu   | 66666.00 |
# | 106 | vanshika | 44444.00 |
# +-----+----------+----------+
# 6 rows in set (0.02 sec)

# mysql> deepika
#     -> deepika

# ^C
# mysql> 
# mysql> SELECT * FROM pdemployee;
# +-----+----------+----------+
# | id  | name     | salary   |
# +-----+----------+----------+
# | 101 | deepika  | 70000.00 |
# | 102 | rashmika | 70000.00 |
# | 103 | virat    | 89000.00 |
# | 104 | sneha    | 89999.00 |
# | 105 | vishnu   | 66666.00 |
# | 106 | vanshika | 44444.00 |
# | 107 | suraj    | 89898.00 |
# +-----+----------+----------+
# 7 rows in set (0.00 sec)






# new page


'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
cursor = conn.cursor()

id = int(input("enter id"))

query = "delete from  pdemployee Where id = %s"

cursor.execute(query, (id,))
conn.commit()

print('data deleted')
conn.close()
'''

# enter id101
# data deleted


# mysql> SELECT * FROM pdemployee;
# +-----+----------+----------+
# | id  | name     | salary   |
# +-----+----------+----------+
# | 102 | rashmika | 70000.00 |
# | 103 | virat    | 89000.00 |
# | 104 | sneha    | 89999.00 |
# | 105 | vishnu   | 66666.00 |
# | 106 | vanshika | 44444.00 |
# | 107 | suraj    | 89898.00 |
# +-----+----------+----------+
# 6 rows in set (0.00 sec)










# dynamic query with like



'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
cursor = conn.cursor()
name = input("Enter name ")
query = "SELECT * from  pdemployee Where name like %s"

cursor.execute(query, (name+"%",))

for row in cursor.fetchall():
    print(row)

conn.close()


# Enter name s
# (104, 'sneha', Decimal('89999.00'))
# (107, 'suraj', Decimal('89898.00'))
'''







# new page 

'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
cursor = conn.cursor()
name = input("Enter name ")
query = "SELECT * from  pdemployee Where name like %s"

cursor.execute(query, ("%"+name,))

for row in cursor.fetchall():
    print(row)

conn.close()
'''

# Enter name a
# (102, 'rashmika', Decimal('70000.00'))
# (104, 'sneha', Decimal('89999.00'))
# (106, 'vanshika', Decimal('44444.00'))






# new page


''''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18") # Connection establish
    
cursor = conn.cursor()
name = input("Enter name ")
query = "SELECT * from  pdemployee Where name like %s"

cursor.execute(query, ("%"+name+"%",))

for row in cursor.fetchall():
    print(row)

conn.close()
'''
# Enter name a
# (102, 'rashmika', Decimal('70000.00'))
# (103, 'virat', Decimal('89000.00'))
# (104, 'sneha', Decimal('89999.00'))
# (106, 'vanshika', Decimal('44444.00'))
# (107, 'suraj', Decimal('89898.00'))









# dynamic query with in 



'''
import mysql.connector
conn = mysql.connector.connect(host="localhost",port=3306,user="pythonuser",password="Python@1234",database="batch18")
    
cursor = conn.cursor()

ids = [102, 103, 104]

query = "SELECT * from  pdemployee Where id in (%s, %s, %s)"

cursor.execute(query, tuple(ids))

for row in cursor.fetchall():
    print(row)

conn.close()
'''


# 102, 'rashmika', Decimal('70000.00'))
# (103, 'virat', Decimal('89000.00'))
# (104, 'sneha', Decimal('89999.00'))















# new page 
# hw