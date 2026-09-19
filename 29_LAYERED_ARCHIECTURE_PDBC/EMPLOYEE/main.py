from service.employee_service import EmployeeService
from model.employee import Employee

print("welcome to our website")

while True:
    print("1. Display all employees")
    print("2. Add new Employee")    
    print("3. Search Employee by id")
    print("4. Exit")
    print()
    choice = int(input("Enter your choice: "))
    match choice:
        case 1:
            service = EmployeeService()
            employees = service.display_all_employees()
            for employee in employees:
            
                print("ID: ", employee.id)
                print("Name: ", employee.name)
                print("Salary: ", employee.salary)            

        case 2:
            service = EmployeeService()                    
            id = int(input("Enter id: "))
            name = input("Enter name: ")
            salary = float(input("Enter salary: "))
            employee = Employee(id, name, salary)
            service.add_employee(employee)            

        case 3:

            id = int(input("Enter employee id"))
            employee = service.search_employee_by_id(id)
            
            if employee is None:
                print("Employee not found")
            
            else:
                print("ID", employee.id)
                print("Name", employee.name)
                print("Salary", employee.salary)   

        case 4:
            print("Thankyouu.......")
            break

        case _:
            print("Invalid choice.....")
        