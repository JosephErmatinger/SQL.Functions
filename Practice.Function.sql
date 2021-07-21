Practice 

create a function that will accept the following parameters firsName, lastname and gender.
the function should return the business appreciation greeting formatted as follows:
"we appreciate your business Mister John Brown"


CREATE FUNCTION Practice1 (@gender INT, @first VARCHAR(25), @last VARCHAR(25))
RETURNS VARCHAR(80)
AS
BEGIN
RETURN 'We appreciate your business ' + dbo.testChar(@gender) + ' ' + @first + ' ' + @last
END


SELECT [dbo].[Practice1]('1', 'Joe', 'Ermatinger')
