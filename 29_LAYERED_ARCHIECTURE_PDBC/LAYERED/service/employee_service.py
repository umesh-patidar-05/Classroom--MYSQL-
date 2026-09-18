from dao.employee_dao import EmployeeDao

class EmployeeService:
    def displayemployee(self):

        print("processing employee request")
        dao = EmployeeDao()
        dao.getemployee()

    def add_employee(self, employee):
        print("service adding employee")
        dao = EmployeeDao()
        dao.save_employee(employee)    