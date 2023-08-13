SELECT
	SUM(Total) as 'Total Sales',
	AVG(Total) as 'Average Sales',
	MAX(Total) as 'Max',
	MIN(total) as 'Min',
	count(Total) as 'Total Count',
	Round(AVG(Total),2) AS [ Average Rounded to 2 Digits]
FROM
	Invoice