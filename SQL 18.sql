SELECT
	BillingCountry,
	BillingCity,
	total,
	InvoiceDate
FROM
	Invoice
WHERE
	total < (
	SELECT
		avg(total)
	FROM
		Invoice
	)
ORDER BY
	Total DESC