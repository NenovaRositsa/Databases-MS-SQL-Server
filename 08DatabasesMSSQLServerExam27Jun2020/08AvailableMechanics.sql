 SELECT m.FirstName + ' ' + m.LastName AS [Available]
          
   FROM Jobs AS j
    RIGHT JOIN Mechanics AS m ON m.MechanicId = j.MechanicId 
   WHERE j.[Status] = 'Finished'
   GROUP BY j.MechanicId, m.FirstName, m.LastName
   ORDER BY j.MechanicId ASC