CREATE PROCEDURE usp_GetTownsStartingWith(@searchedString VARCHAR(50))  
AS
BEGIN
   DECLARE @stringLen  INT = LEN(@searchedString)
SELECT t.[Name] 
FROM Towns AS t
WHERE LEFT(t.[Name], @stringLen) = @searchedString
END