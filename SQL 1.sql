SELECT
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name',
	Email AS [Customer Email]
FROM
	Customer
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT 15