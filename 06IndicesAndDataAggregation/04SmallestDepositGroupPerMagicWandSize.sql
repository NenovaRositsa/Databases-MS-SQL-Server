SELECT TOP(2) DepositGroup FROM 
( SELECT DepositGroup, AVG(w.MagicWandSize) AS [AverageWandSize]
FROM WizzardDeposits AS w
GROUP BY DepositGroup ) AS [AverageWandSizeQuery]
ORDER BY [AverageWandSize]