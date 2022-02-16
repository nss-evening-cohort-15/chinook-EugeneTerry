brazil_customers_invoices.sql

SELECT FirstName, LastName, Country, invoiceId, InvoiceDate 
FROM Customer
JOIN Invoice 
WHERE Country ="Brazil" 