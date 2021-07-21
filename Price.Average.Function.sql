CREATE FUNCTION priceAVG(@categName VARCHAR(30))
RETURNS INT
AS
	BEGIN
		DECLARE @vavg INT
		DECLARE @tweight INT
		SELECT @vavg = AVG([ListPrice]), @tweight = SUM([Weight])
		FROM [SalesLT].[Product] P
		JOIN [SalesLT].[ProductCategory] PC
		ON P.ProductCategoryID = PC.ProductCategoryID
		WHERE PC.Name = @categName
		IF @tweight > 100
		  BEGIN
			SET @vavg +=100
		  END
		ELSE
		  BEGIN
			SET @vavg +=20
		  END
		RETURN @vavg
	END

SELECT [dbo].[priceAVG] ('Road Bikes')
