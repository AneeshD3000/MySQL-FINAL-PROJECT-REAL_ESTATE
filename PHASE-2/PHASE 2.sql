/*

===============================
 P H A S E - 2 
===============================

Applying All Query Languages (DDL, DML, DQL)

- DDL (Data Definition Language):
        CREATE, ALTER, DROP, TRUNCATE, RENAME
        
- DML (Data Manipulation Language):
       INSERT, UPDATE, DELETE

- DQL (Data Query Language):
      SELECT, DISTINCT, aggregation functions etc.

 Queries Using Operators, Clauses & Alias

- Operators:
Arithmetic (+, -, *, /)
Comparison (=, <, >, !=, <=, >=)
Logical (AND, OR, NOT)
Special (IN, BETWEEN, LIKE, IS NULL) etc.

- Clauses:
  WHERE, ORDER BY, GROUP BY, HAVING, LIMIT

- Alias

Cascades (ON DELETE / ON UPDATE CASCADE)

- Demonstrate Foreign Key constraints with Cascade rules.

*/


use RealEstateDBS;

-- Creating New tables using DML
-- facilities TABLE
CREATE TABLE IF NOT EXISTS Offers (
    offer_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    customer_id INT NOT NULL,
    offer_amount DECIMAL(12,2),
    offer_date DATE,
    status ENUM('Pending','Accepted','Rejected') DEFAULT 'Pending',
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

-- customer review TABLE
CREATE TABLE IF NOT EXISTS Ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    property_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    review TEXT,
    rating_date DATE,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);



-- DML QUERIES (INSERT, UPDATE, DELETE)


-- USERS TABLE

-- 1. Insert new user
INSERT INTO Users (full_name, email, phone, password, role, address, city, state, postal_code)
VALUES ('Divya Rathi', 'divya.rathi@example.com', '9999900034', 'pass456', 'Customer', '12 Palm Street', 'Pune', 'Maharashtra', '411004');

-- 2. Update user's role
UPDATE Users
SET role='Agent'
WHERE email='neha.singh@example.com';

-- 3. Delete a user by phone
DELETE FROM Users
WHERE phone='9999900028';

INSERT INTO Users (first_name, last_name, email, password, role)
VALUES 
('Aneesh','D','aneesh@example.com','pass123','Customer'),
('Riya','K','riya@example.com','pass456','Agent');

UPDATE Users
SET role='Admin'
WHERE email='aneesh@example.com';

DELETE FROM Users
WHERE email='riya@example.com';

-- PROPERTIES TABLE
-- Insert a new property
INSERT INTO Properties (title, description, property_type, status, price, area_sqft, bedrooms, bathrooms, owner_id, address, city, state, postal_code)
VALUES ('3BHK Sea View Apartment','Facing Arabian Sea, semi-furnished','Apartment','Available',18000000,1400,3,2,27,'33 Beach Road','Mumbai','Maharashtra','400010');

-- Update property status
UPDATE Properties
SET status='Rented'
WHERE property_id=6;

--  Delete a property by city
DELETE FROM Properties
WHERE city='Indore' AND bedrooms=2;


INSERT INTO Properties (agent_id, title, type, price, area_sqft, location, status)
VALUES 
(1, 'Ocean View Apartment', 'Apartment', 120000, 1200, 'Mumbai', 'Available'),
(1, 'Green Villa', 'House', 250000, 3000, 'Pune', 'Available');

UPDATE Properties
SET price = 130000
WHERE title='Ocean View Apartment';

DELETE FROM Properties
WHERE status='Sold';

-- AGENTS TABLE
INSERT INTO Agents (user_id, license_no, experience_years)
VALUES (2, 'LIC12345', 5);

UPDATE Agents
SET experience_years = 6
WHERE license_no='LIC12345';

DELETE FROM Agents
WHERE experience_years < 2;

-- CUSTOMERS TABLE
INSERT INTO Customers (user_id, phone, address)
VALUES (1,'9876543210','Mumbai, India');

UPDATE Customers
SET address='Pune, India'
WHERE customer_id=1;

DELETE FROM Customers
WHERE phone='0000000000';

-- PROPERTY_IMAGES TABLE
INSERT INTO PropertyImages (property_id, image_url, description)
VALUES (1,'https://example.com/img1.jpg','Front view of the apartment');

UPDATE PropertyImages
SET description='Updated front view'
WHERE image_id=1;

DELETE FROM PropertyImages
WHERE image_id=99;

-- AMENITIES TABLE
INSERT INTO Amenities (name)
VALUES ('Swimming Pool'), ('Gym'), ('Park');

UPDATE Amenities
SET name='Fitness Center'
WHERE name='Gym';

DELETE FROM Amenities
WHERE name='Park';

