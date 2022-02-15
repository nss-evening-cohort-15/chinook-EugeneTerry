non_usa_customers.sql

SELECT customerId, FirstName, LastName, Country
FROM Customer
where Country !="USA"