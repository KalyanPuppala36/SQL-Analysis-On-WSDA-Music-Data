SELECT
	FirstName || ' ' || LastName AS Name,
	Phone,
	FirstName || ' ' || LastName || ' ' || Address || ', ' || City || ', ' || State || ' - ' || PostalCode AS [Mailing Address],
	length(PostalCode),
	substr(postalcode, 1, 5) as [5 Digit PostalCode]
FROM
	Customer
WHERE
	Country = 'USA'