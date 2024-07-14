-- Example Query 1: Retrieve all employees with department details
SELECT e.EmployeeID, e.Name, d.DepartmentName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- Example Query 2: Retrieve employee details and their salary information
SELECT e.Name, e.Email, s.BaseSalary, s.Bonus, s.NetSalary
FROM Employees e
JOIN Salary s ON e.EmployeeID = s.EmployeeID;

-- Example Query 3: Calculate total salary expenditure per department
SELECT d.DepartmentName, SUM(s.NetSalary) AS TotalSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Salary s ON e.EmployeeID = s.EmployeeID
GROUP BY d.DepartmentName;

-- Example Query 4: Find the highest paid employee
SELECT e.Name, s.NetSalary
FROM Employees e
JOIN Salary s ON e.EmployeeID = s.EmployeeID
ORDER BY s.NetSalary DESC
LIMIT 1;