-- PROPERTY_FEATURES TABLE
INSERT INTO PropertyFeatures (property_id, feature_name, feature_value)
VALUES (1,'Bedrooms','3'),(1,'Bathrooms','2');

UPDATE PropertyFeatures
SET feature_value='4'
WHERE feature_name='Bedrooms' AND property_id=1;

DELETE FROM PropertyFeatures
WHERE feature_name='Bathrooms' AND property_id=1;

-- TRANSACTIONS TABLE
INSERT INTO Transactions (property_id, customer_id, agent_id, transaction_type, amount, transaction_date)
VALUES (1,1,2,'Sale',120000,'2025-10-18');

UPDATE Transactions
SET amount=125000
WHERE transaction_id=1;

DELETE FROM Transactions
WHERE transaction_id=99;

-- PAYMENTS TABLE
INSERT INTO Payments (transaction_id, payment_date, amount, payment_method, status)
VALUES (1,'2025-10-19',50000,'Bank Transfer','Completed');

UPDATE Payments
SET status='Pending'
WHERE payment_id=1;

DELETE FROM Payments
WHERE payment_id=99;

-- INVOICES TABLE
INSERT INTO Invoices (transaction_id, invoice_date, total_amount)
VALUES (1,'2025-10-19',125000);

UPDATE Invoices
SET total_amount=130000
WHERE invoice_id=1;

DELETE FROM Invoices
WHERE invoice_id=99;

-- LOANS TABLE
INSERT INTO Loans (customer_id, property_id, bank_name, loan_amount, interest_rate, tenure_years)
VALUES (1,1,'HDFC Bank',80000,7.5,10);

UPDATE Loans
SET interest_rate=8
WHERE loan_id=1;

DELETE FROM Loans
WHERE loan_id=99;

-- INSTALLMENTS TABLE
INSERT INTO Installments (loan_id, due_date, amount, status)
VALUES (1,'2025-11-01',8000,'Pending');

UPDATE Installments
SET status='Paid'
WHERE installment_id=1;

DELETE FROM Installments
WHERE installment_id=99;

-- COMMISSION TABLE
INSERT INTO Commission (agent_id, transaction_id, amount, paid_date)
VALUES (2,1,5000,'2025-10-20');

UPDATE Commission
SET amount=6000
WHERE commission_id=1;

DELETE FROM Commission
WHERE commission_id=99;

-- MAINTENANCE_REQUESTS TABLE
INSERT INTO MaintenanceRequests (property_id, customer_id, description, status, request_date)
VALUES (1,1,'Leaking faucet','Pending','2025-10-18');

UPDATE MaintenanceRequests
SET status='In Progress'
WHERE request_id=1;

DELETE FROM MaintenanceRequests
WHERE request_id=99;

-- TENANCIES TABLE
INSERT INTO Tenancies (property_id, customer_id, start_date, end_date, rent_amount)
VALUES (1,1,'2025-10-01','2026-09-30',20000);

UPDATE Tenancies
SET rent_amount=22000
WHERE tenancy_id=1;

DELETE FROM Tenancies
WHERE tenancy_id=99;

-- PROPERTY_DOCUMENTS TABLE
INSERT INTO PropertyDocuments (property_id, document_type, file_url)
VALUES (1,'Sale Deed','https://example.com/sale_deed.pdf');

UPDATE PropertyDocuments
SET file_url='https://example.com/updated_sale_deed.pdf'
WHERE document_id=1;

DELETE FROM PropertyDocuments
WHERE document_id=99;

-- FEEDBACK TABLE
INSERT INTO Feedback (customer_id, property_id, rating, comment, feedback_date)
VALUES (1,1,5,'Excellent property','2025-10-18');

UPDATE Feedback
SET rating=4
WHERE feedback_id=1;

DELETE FROM Feedback
WHERE feedback_id=99;


-- Arithmetic Operator: Count total characters in first_name
SELECT first_name, LENGTH(first_name) + LENGTH(last_name) AS FullNameLength
FROM Users;

-- Comparison & Logical Operators: Find all non-admin users
SELECT * 
FROM Users
WHERE role != 'Admin' AND email IS NOT NULL;

-- IN / BETWEEN / LIKE / IS NULL
SELECT * 
FROM Users
WHERE role IN ('Agent','Customer') 
  AND user_id BETWEEN 1 AND 10
  AND email LIKE '%@example.com';

-- ORDER BY & LIMIT
SELECT * FROM Users
ORDER BY user_id DESC
LIMIT 5;

-- Table alias example
SELECT u.first_name, u.email
FROM Users u
WHERE u.role='Customer';



-- Arithmetic: Price per sqft
SELECT property_id, price / area_sqft AS PricePerSqft
FROM Properties;

