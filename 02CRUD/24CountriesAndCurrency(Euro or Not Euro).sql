SELECT [CountryName], [CountryCode],
CASE 
    WHEN [Currencycode] = 'EUR' THEN 'Euro'
    ELSE 'Not Euro'
END AS [Currency]
FROM Countries
ORDER BY [CountryName] ASC    