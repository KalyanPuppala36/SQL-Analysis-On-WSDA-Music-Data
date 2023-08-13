SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	Invoice
WHERE
	total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
-- 	InvoiceDate LIKE '2010-05-22%'
ORDER BY
	InvoiceDate