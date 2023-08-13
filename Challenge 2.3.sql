SELECT
	Round(AVG(total),2) AS Average,
	strftime('%Y',InvoiceDate) AS Year
FROM
	Invoice
GROUP BY
		strftime('%Y',InvoiceDate)