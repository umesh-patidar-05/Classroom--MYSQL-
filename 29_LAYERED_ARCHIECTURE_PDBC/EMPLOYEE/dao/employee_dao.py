from database.connection import Database
from model.employee import Employee

class EmployeeDao:

    def get_employee_by_id(self, id):
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM pdemployee WHERE id = %s"
        cursor.execute(query, (id,))
        row = cursor.fetchone()
        cursor.close()
        conn.close()
        if row is not None:
            employee = Employee(row[0], row[1], row[2])
            return employee
        else:
            return None



    def get_all_employees(self):
        print("dao getting employee data")
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "SELECT * FROM pdemployee"
        cursor.execute(query)
        rows = cursor.fetchall()
        employees = []
        for row in rows:
            employee = Employee(row[0], row[1], row[2])
            employees.append(employee)
        
        cursor.close()    
        conn.close()
        return employees


    def save_employee(self, employee):
        print("dao saving employee data")
        print("ID", employee.id)
        print("Name", employee.name)
        print("salary", employee.salary)
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "insert into pdemployee(id, name, salary) values(%s, %s, %s)"
        data = (employee.id, employee.name, employee.salary)
        cursor.execute(query, data)
        conn.commit()
        conn.close()
        print("data saved successful plz check table")

    