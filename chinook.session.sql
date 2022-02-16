brazil_customers_invoices.sql

SELECT FirstName, LastName, Country, invoiceId, InvoiceDate 
FROM Customer
Inner Join Invoice 
where Country ="Brazil" 


SELECT e.FirstName as EmployeeFirst, e.LastName as EmployeeLast, c.FirstName, c.LastName, i.InvoiceId, sum(I.Total)
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice I ON i.CustomerId = c.CustomerId
group by c.CustomerId
ORDER bY e.LastName

SELECT t.Name, t.Composer, a.AlbumId, a.Title
FROM Track t
JOIN Album a ON a.AlbumId = t.AlbumId
LIMIT 10