# 16/september/2026


'''
import mysql.connector   
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    print("Connection established")
    if conn.is_connected():
        print("connected to databse successfully")
    cursor = conn.cursor()
    query = "insert into pdemployee(id,name,salary) values(%s,%s,%s)"
    data = [(101, 'deepika',5000), (102, 'rashmika', 70000), (103, 'virat', 89000)]
    cursor.executemany(query, data)
    print("data is inserted")
    conn.commit()

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''



# Import done
# Connection established
# connected to databse successfully
# data is inserted
# inside finally block
# Connection closed successfully.


























'''
import mysql.connector   
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    print("Connection established")
    if conn.is_connected():
        print("connected to databse successfully")
    cursor = conn.cursor()
    query = "insert into pdemployee(id, name, salary) Values(%s, %s, %s)"
    n = int(input("Enter number of records "))
    data = []
    for i in range(n):
            print("Enter details")
            id = int(input("Enter employeee id"))
            name = input("Enter employee name")
            salary = float(input("Enter employee salary"))
            data.append((id,name,salary))
    
    cursor.executemany(query, data)
    conn.commit()
    print("record inserted successfully")
except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# Connection established
# connected to databse successfully
# Enter number of records 3  
# Enter details
# Enter employeee id104
# Enter employee namesneha
# Enter employee salary98989
# Enter details
# Enter employeee id105
# Enter employee namereena
# Enter employee salary90000
# Enter details
# Enter employeee id106
# Enter employee namemeena
# Enter employee salary343545
# record inserted successfully
# inside finally block
# Connection closed successfully.



























'''
import mysql.connector   
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    print("Connection established")
    if conn.is_connected():
        print("connected to databse successfully")

    cursor = conn.cursor()

    cursor.execute("select * from pdemployee")

    print("using fetchone")
    print(cursor.fetchone())    

    print("record show successfully")
    
    
    print("record inserted successfully")
except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''



# Import done
# Connection established
# connected to databse successfully
# using fetchone
# (1, 'Dipu', Decimal('30000.00'))
# record show successfully
# record inserted successfully
# inside finally block
# Connection closed successfully.



























'''
import mysql.connector   
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    print("Connection established")
    if conn.is_connected():
        print("connected to databse successfully")

    cursor = conn.cursor()

    cursor.execute("select * from pdemployee")
    print("using fetchmany")
    print(cursor.fetchmany(5))    
    print("record show successfully")    
    
    

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''



# Import done
# Connection established
# connected to databse successfully
# using fetchmany
# [(1, 'Dipu', Decimal('30000.00')), (101, 'deepika', Decimal('5000.00')), (102, 'rashmika', Decimal('70000.00')), (103, 'virat', Decimal('89000.00')), (104, 'sneha', Decimal('98989.00'))]
# record show successfully
# inside finally block
# Connection closed successfully.





































'''
import mysql.connector  
print("Import done")
try :

    
    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()
    cursor.execute("select * from pdemployee")
    print("using fetchall")
    print(cursor.fetchall())    
    print("record show successfully")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''


# Import done
# connected to database successfully
# using fetchall
# [(1, 'Dipu', Decimal('30000.00')), (101, 'deepika', Decimal('5000.00')), (102, 'rashmika', Decimal('70000.00')), (103, 'virat', Decimal('89000.00')), (104, 'sneha', Decimal('98989.00')), (105, 'reena', Decimal('90000.00')), (106, 'meena', Decimal('343545.00'))]
# record show successfully
# inside finally block
# Connection closed successfully.    































'''
import mysql.connector  
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    cursor.execute("select * from pdemployee")
    for row in cursor:
        print(row)
    print("record show successfully")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''


# Import done
# connected to database successfully
# (1, 'Dipu', Decimal('30000.00'))
# (101, 'deepika', Decimal('5000.00'))
# (102, 'rashmika', Decimal('70000.00'))
# (103, 'virat', Decimal('89000.00'))
# (104, 'sneha', Decimal('98989.00'))
# (105, 'reena', Decimal('90000.00'))
# (106, 'meena', Decimal('343545.00'))
# record show successfully
# inside finally block
# Connection closed successfully.    






































'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    cursor.execute("select * from pdemployee")
    row = cursor.fetchone()
    print(row[0])
    print(row[1])
    print(row[2])
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# connected to database successfully
# 1
# Dipu
# 30000.00
# done
# inside finally block
# Connection closed successfully.    



























'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor(dictionary = True)

    cursor.execute("select * from pdemployee")
    row = cursor.fetchone()
    print(row)
    print(row['name'])
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# connected to database successfully
# {'id': 1, 'name': 'Dipu', 'salary': Decimal('30000.00')}
# Dipu
# done
# inside finally block
# Connection closed successfully.    









































'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    cursor.execute("select * from pdemployee where salary > 50000")
    for row in cursor:
        print(row)
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''


# Import done
# connected to database successfully
# (102, 'rashmika', Decimal('70000.00'))
# (103, 'virat', Decimal('89000.00'))
# (104, 'sneha', Decimal('98989.00'))
# (105, 'reena', Decimal('90000.00'))
# (106, 'meena', Decimal('343545.00'))
# done
# inside finally block
# Connection closed successfully.



































'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    cursor.execute("select * from pdemployee")
    rows = cursor.fetchall()
    print(len(rows))
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# connected to database successfully
# 7
# done
# inside finally block
# Connection closed successfully.    



































'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    username = input("Enter Employee name : ")
    query = "select * from pdemployee where name = '" +username+ "'"
    cursor.execute(query)

    rows = cursor.fetchall()
    print(rows)
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# connected to database successfully
# Enter Employee name : rashmika 
# [(102, 'rashmika', Decimal('70000.00'))]
# done
# inside finally block
# Connection closed successfully.





























'''
import mysql.connector   # 1. Importing database after installing(through - pip install mysql-connector-python) 
print("Import done")
try :

    conn = mysql.connector.connect(host="localhost",port=3306,user="root",password="@umesh2005",database="batch18") 
    
    if conn.is_connected():
        print("connected to database successfully")
    cursor = conn.cursor()

    username = input("Enter Employee name : ")
    query = "select * from pdemployee where name = %s"
    cursor.execute(query,(username,))

    rows = cursor.fetchall()
    print(rows)
    print("done")

except Exception as e:
    print("Something went wrong",e)

finally :
    print("inside finally block")
    conn.close()
    print("Connection closed successfully.")
'''

# Import done
# connected to database successfully
# Enter Employee name : rashmika
# [(102, 'rashmika', Decimal('70000.00'))]
# done
# inside finally block
# Connection closed successfully.    