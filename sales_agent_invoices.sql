sales_agent_invoices.sql

SELECT i.*
  c.id as CustomerId,
  e.id as EmployeeId
From invoice as I
  JOIN Customer as c on