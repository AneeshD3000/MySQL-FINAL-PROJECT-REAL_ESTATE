

/*
================================
       P H A S E - 3
================================

- Use different types of joins to connect your 25 tables from Phase-1:
INNER JOIN
LEFT JOIN (OUTER JOIN)
RIGHT JOIN (OUTER JOIN)
FULL JOIN (if supported by your SQL engine)
SELF JOIN
CROSS JOIN 

- Use nested SELECT statements in different contexts:
Scalar subqueries
Correlated subqueries
Subqueries with IN, EXISTS, ANY, ALL
Subqueries in FROM and WHERE clauses

- Apply Built-in Functions:

String (UPPER, LOWER, CONCAT, SUBSTRING)
Numeric (ROUND, FLOOR, CEIL)
Date/Time (NOW, CURDATE, DATEDIFF, YEAR, MONTH)
Aggregate (COUNT, SUM, AVG, MIN, MAX) 

Write at least 5 UDFs for specific calculations in your project theme.
Example: Calculate yearly revenue, student grade classification, total stock value, etc.

*/

USE RealEstateDBS; 



-- =========================
-- INNER JOINS
-- =========================

-- 1. List all properties with their agent’s agency name
SELECT p.property_id, p.title, a.agency_name
FROM properties p
INNER JOIN agents a ON p.owner_id = a.agent_id;

-- 2. Show customer names with properties they have transactions for
SELECT c.customer_id, c.occupation, p.title, t.amount
FROM customers c
INNER JOIN transactions t ON c.customer_id = t.customer_id
INNER JOIN properties p ON t.property_id = p.property_id;

-- 3. Properties with their main image
SELECT p.property_id, p.title, i.image_url
FROM properties p
INNER JOIN propertyimages i ON p.property_id = i.property_id
WHERE i.is_primary = TRUE;

-- 4. Properties with amenities that have a pool
SELECT p.property_id, p.title, a.has_pool, a.pool_size_m
FROM properties p
INNER JOIN amenities a ON p.property_id = a.property_id
WHERE a.has_pool = TRUE;

-- 5. Property and feature details
SELECT p.property_id, p.title, f.furnishing, f.floor_no, f.flooring_type
FROM properties p
INNER JOIN propertyfeatures f ON p.property_id = f.property_id;

-- 6. Agent performance – list each agent with total transactions handled
SELECT a.agent_id, a.agency_name, COUNT(t.transaction_id) AS total_transactions
FROM agents a
INNER JOIN transactions t ON a.agent_id = t.agent_id
GROUP BY a.agent_id;

-- 7. Appointments with property and agent details
SELECT ap.appointment_id, ap.appointment_datetime, p.title, a.agency_name
FROM appointments ap
INNER JOIN properties p ON ap.property_id = p.property_id
INNER JOIN agents a ON ap.agent_id = a.agent_id;

-- 8. Total sales amount for each property
SELECT p.property_id, p.title, SUM(t.amount) AS total_sales
FROM properties p
INNER JOIN transactions t ON p.property_id = t.property_id
GROUP BY p.property_id;

-- 9. Properties with their customer who made an appointment
SELECT p.title, c.preferred_city, ap.appointment_datetime
FROM appointments ap
INNER JOIN properties p ON ap.property_id = p.property_id
INNER JOIN customers c ON ap.customer_id = c.customer_id;

-- 10. Agents with the customers they interacted with through transactions
SELECT DISTINCT a.agency_name, c.customer_id, c.occupation
FROM transactions t
INNER JOIN agents a ON t.agent_id = a.agent_id
INNER JOIN customers c ON t.customer_id = c.customer_id;

-- 11. Find properties that have both amenities and features
SELECT p.title, a.has_gym, f.furnishing
FROM properties p
INNER JOIN amenities a ON p.property_id = a.property_id
INNER JOIN propertyfeatures f ON p.property_id = f.property_id;

-- 12. Count of transactions per property type
SELECT p.property_type, COUNT(t.transaction_id) AS transaction_count
FROM properties p
INNER JOIN transactions t ON p.property_id = t.property_id
GROUP BY p.property_type;

-- 13. Appointments completed successfully per agent
SELECT a.agency_name, COUNT(ap.appointment_id) AS completed_appointments
FROM agents a
INNER JOIN appointments ap ON a.agent_id = ap.agent_id
WHERE ap.status = 'Completed'
GROUP BY a.agency_name;

-- 14. List all properties and customers who rented them
SELECT p.title, c.occupation
FROM properties p
INNER JOIN transactions t ON p.property_id = t.property_id
INNER JOIN customers c ON t.customer_id = c.customer_id
WHERE t.transaction_type = 'Rent';

-- 15. Average property price per city (only sold)
SELECT p.city, AVG(p.price) AS avg_price
FROM properties p
INNER JOIN transactions t ON p.property_id = t.property_id
WHERE t.status = 'Completed'
GROUP BY p.city;

-- 16. Agents with their listed properties
SELECT a.agency_name, p.title, p.status
FROM agents a
INNER JOIN properties p ON a.agent_id = p.owner_id;

-- 17. Customers who scheduled appointments
SELECT DISTINCT c.customer_id, c.preferred_property_type
FROM customers c
INNER JOIN appointments ap ON c.customer_id = ap.customer_id;

