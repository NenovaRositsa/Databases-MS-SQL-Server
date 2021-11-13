SELECT m.FirstName + ' ' + m.LastName AS [Mechanic],
       j.Status AS [Status],
	   j.IssueDate
  FROM Jobs AS j
INNER JOIN Mechanics AS m ON m.MechanicId = j.MechanicId
ORDER BY m.MechanicId ASC,
         j.IssueDate ASC,
		 j.JobId ASC