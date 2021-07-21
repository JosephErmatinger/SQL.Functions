USE AdventureWorksLT
GO
CREATE FUNCTION avgListPrice(@categName VARCHAR(25))
RETURNS INT
AS
BEGIN
	DECLARE @average INT
	SELECT  @average = AVG([ListPrice])
	FROM[SalesLT].[ProductCategory] PC JOIN [SalesLT].[Product] P
	ON PC.[ProductCategoryID] = P.[ProductCategoryID]
	WHERE PC.[Name] = @categName
	GROUP BY PC.Name
	IF @average > 100
		SET @average += 100
    ELSE
		SET @average +=20
	RETURN  @average
END

SELECT [dbo].[avgListPrice] ('Bikes')