-- 18. Properties with gym and their total area
SELECT p.title, a.gym_area_sqft + p.area_sqft AS total_area
FROM properties p
INNER JOIN amenities a ON p.property_id = a.property_id
WHERE a.has_gym = TRUE;

-- 19. Agents and total sales they facilitated
SELECT a.agent_id, a.agency_name, SUM(t.amount) AS total_sales
FROM agents a
INNER JOIN transactions t ON a.agent_id = t.agent_id
GROUP BY a.agent_id;

-- 20. List all appointments with corresponding property title and customer details
SELECT ap.appointment_id, p.title, c.preferred_city, ap.status
FROM appointments ap
INNER JOIN properties p ON ap.property_id = p.property_id
INNER JOIN customers c ON ap.customer_id = c.customer_id;



-- ==============
-- LEFT JOIN
-- =============
-- 1. Show all properties and their assigned agents (even if no agent)
SELECT p.property_id, p.title, a.agency_name
FROM properties p
LEFT JOIN agents a ON p.owner_id = a.agent_id;

-- 2. Show all customers and any transactions they have done
SELECT c.customer_id, c.preferred_city, t.transaction_id, t.amount
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id;

-- 3. List all agents and their total number of appointments
SELECT a.agent_id, a.agency_name, COUNT(ap.appointment_id) AS total_appointments
FROM agents a
LEFT JOIN appointments ap ON a.agent_id = ap.agent_id
GROUP BY a.agent_id;

-- 4. Show all properties with amenities (include those without)
SELECT p.property_id, p.title, a.has_garden, a.has_pool
FROM properties p
LEFT JOIN amenities a ON p.property_id = a.property_id;

-- 5. Show all properties with their features (even if not entered yet)
SELECT p.title, f.furnishing, f.flooring_type
FROM properties p
LEFT JOIN propertyfeatures f ON p.property_id = f.property_id;

-- 6. Show all customers who have ever booked an appointment (include none)
SELECT c.customer_id, c.occupation, ap.appointment_datetime
FROM customers c
LEFT JOIN appointments ap ON c.customer_id = ap.customer_id;

-- 7. Show all properties and the total transaction amount if any
SELECT p.property_id, p.title, IFNULL(SUM(t.amount), 0) AS total_transacted
FROM properties p
LEFT JOIN transactions t ON p.property_id = t.property_id
GROUP BY p.property_id;

-- 8. Show all agents and total revenue from their transactions
SELECT a.agent_id, a.agency_name, IFNULL(SUM(t.amount), 0) AS total_revenue
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id
GROUP BY a.agent_id;

-- 9. Show all properties and the number of appointments they received
SELECT p.property_id, p.title, COUNT(ap.appointment_id) AS total_appointments
FROM properties p
LEFT JOIN appointments ap ON p.property_id = ap.property_id
GROUP BY p.property_id;

-- 10. List all customers with transaction details (if any)
SELECT c.customer_id, c.preferred_city, t.transaction_code, t.amount
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id;

-- 11. All agents with their office phone number and average rating
SELECT a.agency_name, a.phone_office, AVG(a.rating) AS avg_rating
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id
GROUP BY a.agency_name;

-- 12. Properties with images if uploaded
SELECT p.title, i.image_url, i.caption
FROM properties p
LEFT JOIN propertyimages i ON p.property_id = i.property_id;

-- 13. Agents and their specialization with any linked property
SELECT a.agency_name, a.specialization, p.title
FROM agents a
LEFT JOIN properties p ON a.agent_id = p.owner_id;

-- 14. List all amenities for each property (even if none)
SELECT p.property_id, p.title, a.has_parking, a.has_gym
FROM properties p
LEFT JOIN amenities a ON p.property_id = a.property_id;

-- 15. Show all appointments with matching customer and property (include empty slots)
SELECT ap.appointment_id, c.customer_id, p.title
FROM appointments ap
LEFT JOIN customers c ON ap.customer_id = c.customer_id
LEFT JOIN properties p ON ap.property_id = p.property_id;

-- 16. Show all properties and any associated transactions
SELECT p.title, t.transaction_code, t.amount, t.status
FROM properties p
LEFT JOIN transactions t ON p.property_id = t.property_id;

-- 17. Agents with their total number of sales completed
SELECT a.agent_id, a.agency_name, COUNT(t.transaction_id) AS completed_sales
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id AND t.status = 'Completed'
GROUP BY a.agent_id;

-- 18. Customers and their preferred property type with appointments (if any)
SELECT c.customer_id, c.preferred_property_type, ap.appointment_id, ap.status
FROM customers c
LEFT JOIN appointments ap ON c.customer_id = ap.customer_id;

-- 19. Properties and whether they include a swimming pool amenity
SELECT p.property_id, p.title, IF(a.has_pool = TRUE, 'Has Pool', 'No Pool') AS pool_status
FROM properties p
LEFT JOIN amenities a ON p.property_id = a.property_id;

-- 20. Show all agents with transactions in progress or none
SELECT a.agent_id, a.agency_name, t.status, t.amount
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id AND t.status = 'Pending';

-- ==============
-- RIGHT JOIN
-- ==============


-- 1. Show all agents with the properties they manage (include properties even if agent missing)
SELECT p.property_id, p.title, a.agency_name
FROM agents a
RIGHT JOIN properties p ON a.agent_id = p.owner_id;