-- Comparison + Logical
SELECT *
FROM Properties
WHERE price > 100000 AND status='Available';

-- BETWEEN, LIKE
SELECT * 
FROM Properties
WHERE area_sqft BETWEEN 1000 AND 3000
  AND title LIKE '%Villa%';

-- ORDER BY & LIMIT
SELECT * FROM Properties
ORDER BY price DESC
LIMIT 3;

-- Alias example
SELECT p.title AS PropertyTitle, p.price AS PropertyPrice
FROM Properties p
WHERE p.status='Available';



-- Aggregate with GROUP BY & HAVING
SELECT property_id, COUNT(*) AS TotalTransactions, SUM(amount) AS TotalAmount
FROM Transactions
GROUP BY property_id
HAVING TotalAmount > 100000;

-- Logical & Comparison Operators
SELECT * 
FROM Transactions
WHERE transaction_type='Sale' AND amount >= 100000;

-- Table alias example
SELECT t.transaction_id, t.amount, c.first_name
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id;

-- Calculate total price including a 5% tax for all properties
SELECT property_id, title, price, price*1.05 AS price_with_tax
FROM Properties;

-- Find all customers whose budget_max is greater than 20,000,000
SELECT customer_id, user_id, budget_max 
FROM Customers 
WHERE budget_max > 20000000;

-- Select agents with rating above 4 and total_sales above 50
SELECT agent_id, license_number, rating, total_sales 
FROM Agents 
WHERE rating > 4 AND total_sales > 50;

-- List properties with area between 1000 and 3000 sqft
SELECT property_id, title, area_sqft 
FROM Properties 
WHERE area_sqft BETWEEN 1000 AND 3000;

-- Show all users from Maharashtra or Gujarat
SELECT user_id, full_name, state 
FROM Users 
WHERE state IN ('Maharashtra','Gujarat');

-- Find all properties not yet featured
SELECT property_id, title, is_featured 
FROM Properties 
WHERE NOT is_featured;

-- List customers whose family_size is more than 3 or interested in Villa
SELECT customer_id, family_size, preferred_property_type 
FROM Customers 
WHERE family_size > 3 OR preferred_property_type='Villa';

-- Show properties in Mumbai or Pune and price above 10,000,000
SELECT property_id, title, city, price 
FROM Properties 
WHERE (city='Mumbai' OR city='Pune') AND price > 10000000;

-- Calculate average rating of all agents
SELECT AVG(rating) AS avg_agent_rating FROM Agents;

-- Count number of properties per city
SELECT city, COUNT(*) AS total_properties 
FROM Properties 
GROUP BY city;

-- List cities having more than 2 properties
SELECT city, COUNT(*) AS property_count 
FROM Properties 
GROUP BY city 
HAVING COUNT(*) > 2;

-- Show top 5 most expensive properties
SELECT property_id, title, price 
FROM Properties 
ORDER BY price DESC 
LIMIT 5;

-- Select customers with budget_max greater than budget_min + 5000000
SELECT customer_id, budget_min, budget_max, budget_max - budget_min AS difference 
FROM Customers 
WHERE budget_max - budget_min > 5000000;

-- Display all properties where bedrooms equal bathrooms
SELECT property_id, title, bedrooms, bathrooms 
FROM Properties 
WHERE bedrooms = bathrooms;

-- Show properties whose title contains 'Apartment'
SELECT property_id, title, city 
FROM Properties 
WHERE title LIKE '%Apartment%';

-- List agents whose total_sales is not equal to 0
SELECT agent_id, full_name, total_sales 
FROM Agents 
WHERE total_sales != 0;

-- Calculate remaining loan amount for all customers
SELECT loan_id, customer_id, total_amount, paid_amount, total_amount - paid_amount AS remaining_amount 
FROM Loans;

-- Show appointments scheduled in the next 7 days
SELECT appointment_id, property_id, customer_id, appointment_date 
FROM Appointments 
WHERE appointment_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

-- Select properties where owner is NULL (unassigned)
SELECT property_id, title, owner_id 
FROM Properties 
WHERE owner_id IS NULL;

-- List tenants with rent greater than the average rent
SELECT tenant_id, property_id, rent_amount 
FROM Tenancies 
WHERE rent_amount > (SELECT AVG(rent_amount) FROM Tenancies);

-- Show properties and number of amenities each has
SELECT p.property_id, p.title, COUNT(a.amenity_id) AS total_amenities 
FROM Properties p
LEFT JOIN Amenities a ON p.property_id = a.property_id
GROUP BY p.property_id, p.title;

-- Display payments greater than 50% of invoice amount
SELECT payment_id, invoice_id, amount, amount/invoice_amount*100 AS percentage_paid
FROM Payments;

