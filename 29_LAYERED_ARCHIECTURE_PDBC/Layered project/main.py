from service.employee_service import EmployeeService
from model.employee import Employee
print("Welcome to our website")
ser = EmployeeService()
# ser.displayemployee()

# employee = Employee(1900,"Krishna",50000)
# ser.add_employee(employee)
employees = ser.display_all_employees()
print("=======Employee Details======")
for employee in employees:
    print(f"ID : {employee.id}\nName : {employee.name}\nSalary{employee.salary}")
    print("============")
