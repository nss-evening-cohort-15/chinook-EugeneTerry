invoice_totals.sql

SELECT e.FirstName as AgentFirst, e.LastName as AgentLast, c.FirstName, c.LastName, c.Country, i.InvoiceId, round(sum(I.Total), 4) as Total
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice I ON i.CustomerId = c.CustomerId
group by c.CustomerId
ORDER bY e.LastName