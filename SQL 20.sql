SELECT
	BillingAddress,
	BillingCity,
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceDate >(
SELECT
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceId = 251
)