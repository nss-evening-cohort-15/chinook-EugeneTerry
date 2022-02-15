brazil_customers_invoices.sql

SELECT FirstName, LastName, Country, invoiceId, InvoiceDate 
FROM Customer
Inner Join Invoice 
where Country ="Brazil" 