SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	Date(InvoiceDate) BETWEEN '2010-05-22' AND '2010-06-22'
-- 	InvoiceDate LIKE '2010-05-22%'
ORDER BY
	InvoiceDate
LIMIT 5