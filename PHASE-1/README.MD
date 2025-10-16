P H A S E - 1

# 🏠 Real Estate Database Project

This project contains a comprehensive SQL script to create, populate, and manage a **Real Estate Management System** database.  
It includes multiple interrelated tables with realistic constraints, validations, and sample data to represent a full-fledged real estate business scenario.

---

## 📋 Project Overview

The database is designed to manage data related to:
- Users (owners, customers, agents, admin)
- Property listings and their features
- Financial transactions, loans, and payments
- Property amenities, documents, inspections, contracts, and utilities
- Ratings, feedback, and offers management

It demonstrates:
- Proper use of **Primary Keys** and **Foreign Keys**
- **NOT NULL**, **UNIQUE**, **DEFAULT**, and **CHECK** constraints
- Realistic **sample data inserts**
- **DML operations** (INSERT, UPDATE, DELETE, SELECT)
- Optional cleanup commands

---

## 🧱 Database Tables

Below is the list of all major tables created in the project:

| #  | Table Name             | Description                                                                 |
|----|-------------------------|-----------------------------------------------------------------------------|
| 1  | **Users**              | Stores personal, contact, and user type information for all system users.   |
| 2  | **Properties**         | Contains property listings with details like type, price, location, etc.    |
| 3  | **Agents**             | Stores professional information about real estate agents.                   |
| 4  | **Customers**          | Keeps data about buyers, tenants, or interested customers.                  |
| 5  | **PropertyImages**     | Stores URLs and metadata of property images.                               |
| 6  | **Amenities**         | Lists additional property facilities (parking, pool, wifi, security, etc.). |
| 7  | **PropertyFeatures**  | Includes structural & design-related details like flooring, facing, etc.    |
| 8  | **Transactions**     | Records financial transactions related to property deals.                   |
| 9  | **Appointments**     | Schedules and tracks appointments between agents and customers.             |
| 10 | **PropertyReviews**  | Stores user reviews and comments for properties.                            |
| 11 | **Payments**        | Contains payment records for purchases, rent, or installments.               |
| 12 | **Invoices**        | Manages billing and invoice details for transactions.                        |
| 13 | **Loans**           | Stores loan application and approval details related to property purchases.  |
| 14 | **Installments**   | Tracks periodic installment payments for loans.                              |
| 15 | **Commissions**   | Records agent commission details for completed deals.                         |
| 16 | **MaintenanceRequests** | Stores property maintenance complaints and service requests.             |
| 17 | **Tenancies**     | Records tenant agreements and rental details.                                 |
| 18 | **PropertyDocuments** | Manages legal and ownership documents linked to properties.              |
| 19 | **Feedback**      | Collects system or service-related feedback from users.                        |
| 20 | **Contracts**    | Stores signed contracts for sales, rentals, or services.                        |
| 21 | **Inspections** | Records scheduled inspections, reports, and findings.                           |
| 22 | **Utilities**   | Manages utility connections and billing information (electricity, water, etc.). |
| 23 | **Offers**     | Stores promotional offers, price negotiations, or discounts on properties.       |
| 24 | **Ratings**    | Keeps star ratings and scores for properties or agents.                          |
| 25 | **PropertyInsurance** | Manages insurance policies linked to specific properties.                |

---

## 📝 How to Use

1. Open your MySQL or MariaDB client.
2. Run the SQL script sequentially to create all tables with constraints.
3. Insert statements will populate each table with sample data.
4. Run the provided **SELECT** queries to explore the data.
5. Use **UPDATE**, **DELETE**, and **JOIN** operations to test relationships.
6. Optional **TRUNCATE** and **DROP** statements are included at the bottom (commented out for safety).

---

## ⚡ Key Features

- ✅ **Relational structure** with strict foreign key enforcement  
- 📅 **Timestamps** and `DEFAULT CURRENT_DATE` used for relevant fields  
- 🧠 ENUMs and CHECK constraints for data validation  
- 🔐 Realistic relationships between Users → Properties → Transactions  
- 💰 Integrated financial structure with Invoices, Payments, Loans, Installments, and Commissions  
- 📝 Full support for documents, feedback, reviews, and property evaluations

---

## 📌 Example Queries

```sql
-- Get all available apartments in Pune
SELECT * FROM Properties 
WHERE property_type = 'Apartment' 
AND city = 'Pune' 
AND available = TRUE;

-- List top rated properties
SELECT p.property_id, p.title, AVG(r.rating) AS avg_rating
FROM Properties p
JOIN Ratings r ON p.property_id = r.property_id
GROUP BY p.property_id, p.title
ORDER BY avg_rating DESC;

-- Get all unpaid invoices for a customer
SELECT i.invoice_id, i.amount, i.status, i.due_date
FROM Invoices i
JOIN Users u ON i.user_id = u.user_id
WHERE u.email = 'example@customer.com' AND i.status = 'Unpaid';

-- Retrieve maintenance requests for a specific property
SELECT m.request_id, m.issue_description, m.status, m.request_date
FROM MaintenanceRequests m
WHERE m.property_id = 5;

