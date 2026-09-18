import mysql.connector
class Database:
    def connect(self):
        connection = mysql.connector.connect(host="localhost",user = 'root',password = '1234',database = "pdbc")

        print("Database connection created")
        return connection