-- 2. Show all customers with transactions, including customers without any
SELECT t.transaction_id, c.customer_id, c.occupation, t.amount
FROM transactions t
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 3. List all appointments with agent info, even if no matching agent
SELECT ap.appointment_id, ap.appointment_datetime, a.agency_name
FROM agents a
RIGHT JOIN appointments ap ON a.agent_id = ap.agent_id;

-- 4. Show all properties and their amenities, even if amenities not recorded
SELECT a.amenity_id, a.has_pool, p.title
FROM amenities a
RIGHT JOIN properties p ON a.property_id = p.property_id;

-- 5. Display all properties with features (include missing features)
SELECT f.feature_id, f.furnishing, p.title
FROM propertyfeatures f
RIGHT JOIN properties p ON f.property_id = p.property_id;

-- 6. All transactions with linked customers (include customers without transaction)
SELECT t.transaction_code, t.amount, c.customer_id, c.preferred_city
FROM transactions t
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 7. Appointments and property titles (include properties without appointments)
SELECT ap.appointment_id, p.title, ap.status
FROM appointments ap
RIGHT JOIN properties p ON ap.property_id = p.property_id;

-- 8. All transactions linked to properties, showing properties even if none
SELECT t.transaction_id, t.amount, p.title, p.price
FROM transactions t
RIGHT JOIN properties p ON t.property_id = p.property_id;

-- 9. Agents and total revenue, including those without sales
SELECT a.agent_id, a.agency_name, SUM(t.amount) AS total_sales
FROM transactions t
RIGHT JOIN agents a ON t.agent_id = a.agent_id
GROUP BY a.agent_id;

-- 10. Properties and their linked amenities with gardens
SELECT a.has_garden, p.title, a.garden_area_sqft
FROM amenities a
RIGHT JOIN properties p ON a.property_id = p.property_id;

-- 11. Properties with gym facility details
SELECT a.has_gym, a.gym_area_sqft, p.title
FROM amenities a
RIGHT JOIN properties p ON a.property_id = p.property_id;

-- 12. All agents and transactions completed by them
SELECT a.agent_id, a.agency_name, t.status, t.amount
FROM transactions t
RIGHT JOIN agents a ON t.agent_id = a.agent_id;

-- 13. Properties with appointments scheduled
SELECT ap.appointment_datetime, p.title, c.customer_id
FROM appointments ap
RIGHT JOIN properties p ON ap.property_id = p.property_id
RIGHT JOIN customers c ON ap.customer_id = c.customer_id;

-- 14. Customers and their corresponding property transactions
SELECT t.transaction_id, c.customer_id, c.preferred_property_type
FROM transactions t
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 15. Agents with their office phone numbers and the number of sales
SELECT a.agency_name, a.phone_office, COUNT(t.transaction_id) AS sales_count
FROM transactions t
RIGHT JOIN agents a ON t.agent_id = a.agent_id
GROUP BY a.agency_name;

-- 16. Properties and their primary image if available
SELECT i.image_url, i.caption, p.title
FROM propertyimages i
RIGHT JOIN properties p ON i.property_id = p.property_id;

-- 17. Appointments and customer feedback (include customers without feedback)
SELECT ap.appointment_id, c.customer_id, ap.feedback_by_customer
FROM appointments ap
RIGHT JOIN customers c ON ap.customer_id = c.customer_id;

-- 18. Transactions and property location details
SELECT t.transaction_id, t.amount, p.city, p.state
FROM transactions t
RIGHT JOIN properties p ON t.property_id = p.property_id;

-- 19. Agents and customers through transaction interaction
SELECT a.agency_name, c.customer_id, t.amount
FROM transactions t
RIGHT JOIN agents a ON t.agent_id = a.agent_id
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 20. Properties and agent details who listed them
SELECT p.property_id, p.title, a.agency_name, a.experience_years
FROM agents a
RIGHT JOIN properties p ON a.agent_id = p.owner_id;

-- ==============
-- FULL JOIN
-- ==============

-- 1. Combine all properties with their agents (include unassigned agents and properties)
SELECT p.property_id, p.title, a.agency_name
FROM properties p
LEFT JOIN agents a ON p.owner_id = a.agent_id
UNION
SELECT p.property_id, p.title, a.agency_name
FROM properties p
RIGHT JOIN agents a ON p.owner_id = a.agent_id;

-- 2. Show all customers with transactions (include customers with no transactions and vice versa)
SELECT c.customer_id, c.preferred_city, t.amount
FROM customers c
LEFT JOIN transactions t ON c.customer_id = t.customer_id
UNION
SELECT c.customer_id, c.preferred_city, t.amount
FROM customers c
RIGHT JOIN transactions t ON c.customer_id = t.customer_id;

-- 3. Combine all properties with their amenities
SELECT p.property_id, p.title, a.has_pool, a.has_gym
FROM properties p
LEFT JOIN amenities a ON p.property_id = a.property_id
UNION
SELECT p.property_id, p.title, a.has_pool, a.has_gym
FROM properties p
RIGHT JOIN amenities a ON p.property_id = a.property_id;

-- 4. Combine properties with features (include those missing from either)
SELECT p.property_id, p.title, f.furnishing, f.flooring_type
FROM properties p
LEFT JOIN propertyfeatures f ON p.property_id = f.property_id
UNION
SELECT p.property_id, p.title, f.furnishing, f.flooring_type
FROM properties p
RIGHT JOIN propertyfeatures f ON p.property_id = f.property_id;

