SELECT
	BillingAddress,
	BillingCity,
	InvoiceDate
FROM
	Invoice
WHERE
	InvoiceDate IN (
	SELECT
		InvoiceDate
	FROM
		Invoice
	WHERE
		InvoiceId IN (251, 254,252)
	)
ORDER BY
	InvoiceDate