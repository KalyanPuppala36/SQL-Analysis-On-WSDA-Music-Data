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
LEFT OUTER JOIN
	Customer AS c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.CustomerId