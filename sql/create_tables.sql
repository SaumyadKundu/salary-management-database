-- Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    Benefits VARCHAR(255),
    HireDate DATE,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(255),
    CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    ManagerID INT,
    Location VARCHAR(100),
    Description TEXT
);

-- Salary Table
CREATE TABLE Salary (
    SalaryID INT PRIMARY KEY,
    EmployeeID INT,
    BaseSalary DECIMAL(10, 2),
    Bonus DECIMAL(10, 2),
    Deductions DECIMAL(10, 2),
    NetSalary DECIMAL(10, 2),
    EffectiveDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Attendance Table
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY,
    EmployeeID INT,
    Date DATE,
    HoursWorked DECIMAL(5, 2),
    LeaveType VARCHAR(50),
    Reason TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Transactions Table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    TransactionType VARCHAR(100),
    EmployeeID INT,
    Amount DECIMAL(10, 2),
    TransactionDate DATE,
    Description TEXT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
