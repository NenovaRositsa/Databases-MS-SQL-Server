SELECT m.FirstName + ' ' + m.LastName AS [Mechanic],
         AVG(DATEDIFF(day, j.IssueDate, j.FinishDate)) AS [Average Days]
   FROM Mechanics AS m
   INNER JOIN Jobs AS j ON j.MechanicId = m.MechanicId
   WHERE j.Status = 'Finished'
   GROUP BY m.MechanicId, m.FirstName, m.LastName
   ORDER BY m.MechanicId ASC 