SELECT
	Count(total) AS [Num of transactions above average]
FROM
	Invoice
WHERE
	total>(
	SELECT
		round(avg(total),2)
	FROM
		Invoice
	WHERE
		InvoiceDate >='2011-01-01' and InvoiceDate <'2013-01-01'
	)
	AND 
	InvoiceDate >='2011-01-01' AND InvoiceDate <'2013-01-01'