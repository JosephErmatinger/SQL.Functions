CREATE FUNCTION f_search(@id INT)
RETURNS INT
AS
BEGIN
DECLARE @count INT
SELECT @count = COUNT(CustomerID)
FROM SalesLT.Customer
WHERE CustomerID = @id
RETURN @count
END