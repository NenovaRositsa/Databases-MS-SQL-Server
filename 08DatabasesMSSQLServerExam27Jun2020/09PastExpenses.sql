SELECT j.JobId,
       SUM(p.Price) AS [Total]
       
 FROM Jobs AS j

LEFT JOIN Orders AS o ON o.JobId = j.JobId
LEFT JOIN OrderParts AS op ON op.OrderId = o.OrderId
LEFT JOIN Parts AS p ON P.PartId = OP.PartId
WHERE j.Status = 'Finished'
GROUP BY j.JobId
ORDER BY [Total] DESC,
         j.JobId ASC