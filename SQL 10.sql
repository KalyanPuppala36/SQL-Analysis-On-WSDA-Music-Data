SELECT 
	c.FirstName,
	c.LastName,
	i.InvoiceId,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total
FROM
	Invoice AS i
INNER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId