CREATE VIEW City_VS_Global AS
SELECT
	BillingCity,
	AVG(Total) AS [City Average],
	(SELECT avg(total) FROM Invoice) AS [Global Average],
	CASE
	WHEN AVG(Total) < (SELECT avg(total) FROM Invoice) THEN 'Under Performing'
	WHEN AVG(Total) = (SELECT avg(total) FROM Invoice) THEN 'Average'
	ELSE  'High Performing'
	END AS Comparison
FROM
	Invoice
GROUP BY
	BillingCity
ORDER BY
	BillingCity