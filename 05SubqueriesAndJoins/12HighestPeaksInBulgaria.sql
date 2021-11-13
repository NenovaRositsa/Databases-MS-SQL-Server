SELECT c.CountryCode, m.MountainRange, p.PeakName, p.Elevation
	FROM Countries AS c 
	INNER JOIN MountainsCountries AS mc ON mc.CountryCode = c.CountryCode
	INNER JOIN Mountains AS m ON mc.MountainId = m.Id
	INNER JOIN Peaks AS p ON P.MountainId = m.Id
	WHERE c.CountryName = 'Bulgaria' AND p.Elevation > 2835
	ORDER BY p.Elevation DESC