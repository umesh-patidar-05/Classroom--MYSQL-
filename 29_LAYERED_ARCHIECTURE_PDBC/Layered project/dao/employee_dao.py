from database.Connection import Database
from model.employee import Employee
class EmployeeDou:
    def get_all_employee(self):
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query="Select * from pdemployee1"
        cursor.execute(query)
        rows = cursor.fetchall()
        employees = []
        for row in rows:
            employee=Employee(row[0],row[1],row[2])
            employees.append(employee)
        cursor.close()
        conn.close()
        return employees

    def save_employee(self,employee):
        print("Dao Saving Employee Data")
        print("ID",employee.id)
        print("Name",employee.name)
        print("salary",employee.salary)
        db = Database()
        conn = db.connect()
        cursor = conn.cursor()
        query = "insert into pdemployee1(id,name,salary) values(%s,%s,%s)"
        data = (employee.id,employee.name,employee.salary)
        cursor.execute(query,data)
        conn.commit()
        print("Data Saved in table")
    