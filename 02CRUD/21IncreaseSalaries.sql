 UPDATE Employees
     SET Salary += 0.12 * Salary
   WHERE DepartmentID IN (1, 2, 4, 11)
   
   SELECT [Salary] FROM Employees