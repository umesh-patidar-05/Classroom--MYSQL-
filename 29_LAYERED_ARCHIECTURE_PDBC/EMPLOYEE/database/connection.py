import mysql.connector


class Database:
    def connect(self):
        connection = mysql.connector.connect(host = 'localhost', user = 'pythonuser', password = 'Python@1234', database = 'batch18')
        return connection