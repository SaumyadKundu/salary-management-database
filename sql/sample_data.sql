-- Insert sample data into Employees Table
INSERT INTO Employees (EmployeeID, Name, DepartmentID, Salary, Benefits, HireDate, Email, Phone, Address)
VALUES
    (101, 'Alice Smith', 1, 60000, 'Health insurance, 401(k)', '2020-01-15', 'alice.smith@example.com', '123-456-7890', '123 Elm St'),
    (102, 'Bob Johnson', 1, 65000, 'Health insurance, stock options', '2019-08-20', 'bob.johnson@example.com', '987-654-3210', '456 Oak Ave'),
    (103, 'Charlie Brown', 2, 55000, 'Health insurance', '2021-03-10', 'charlie.brown@example.com', '555-123-4567', '789 Pine Rd');

-- Insert sample data into Departments Table
INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID, Location, Description)
VALUES
    (1, 'Engineering', 101, 'Headquarters', 'Handles product development and engineering tasks.'),
    (2, 'Marketing', 102, 'Branch Office', 'Responsible for promoting products and brand.');

-- Insert sample data into Salary Table
INSERT INTO Salary (SalaryID, EmployeeID, BaseSalary, Bonus, Deductions, NetSalary, EffectiveDate)
VALUES
    (1, 101, 60000, 5000, 2000, 63000, '2024-07-01'),
    (2, 102, 65000, 6000, 2500, 66500, '2024-07-01'),
    (3, 103, 55000, 4000, 1500, 57500, '2024-07-01');

-- Insert sample data into Attendance Table
INSERT INTO Attendance (AttendanceID, EmployeeID, Date, HoursWorked, LeaveType, Reason)
VALUES
    (1, 101, '2024-07-01', 8, NULL, NULL),
    (2, 101, '2024-07-02', 7.5, 'Vacation', 'Annual leave'),
    (3, 102, '2024-07-01', 8, NULL, NULL),
    (4, 103, '2024-07-01', 7.75, NULL, NULL);

-- Insert sample data into Transactions Table
INSERT INTO Transactions (TransactionID, TransactionType, EmployeeID, Amount, TransactionDate, Description)
VALUES
    (1, 'Salary Change', 101, 6000, '2024-07-01', 'Annual raise'),
    (2, 'New Employee', 103, 0, '2024-07-01', 'Charlie Brown joined Marketing department');
