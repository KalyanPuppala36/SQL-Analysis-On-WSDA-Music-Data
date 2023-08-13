SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total IN(1.98,3.96,5.94)
ORDER BY
	InvoiceDate