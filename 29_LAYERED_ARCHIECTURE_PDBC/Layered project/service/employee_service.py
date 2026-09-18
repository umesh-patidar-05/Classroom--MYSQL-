from dao.employee_dao import EmployeeDou
class EmployeeService:
    def display_all_employees(self):
        print("Processing Employee Request")
        emp = EmployeeDou()
        employees = emp.get_all_employee()
        return employees
    def add_employee(self,employee):
        print("Service adding Employee")
        dao = EmployeeDou()
        dao.save_employee(employee)   
        