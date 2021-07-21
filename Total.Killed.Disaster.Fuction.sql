CREATE FUNCTION TotalKilledDisaster (@country VARCHAR(25), @disasterID INT)
RETURNS INT
AS
	BEGIN
		DECLARE @total INT
		SELECT @total = SUM(Killed)
		FROM Disasters
		WHERE Country = @country
		AND DisasterID = @disasterID
		RETURN @total
	END;

SELECT Sum(Killed)
FROM Disasters
WHERE Country = 'Nigeria'
AND DisasterID = 5;