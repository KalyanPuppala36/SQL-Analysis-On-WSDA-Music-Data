SELECT
	upper(FirstName),
	lower(LastName),
	strftime('%d-%m-%Y',BirthDate) as DOB,
	strftime('%Y-%m-%d','now') - strftime('%Y-%m-%d',BirthDate) AS Age
FROM
	Employee
ORDER BY
	EmployeeId