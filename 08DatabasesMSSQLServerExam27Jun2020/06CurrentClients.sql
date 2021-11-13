SELECT c.FirstName + ' ' + c.LastName AS [Client],
        DATEDIFF(day, j.IssueDate, '04-24-2017') AS [Days going],
		j.Status AS [Status]

 FROM Jobs AS j
 INNER JOIN Clients AS c ON j.ClientId = c.ClientId
 WHERE j.Status != 'Finished'
 ORDER BY [Days going] DESC,
          c.ClientId ASC