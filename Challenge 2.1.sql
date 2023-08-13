SELECT
	c.FirstName || ' ' || c.LastName AS [Customer Name],
	e.FirstName || ' ' || e.LastName AS [Sales Rep Name],
	i.total
FROM
	Invoice i
INNER JOIN
	Customer c
ON
	c.CustomerId = i.CustomerId
INNER JOIN
	Employee e
ON
	e.EmployeeId = c.SupportRepId
WHERE
	i.InvoiceDate >='2011-01-01' AND i.InvoiceDate <'2013-01-01'
ORDER BY
	i.total DESC