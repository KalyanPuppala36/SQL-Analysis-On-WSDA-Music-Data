SELECT
	BillingCountry,
	BillingCity,
	ROUND(AVG(Total),2) AS [Average Sales]
FROM
	Invoice
WHERE
	BillingCity LIKE 'B%'
-- 	AVG(Total) > 5.00
GROUP BY
	BillingCountry,BillingCity
HAVING
	AVG(Total)>5.00
ORDER BY
	BillingCountry