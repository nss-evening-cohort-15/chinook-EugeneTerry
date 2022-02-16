total_sales_{year}.sql

SELECT i.InvoiceId, sum(i.Total), i.Total, i.InvoiceDate
FROM Invoice i
WHERE InvoiceDate LIKE "2009%" OR
InvoiceDate LIKE "2011%"
GROUP by InvoiceDate