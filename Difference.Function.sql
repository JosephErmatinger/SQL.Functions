CREATE FUNCTION DIFFERENCE (@num1 INT, @num2 INT)
RETURNS VARCHAR(80)
AS
	BEGIN
		DECLARE @dif INT
		DECLARE @msg VARCHAR(80)		
		IF @num1 > @num2
			SET @dif = @num1 - @num2
		ELSE 
			SET @dif = @num2 - @num1
		SET @msg = CONCAT('The Difference of the two numbers is ', @dif)
		RETURN @msg 
	END