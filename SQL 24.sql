CREATE VIEW Track_InvoiceLine AS
SELECT
	DISTINCT
	il.InvoiceId,
	il.UnitPrice,
	il.Quantity,
	t.Name,
	t.Composer,
	t.Milliseconds
FROM
	InvoiceLine il
INNER JOIN
	Track t
WHERE
	t.TrackId= il.TrackId