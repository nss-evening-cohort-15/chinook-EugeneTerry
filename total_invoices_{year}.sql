total_invoices_{year}.sql

SELECT COUNT(InvoiceId) as 'Invoice Count 2009 and 2011'
FROM Invoice
WHERE InvoiceDate LIKE "2009%" OR
InvoiceDate LIKE "2011%"


SELECT COUNT(*), (strftime('%Y', InvoiceDate)) as 'Invoice Count 2009 and 2011'
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009' OR strftime('%Y', InvoiceDate) = '2011'
GROUP by Invoice.InvoiceDate