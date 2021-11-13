SELECT DepartmentID, MIN(e.Salary) AS [MinimumSalary]
FROM Employees AS e
WHERE DepartmentID IN ('2', '5', '7') AND HireDate > '01/01/2000'
GROUP BY DepartmentID