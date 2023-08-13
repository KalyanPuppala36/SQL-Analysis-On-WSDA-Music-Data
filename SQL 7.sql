SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	Date(InvoiceDate)  > '2010-05-22' AND total < 3.00
-- 	InvoiceDate LIKE '2010-05-22%'
ORDER BY
	InvoiceDate