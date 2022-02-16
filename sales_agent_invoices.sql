sales_agent_invoices.sql

SELECT e.FirstName, e.LastName, i.InvoiceId
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice I ON i.CustomerId = c.CustomerId
group by c.CustomerId
ORDER bY e.LastName