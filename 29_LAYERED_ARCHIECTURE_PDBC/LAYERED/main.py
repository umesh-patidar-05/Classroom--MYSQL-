from service.employee_service import EmployeeService
from model.employee import Employee

print("welcome to our website")
service = EmployeeService()
# service.displayemployee()

employee = Employee(1761, 'krishna', 9766)
service.add_employee(employee)