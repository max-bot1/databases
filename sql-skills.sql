--Artist Table

INSERT INTO artist (name)
VALUES ('Clash at Demonhead'), ('Maroon 5'), ('Sex Bob-Omb')

SELECT name FROM artist ORDER BY name ASC LIMIT 5

--Employee Table

SELECT first_name, last_name FROM employee WHERE city LIKE 'Calgary';

SELECT * 
FROM employee 
WHERE reports_to IN (
    SELECT employee_id from employee WHERE first_name LIKE 'Nancy' AND last_name LIKE 'Edwards'
  );

SELECT COUNT(*) FROM employee WHERE city LIKE 'Lethbridge';

--Invoice Table
SELECT COUNT(*) FROM invoice WHERE billing_country LIKE 'USA'

SELECT total from invoice ORDER BY total DESC LIMIT 1;

SELECT total from invoice ORDER BY total ASC LIMIT 1;

SELECT * FROM invoice WHERE total > 5

SELECT COUNT(*) FROM invoice WHERE total < 5

SELECT SUM(total) FROM invoice;

-- JOIN Queries

SELECT * 
FROM invoice 
JOIN invoice_line ON invoice_line.invoice_id = invoice.invoice_id
WHERE unit_price > 0.99;

SELECT invoice.invoice_date, c.first_name, c.last_name, invoice.total
FROM invoice 
JOIN customer c ON c.customer_id = invoice.customer_id;

SELECT c.first_name "Customer First Name", c.last_name "Customer Last Name", e.first_name "Employee First Name", e.last_name "Employee Last name"
FROM customer c
JOIN employee e ON e.employee_id = c.support_rep_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON ar.artist_id = al.artist_id;

--EXTRA CREDIT

--Artist Table

SELECT * FROM artist ORDER BY name DESC LIMIT 10

SELECT * FROM artist WHERE name LIKE 'Black%'

SELECT * FROM artist WHERE name LIKE '%Black%'

--Employee Table

SELECT birth_date FROM employee ORDER BY birth_date DESC LIMIT 1

SELECT birth_date FROM employee ORDER BY birth_date ASC LIMIT 1

--Invoice Table



--More Join Queries

