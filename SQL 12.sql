SELECT 
	e.FirstName,
	e.LastName,
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total
FROM
	Invoice AS i
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee AS e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC,
	c.CustomerId