SELECT
	e.FirstName || ' ' || e.LastName AS Name,
	Sum(i.total) as [Total Sales]
FROM 
	Invoice i
INNER JOIN 
	Customer c
ON
	i.CustomerId = c.CustomerId
INNER JOIN
	Employee e
ON
	e.EmployeeId = c.SupportRepId
WHERE
	InvoiceDate >= '2011-01-01' and InvoiceDate < '2013-01-01'
AND 
		i.total>11.66
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY
	i.total DESC