-- Select properties whose area is greater than average area
SELECT property_id, title, area_sqft 
FROM Properties 
WHERE area_sqft > (SELECT AVG(area_sqft) FROM Properties);

-- Show agents with rating lower than the lowest commission agent
SELECT agent_id, full_name, rating 
FROM Agents 
WHERE rating < (SELECT MIN(commission_rate) FROM Commission);

-- List maintenance requests pending for more than 10 days
SELECT request_id, property_id, request_date, DATEDIFF(CURDATE(), request_date) AS pending_days 
FROM MaintenanceRequests 
WHERE DATEDIFF(CURDATE(), request_date) > 10;

-- Display properties with price per sqft greater than 5000
SELECT property_id, title, price, area_sqft, price/area_sqft AS price_per_sqft 
FROM Properties 
WHERE price/area_sqft > 5000;


-- Arithmetic: Remaining balance calculation
SELECT payment_id, amount, amount * 0.1 AS TaxAmount
FROM Payments;

-- Comparison + Logical
SELECT *
FROM Payments
WHERE status='Pending' OR status='Failed';

-- ORDER BY
SELECT *
FROM Payments
ORDER BY payment_date DESC;

-- Alias
SELECT p.payment_id AS PID, t.transaction_id AS TID, p.amount
FROM Payments p
JOIN Transactions t ON p.transaction_id = t.transaction_id;



-- Join + Arithmetic + Alias
SELECT l.loan_id, l.loan_amount, i.amount AS InstallmentAmount, i.amount*12 AS AnnualInstallment
FROM Loans l
JOIN Installments i ON l.loan_id=i.loan_id;

-- Comparison + Logical
SELECT *
FROM Loans
WHERE interest_rate > 7 AND tenure_years <= 10;


-- Aggregate example: Count features per property
SELECT property_id, COUNT(*) AS FeatureCount
FROM PropertyFeatures
GROUP BY property_id;

-- WHERE + LIKE
SELECT *
FROM Amenities
WHERE name LIKE '%Pool%';

-- cascading queries

-- Delete a user and cascade delete all their properties
DELETE FROM Users WHERE user_id = 101;

-- Update a customer ID and cascade update in Loans table
UPDATE Customers SET customer_id = 201 WHERE customer_id = 200;

-- Delete an agent and cascade delete their assigned properties
DELETE FROM Agents WHERE agent_id = 15;

-- Update property ID and cascade update in Appointments table
UPDATE Properties SET property_id = 301 WHERE property_id = 300;

-- Delete a property and cascade delete all its images
DELETE FROM PropertyImages WHERE property_id = 402;

-- Update property ID and cascade update in PropertyFeatures table
UPDATE Properties SET property_id = 503 WHERE property_id = 500;

-- Delete a customer and cascade delete all their appointments
DELETE FROM Customers WHERE customer_id = 205;

-- Update agent ID and cascade update in Commission table
UPDATE Agents SET agent_id = 18 WHERE agent_id = 17;

-- Delete a property and cascade delete related maintenance requests
DELETE FROM Properties WHERE property_id = 607;

-- Update property ID and cascade update in Transactions table
UPDATE Properties SET property_id = 710 WHERE property_id = 700;

-- Delete a loan and cascade delete all related installments
DELETE FROM Loans WHERE loan_id = 301;

-- Update invoice ID and cascade update in Payments table
UPDATE Invoices SET invoice_id = 401 WHERE invoice_id = 400;

-- Delete a property and cascade delete all offers related to it
DELETE FROM Properties WHERE property_id = 808;

-- Update customer ID and cascade update in PropertyReviews table
UPDATE Customers SET customer_id = 220 WHERE customer_id = 210;

-- Delete a tenancy and cascade delete related payments
DELETE FROM Tenancies WHERE tenancy_id = 101;

-- Update property ID and cascade update in Utilities table
UPDATE Properties SET property_id = 909 WHERE property_id = 900;

-- Delete a feedback entry and cascade delete all related ratings
DELETE FROM Feedback WHERE feedback_id = 55;

-- Update contract ID and cascade update in Payments table
UPDATE Contracts SET contract_id = 201 WHERE contract_id = 200;

-- Delete a property and cascade delete all related inspections
DELETE FROM Properties WHERE property_id = 1001;

-- Update property ID and cascade update in PropertyDocuments table
UPDATE Properties SET property_id = 1101 WHERE property_id = 1100;

--  Assume Properties table is parent and PropertyImages is child
-- Deleting a property cascades to images
DELETE FROM Properties
WHERE property_id = 10; -- All PropertyImages with property_id=10 will also be deleted (ON DELETE CASCADE)

--  Updating property_id cascades
UPDATE Properties
SET property_id = 20
WHERE property_id = 10; -- All child tables referencing this ID will update (ON UPDATE CASCADE)
