SELECT * FROM (
 SELECT DepositGroup, MagicWandCreator, MIN(w.DepositCharge) AS [MinDepositCharge]
 FROM WizzardDeposits AS w
 GROUP BY DepositGroup, MagicWandCreator ) AS [MinDepositCharge]

 ORDER BY MagicWandCreator, DepositGroup