-- 5. Combine transactions and agents (show unmatched ones too)
SELECT t.transaction_id, t.amount, a.agency_name
FROM transactions t
LEFT JOIN agents a ON t.agent_id = a.agent_id
UNION
SELECT t.transaction_id, t.amount, a.agency_name
FROM transactions t
RIGHT JOIN agents a ON t.agent_id = a.agent_id;

-- 6. Combine appointments with properties (include both unmatched)
SELECT ap.appointment_id, ap.appointment_datetime, p.title
FROM appointments ap
LEFT JOIN properties p ON ap.property_id = p.property_id
UNION
SELECT ap.appointment_id, ap.appointment_datetime, p.title
FROM appointments ap
RIGHT JOIN properties p ON ap.property_id = p.property_id;

-- 7. Combine transactions and properties
SELECT t.transaction_id, t.amount, p.title, p.status
FROM transactions t
LEFT JOIN properties p ON t.property_id = p.property_id
UNION
SELECT t.transaction_id, t.amount, p.title, p.status
FROM transactions t
RIGHT JOIN properties p ON t.property_id = p.property_id;

-- 8. Combine agents and appointments (include those without matching)
SELECT a.agent_id, a.agency_name, ap.appointment_id
FROM agents a
LEFT JOIN appointments ap ON a.agent_id = ap.agent_id
UNION
SELECT a.agent_id, a.agency_name, ap.appointment_id
FROM agents a
RIGHT JOIN appointments ap ON a.agent_id = ap.agent_id;

-- 9. Combine property images and properties (show all)
SELECT i.image_id, i.image_url, p.title
FROM propertyimages i
LEFT JOIN properties p ON i.property_id = p.property_id
UNION
SELECT i.image_id, i.image_url, p.title
FROM propertyimages i
RIGHT JOIN properties p ON i.property_id = p.property_id;

-- 10. Combine customers and appointments (include those missing)
SELECT c.customer_id, c.occupation, ap.appointment_datetime
FROM customers c
LEFT JOIN appointments ap ON c.customer_id = ap.customer_id
UNION
SELECT c.customer_id, c.occupation, ap.appointment_datetime
FROM customers c
RIGHT JOIN appointments ap ON c.customer_id = ap.customer_id;

-- 11. Combine transactions and customers by agent linkage
SELECT t.transaction_id, t.amount, c.customer_id
FROM transactions t
LEFT JOIN customers c ON t.customer_id = c.customer_id
UNION
SELECT t.transaction_id, t.amount, c.customer_id
FROM transactions t
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 12. Combine agents and their listed properties
SELECT a.agent_id, a.agency_name, p.title
FROM agents a
LEFT JOIN properties p ON a.agent_id = p.owner_id
UNION
SELECT a.agent_id, a.agency_name, p.title
FROM agents a
RIGHT JOIN properties p ON a.agent_id = p.owner_id;

-- 13. Combine amenities and property features (for full list)
SELECT a.property_id, a.has_pool, f.furnishing
FROM amenities a
LEFT JOIN propertyfeatures f ON a.property_id = f.property_id
UNION
SELECT a.property_id, a.has_pool, f.furnishing
FROM amenities a
RIGHT JOIN propertyfeatures f ON a.property_id = f.property_id;

-- 14. Combine agents and transactions (include unlinked)
SELECT a.agent_id, a.agency_name, t.transaction_code
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id
UNION
SELECT a.agent_id, a.agency_name, t.transaction_code
FROM agents a
RIGHT JOIN transactions t ON a.agent_id = t.agent_id;

-- 15. Combine properties with customers who bought/rented them
SELECT p.property_id, p.title, c.customer_id, c.preferred_city
FROM properties p
LEFT JOIN transactions t ON p.property_id = t.property_id
LEFT JOIN customers c ON t.customer_id = c.customer_id
UNION
SELECT p.property_id, p.title, c.customer_id, c.preferred_city
FROM properties p
RIGHT JOIN transactions t ON p.property_id = t.property_id
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 16. Combine appointments and agents (full inclusion)
SELECT ap.appointment_id, ap.status, a.agency_name
FROM appointments ap
LEFT JOIN agents a ON ap.agent_id = a.agent_id
UNION
SELECT ap.appointment_id, ap.status, a.agency_name
FROM appointments ap
RIGHT JOIN agents a ON ap.agent_id = a.agent_id;

-- 17. Combine agents and customers through transaction linkage (include all)
SELECT a.agent_id, a.agency_name, c.customer_id
FROM agents a
LEFT JOIN transactions t ON a.agent_id = t.agent_id
LEFT JOIN customers c ON t.customer_id = c.customer_id
UNION
SELECT a.agent_id, a.agency_name, c.customer_id
FROM agents a
RIGHT JOIN transactions t ON a.agent_id = t.agent_id
RIGHT JOIN customers c ON t.customer_id = c.customer_id;

-- 18. Combine properties with features and amenities
SELECT p.property_id, p.title, f.furnishing, a.has_gym
FROM properties p
LEFT JOIN propertyfeatures f ON p.property_id = f.property_id
LEFT JOIN amenities a ON p.property_id = a.property_id
UNION
SELECT p.property_id, p.title, f.furnishing, a.has_gym
FROM properties p
RIGHT JOIN propertyfeatures f ON p.property_id = f.property_id
RIGHT JOIN amenities a ON p.property_id = a.property_id;

-- 19. Combine customers and agents via appointments (full inclusion)
SELECT c.customer_id, c.preferred_city, a.agency_name
FROM customers c
LEFT JOIN appointments ap ON c.customer_id = ap.customer_id
LEFT JOIN agents a ON ap.agent_id = a.agent_id
UNION
SELECT c.customer_id, c.preferred_city, a.agency_name
FROM customers c
RIGHT JOIN appointments ap ON c.customer_id = ap.customer_id
RIGHT JOIN agents a ON ap.agent_id = a.agent_id;

-- 20. Combine transactions and amenities (include all)
SELECT t.transaction_id, t.amount, a.has_pool
FROM transactions t
LEFT JOIN amenities a ON t.property_id = a.property_id
UNION
SELECT t.transaction_id, t.amount, a.has_pool
FROM transactions t
RIGHT JOIN amenities a ON t.property_id = a.property_id;

-- =================
-- SELF JOIN
-- =================

-- 1. Compare two properties in the same city
SELECT p1.property_id AS Property1_ID, p1.title AS Property1, 
       p2.property_id AS Property2_ID, p2.title AS Property2, p1.city
FROM properties p1
INNER JOIN properties p2 
ON p1.city = p2.city AND p1.property_id <> p2.property_id;

-- 2. Find agents who belong to the same agency
SELECT a1.agency_name, a1.agent_id AS Agent1, a2.agent_id AS Agent2
FROM agents a1
JOIN agents a2 ON a1.agency_name = a2.agency_name AND a1.agent_id <> a2.agent_id;

-- 3. List customers having the same preferred city
SELECT c1.customer_id AS Customer1, c2.customer_id AS Customer2, c1.preferred_city
FROM customers c1
JOIN customers c2 ON c1.preferred_city = c2.preferred_city AND c1.customer_id <> c2.customer_id;

-- 4. Find properties with similar price range (within 10%)
SELECT p1.property_id AS P1, p2.property_id AS P2, p1.price, p2.price
FROM properties p1
JOIN properties p2 
ON p2.price BETWEEN p1.price * 0.9 AND p1.price * 1.1
AND p1.property_id <> p2.property_id;

-- 5. Find agents with similar years of experience
SELECT a1.agent_id AS Agent1, a2.agent_id AS Agent2, a1.experience_years, a2.experience_years
FROM agents a1
JOIN agents a2 ON ABS(a1.experience_years - a2.experience_years) <= 2 AND a1.agent_id <> a2.agent_id;

-- 6. Compare properties listed on the same date
SELECT p1.property_id AS Property1, p2.property_id AS Property2, p1.listed_date
FROM properties p1
JOIN properties p2 ON p1.listed_date = p2.listed_date AND p1.property_id <> p2.property_id;

-- 7. Compare agents with higher sales than others
SELECT a1.agent_id AS HighPerformer, a2.agent_id AS LowPerformer
FROM agents a1
JOIN agents a2 ON a1.total_sales > a2.total_sales;

-- 8. Customers with similar family size
SELECT c1.customer_id AS Cust1, c2.customer_id AS Cust2, c1.family_size
FROM customers c1
JOIN customers c2 ON c1.family_size = c2.family_size AND c1.customer_id <> c2.customer_id;

-- 9. Agents with same specialization
SELECT a1.agent_id, a2.agent_id, a1.specialization
FROM agents a1
JOIN agents a2 ON a1.specialization = a2.specialization AND a1.agent_id <> a2.agent_id;

-- 10. Properties located in the same state but different cities
SELECT p1.title AS Property1, p2.title AS Property2, p1.state
FROM properties p1
JOIN properties p2 ON p1.state = p2.state AND p1.city <> p2.city;

-- 11. Customers with similar max budget
SELECT c1.customer_id AS Cust1, c2.customer_id AS Cust2, c1.budget_max
FROM customers c1
JOIN customers c2 ON ABS(c1.budget_max - c2.budget_max) < 500000 AND c1.customer_id <> c2.customer_id;

-- 12. Agents with similar rating
SELECT a1.agent_id AS A1, a2.agent_id AS A2, a1.rating
FROM agents a1
JOIN agents a2 ON ABS(a1.rating - a2.rating) < 1 AND a1.agent_id <> a2.agent_id;

-- 13. Compare properties with same number of bedrooms
SELECT p1.property_id AS P1, p2.property_id AS P2, p1.bedrooms
FROM properties p1
JOIN properties p2 ON p1.bedrooms = p2.bedrooms AND p1.property_id <> p2.property_id;

-- 14. Agents from same joining year
SELECT a1.agent_id, a2.agent_id, YEAR(a1.joining_date) AS Joining_Year
FROM agents a1
JOIN agents a2 ON YEAR(a1.joining_date) = YEAR(a2.joining_date) AND a1.agent_id <> a2.agent_id;

-- 15. Compare properties by built year
SELECT f1.property_id AS P1, f2.property_id AS P2, f1.built_year
FROM propertyfeatures f1
JOIN propertyfeatures f2 ON f1.built_year = f2.built_year AND f1.property_id <> f2.property_id;

-- 16. Customers with same property preference
SELECT c1.customer_id, c2.customer_id, c1.preferred_property_type
FROM customers c1
JOIN customers c2 ON c1.preferred_property_type = c2.preferred_property_type AND c1.customer_id <> c2.customer_id;

-- 17. Properties with same status (Sold, Available, etc.)
SELECT p1.title AS Property1, p2.title AS Property2, p1.status
FROM properties p1
JOIN properties p2 ON p1.status = p2.status AND p1.property_id <> p2.property_id;

-- 18. Agents with same active status
SELECT a1.agent_id AS A1, a2.agent_id AS A2, a1.is_active
FROM agents a1
JOIN agents a2 ON a1.is_active = a2.is_active AND a1.agent_id <> a2.agent_id;

-- 19. Compare customers by occupation
SELECT c1.customer_id AS C1, c2.customer_id AS C2, c1.occupation
FROM customers c1
JOIN customers c2 ON c1.occupation = c2.occupation AND c1.customer_id <> c2.customer_id;

-- 20. Compare properties with similar area (within ±100 sqft)
SELECT p1.property_id AS P1, p2.property_id AS P2, p1.area_sqft, p2.area_sqft
FROM properties p1
JOIN properties p2 
ON p2.area_sqft BETWEEN p1.area_sqft - 100 AND p1.area_sqft + 100
AND p1.property_id <> p2.property_id;


-- ====================
-- CROSS JOIN
-- ====================
-- 1. Combine all agents with all customers
SELECT a.agent_id, a.agency_name, c.customer_id, c.preferred_city
FROM agents a
CROSS JOIN customers c;

-- 2. Pair each property with every agent
SELECT p.property_id, p.title, a.agent_id, a.agency_name
FROM properties p
CROSS JOIN agents a;

-- 3. Show all possible combinations of property and customer
SELECT p.property_id, p.title, c.customer_id, c.preferred_property_type
FROM properties p
CROSS JOIN customers c;

-- 4. Create all combinations of agents and property types
SELECT DISTINCT a.agency_name, p.property_type
FROM agents a
CROSS JOIN properties p;

-- 5. Cross join property features with amenities to find all mix options
SELECT f.property_id, f.furnishing, a.has_gym, a.has_pool
FROM propertyfeatures f
CROSS JOIN amenities a;

-- 6. Generate matrix of agent and transaction status
SELECT DISTINCT a.agent_id, a.agency_name, t.status
FROM agents a
CROSS JOIN transactions t;

-- 7. Match every agent with every specialization possibility
SELECT a.agent_id, a.specialization, ag.agency_name
FROM agents a
CROSS JOIN agents ag;

-- 8. Combine all customers and agents for potential outreach
SELECT c.customer_id, c.preferred_city, a.agent_id, a.phone_office
FROM customers c
CROSS JOIN agents a; 

-- 9. Combine all appointments with all transaction modes
SELECT ap.appointment_id, ap.status, t.payment_mode
FROM appointments ap
CROSS JOIN transactions t;

-- 10. Display all possible property–city and agent combinations
SELECT p.city, a.agency_name
FROM properties p
CROSS JOIN agents a;

-- 11. Cross join customers and property amenities (marketing use)
SELECT c.customer_id, c.preferred_property_type, a.has_garden, a.has_gym
FROM customers c
CROSS JOIN amenities a;

-- 12. Combine all agents and all properties for performance testing
SELECT a.agent_id, a.agency_name, p.property_id, p.status
FROM agents a
CROSS JOIN properties p;

-- 13. List all customers with all possible transaction types
SELECT c.customer_id, c.occupation, t.transaction_type
FROM customers c
CROSS JOIN transactions t;

-- 14. Combine property features and properties for design reference
SELECT p.property_id, p.title, f.floor_no, f.total_floors
FROM properties p
CROSS JOIN propertyfeatures f;

-- 15. Combine all agents and all amenities for reporting
SELECT a.agent_id, a.agency_name, am.has_wifi, am.has_security
FROM agents a
CROSS JOIN amenities am;

-- 16. Generate combinations of customers and appointment statuses
SELECT DISTINCT c.customer_id, c.preferred_city, ap.status
FROM customers c
CROSS JOIN appointments ap;

-- 17. Combine property images and properties (marketing mock)
SELECT p.property_id, p.title, i.image_url
FROM properties p
CROSS JOIN propertyimages i;

-- 18. Combine all agents and all customers who could interact
SELECT a.agent_id, a.agency_name, c.customer_id, c.family_size
FROM agents a
CROSS JOIN customers c;

-- 19. Pair every property and every amenity possible
SELECT p.property_id, p.title, a.has_parking, a.has_gym
FROM properties p
CROSS JOIN amenities a;

-- 20. Generate cross listing of agents and appointment feedback types
SELECT a.agent_id, a.agency_name, ap.feedback_by_customer
FROM agents a
CROSS JOIN appointments ap;



-- ======================
-- SCALAR SUBQUERIES
-- ======================

-- 1. Find the property with the highest price
SELECT property_id, title, price
FROM properties
WHERE price = (SELECT MAX(price) FROM properties);

-- 2. Find agents whose rating is above the average rating
SELECT agent_id, agency_name, rating
FROM agents
WHERE rating > (SELECT AVG(rating) FROM agents);

-- 3. Get customers whose max budget is higher than the average property price
SELECT customer_id, preferred_city, budget_max
FROM customers
WHERE budget_max > (SELECT AVG(price) FROM properties);

-- 4. Find properties priced above the average price of properties in the same city
SELECT property_id, title, price, city
FROM properties p
WHERE price > (
  SELECT AVG(price)
  FROM properties
  WHERE city = p.city
);

-- 5. Show the agent who has handled the most transactions
SELECT agent_id, agency_name
FROM agents
WHERE agent_id = (
  SELECT agent_id
  FROM transactions
  GROUP BY agent_id
  ORDER BY COUNT(transaction_id) DESC
  LIMIT 1
);

-- =========================
--  CORRELATED SUBQUERIES
-- =========================

-- 6. Find properties that are more expensive than the average price in their state
SELECT property_id, title, price, state
FROM properties p
WHERE price > (
  SELECT AVG(price)
  FROM properties
  WHERE state = p.state
);

-- 7. List agents who have more total sales than the average total of all agents
SELECT agent_id, agency_name
FROM agents a
WHERE (
  SELECT SUM(t.amount)
  FROM transactions t
  WHERE t.agent_id = a.agent_id
) > (
  SELECT AVG(total_sales)
  FROM (SELECT SUM(amount) AS total_sales FROM transactions GROUP BY agent_id) sub
);

-- 8. Find customers who have at least one transaction higher than their minimum budget
SELECT customer_id, preferred_city
FROM customers c
WHERE EXISTS (
  SELECT 1
  FROM transactions t
  WHERE t.customer_id = c.customer_id
  AND t.amount > c.budget_min
);

-- 9. Find agents who scheduled appointments longer than the average duration
SELECT a.agent_id, a.agency_name
FROM agents a
WHERE EXISTS (
  SELECT 1
  FROM appointments ap
  WHERE ap.agent_id = a.agent_id
  AND ap.duration_minutes > (
    SELECT AVG(duration_minutes) FROM appointments
  )
);

-- 10. Find properties whose area is larger than the average area of the same property type
SELECT property_id, title, property_type, area_sqft
FROM properties p
WHERE area_sqft > (
  SELECT AVG(area_sqft)
  FROM properties
  WHERE property_type = p.property_type
);

-- ====================================
-- SUBQUERIES WITH IN / EXISTS / ANY / ALL
-- ====================================

-- 11. Find customers who have made at least one transaction
SELECT customer_id, preferred_city
FROM customers
WHERE customer_id IN (SELECT DISTINCT customer_id FROM transactions);

-- 12. Find properties that have at least one appointment
SELECT property_id, title
FROM properties
WHERE property_id IN (SELECT DISTINCT property_id FROM appointments);

-- 13. Find agents who have no appointments (NOT IN)
SELECT agent_id, agency_name
FROM agents
WHERE agent_id NOT IN (SELECT DISTINCT agent_id FROM appointments);

-- 14. Find properties with price greater than ANY transaction amount
SELECT property_id, title, price
FROM properties
WHERE price > ANY (SELECT amount FROM transactions);

-- 15. Find properties whose price is higher than ALL transaction amounts
SELECT property_id, title, price
FROM properties
WHERE price > ALL (SELECT amount FROM transactions);

-- 16. Find customers with existing appointments
SELECT customer_id, preferred_city
FROM customers c
WHERE EXISTS (
  SELECT 1
  FROM appointments ap
  WHERE ap.customer_id = c.customer_id
);

-- 17. Find agents with at least one completed transaction
SELECT agent_id, agency_name
FROM agents a
WHERE EXISTS (
  SELECT 1
  FROM transactions t
  WHERE t.agent_id = a.agent_id AND t.status = 'Completed'
);

-- ===============================
-- SUBQUERIES IN FROM / WHERE
-- ===============================

-- 18. Show cities with average property prices above 50 lakhs
SELECT city, avg_price
FROM (
  SELECT city, AVG(price) AS avg_price
  FROM properties
  GROUP BY city
) AS sub
WHERE avg_price > 5000000;

-- 19. List agents with their total transaction amount (FROM subquery)
SELECT agent_id, total_sales
FROM (
  SELECT agent_id, SUM(amount) AS total_sales
  FROM transactions
  GROUP BY agent_id
) AS sales
WHERE total_sales > 1000000;

-- 20. Find properties in cities where at least one agent is active
SELECT property_id, title, city
FROM properties
WHERE city IN (
  SELECT DISTINCT p.city
  FROM properties p
  JOIN agents a ON p.owner_id = a.agent_id
  WHERE a.is_active = TRUE
);


-- ======================
-- STRING FUNCTIONS
-- ======================

-- 1. Convert all agent names to uppercase
SELECT agent_id, UPPER(agency_name) AS Agency_Upper
FROM agents;

-- 2. Convert customer occupation to lowercase
SELECT customer_id, LOWER(occupation) AS Occupation_Lower
FROM customers;

-- 3. Concatenate property title and city
SELECT property_id, CONCAT(title, ' - ', city) AS Full_Property_Name
FROM properties;

-- 4. Extract the first 10 characters of property description
SELECT property_id, SUBSTRING(description, 1, 10) AS Short_Description
FROM properties;

-- 5. Combine agent’s agency name with years of experience
SELECT agent_id, CONCAT(agency_name, ' (', experience_years, ' yrs)') AS Agent_Info
FROM agents;

-- ======================
-- NUMERIC FUNCTIONS
-- ======================

-- 6. Round property prices to nearest thousand
SELECT property_id, title, ROUND(price, -3) AS Rounded_Price
FROM properties;

-- 7. Floor property area to nearest integer
SELECT property_id, area_sqft, FLOOR(area_sqft) AS Area_Floor
FROM properties;

-- 8. Ceil average agent rating
SELECT agent_id, agency_name, CEIL(rating) AS Ceil_Rating
FROM agents;

-- 9. Calculate 10% commission on each transaction
SELECT transaction_id, amount, ROUND(amount * 0.10, 2) AS Commission
FROM transactions;

-- 10. Round average transaction amount per agent
SELECT agent_id, ROUND(AVG(amount), 2) AS Avg_Transaction
FROM transactions
GROUP BY agent_id;

-- ======================
-- DATE/TIME FUNCTIONS
-- ======================

-- 11. Show current system date and total agents
SELECT CURDATE() AS Today, COUNT(agent_id) AS Total_Agents
FROM agents;

-- 12. Find how many days ago each property was listed
SELECT property_id, title, DATEDIFF(CURDATE(), listed_date) AS Days_Listed
FROM properties;

-- 13. Extract the year and month of each appointment
SELECT appointment_id, YEAR(appointment_datetime) AS Appt_Year, MONTH(appointment_datetime) AS Appt_Month
FROM appointments;

-- 14. Show agent joining year and their agency
SELECT agent_id, agency_name, YEAR(joining_date) AS Join_Year
FROM agents;

-- 15. Calculate average appointment duration per month
SELECT MONTH(appointment_datetime) AS Month_No, AVG(duration_minutes) AS Avg_Duration
FROM appointments
GROUP BY MONTH(appointment_datetime);

-- ======================
-- AGGREGATE FUNCTIONS
-- ======================

-- 16. Count total properties available for sale
SELECT COUNT(property_id) AS Total_Properties_For_Sale
FROM properties
WHERE status = 'Available';

-- 17. Find the maximum property price and title
SELECT title, MAX(price) AS Max_Price
FROM properties
GROUP BY title
ORDER BY Max_Price DESC
LIMIT 1;

-- 18. Average agent rating by specialization
SELECT specialization, ROUND(AVG(rating), 2) AS Avg_Rating
FROM agents
GROUP BY specialization;

-- 19. Find the minimum and maximum transaction amount per property
SELECT property_id, MIN(amount) AS Min_Trans, MAX(amount) AS Max_Trans
FROM transactions
GROUP BY property_id;

-- 20. Show total transaction amount per city
SELECT p.city, SUM(t.amount) AS Total_Transaction
FROM properties p
JOIN transactions t ON p.property_id = t.property_id
GROUP BY p.city;

-- =====================================================
-- 🔹 USER-DEFINED FUNCTIONS (UDFs) 
-- =====================================================

DELIMITER $$

-- Calculate the total revenue generated by a given agent
CREATE FUNCTION GetAgentRevenue(agentID INT)
RETURNS DECIMAL(15,2)
DETERMINISTIC
BEGIN
  DECLARE totalRevenue DECIMAL(15,2);
  SELECT IFNULL(SUM(amount), 0)
  INTO totalRevenue
  FROM transactions
  WHERE agent_id = agentID;
  RETURN totalRevenue;
END $$

SELECT GetAgentRevenue(2) AS Agent_Total_Revenue;


-- Calculate total sales made by a customer (buying or renting)
CREATE FUNCTION GetCustomerSpending(custID INT)
RETURNS DECIMAL(15,2)
DETERMINISTIC
BEGIN
  DECLARE totalSpent DECIMAL(15,2);
  SELECT IFNULL(SUM(amount), 0)
  INTO totalSpent
  FROM transactions
  WHERE customer_id = custID AND status = 'Completed';
  RETURN totalSpent;
END $$

SELECT GetCustomerSpending(5) AS Customer_Spent;


-- Calculate commission earned by an agent (10% of their total sales)
CREATE FUNCTION CalculateAgentCommission(agentID INT)
RETURNS DECIMAL(15,2)
DETERMINISTIC
BEGIN
  DECLARE commission DECIMAL(15,2);
  SELECT IFNULL(SUM(amount * 0.10), 0)
  INTO commission
  FROM transactions
  WHERE agent_id = agentID AND status = 'Completed';
  RETURN commission;
END $$

SELECT CalculateAgentCommission(3) AS Agent_Commission;


-- Calculate property age in years based on built_year from PropertyFeatures
CREATE FUNCTION GetPropertyAge(propertyID INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE propertyAge INT;
  SELECT (YEAR(CURDATE()) - built_year)
  INTO propertyAge
  FROM propertyfeatures
  WHERE property_id = propertyID;
  RETURN propertyAge;
END $$

SELECT GetPropertyAge(10) AS Property_Age;


-- Calculate the total number of appointments handled by an agent
CREATE FUNCTION GetAgentAppointments(agentID INT)
RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE apptCount INT;
  SELECT COUNT(appointment_id)
  INTO apptCount
  FROM appointments
  WHERE agent_id = agentID;
  RETURN apptCount;
END $$


SELECT GetAgentAppointments(4) AS Total_Appointments;