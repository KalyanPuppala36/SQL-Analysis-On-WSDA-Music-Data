SELECT
	BillingCity,
	ROUND(AVG(Total),2) AS [Average Sales]
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity