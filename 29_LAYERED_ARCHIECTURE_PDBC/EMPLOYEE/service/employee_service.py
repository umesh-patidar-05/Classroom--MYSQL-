from dao.employee_dao import EmployeeDao

class EmployeeService:

    def search_employee_by_id(self, id):
        dao = EmployeeDao()
        employee = dao.get_employee_by_id(id)
        return employee    

    def display_all_employees(self):

        print("processing employee request")
        dao = EmployeeDao()
        employees = dao.get_all_employees()
        return employees

    def add_employee(self, employee):
        print("service adding employee")
        dao = EmployeeDao()
        dao.save_employee(employee)    
    