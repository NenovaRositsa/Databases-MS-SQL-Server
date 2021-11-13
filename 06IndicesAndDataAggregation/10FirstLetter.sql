SELECT DISTINCT LEFT(FirstName, 1) AS [FirstLetter]
	   FROM WizzardDeposits AS w
	   WHERE w.DepositGroup = 'Troll Chest'
	   ORDER BY FirstLetter