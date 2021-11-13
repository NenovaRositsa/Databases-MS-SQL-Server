SELECT COUNT(EmployeeID) AS [Count]
FROM Employees AS e
WHERE e.ManagerID IS NULL