# 🧩 SQL Project – Phase 3: Advanced Data Retrieval & Functions

> **Phase-3** emphasizes mastering *complex SQL queries* — including **joins**, **nested subqueries**, and **function implementation** — to demonstrate advanced database problem-solving and analytical skills.

---

## 🎯 Project Overview

In this phase, you will enhance your Phase-1 database by applying **complex data operations** to extract meaningful insights.

This stage demonstrates your ability to:
- Connect multiple tables logically using joins  
- Retrieve nested data with subqueries  
- Utilize built-in SQL functions for transformation and aggregation  
- Create and apply **User-Defined Functions (UDFs)** for project-specific calculations  

---

## 🧱 Phase-3 Components

### 1️⃣ **Apply Joins**

Leverage SQL joins to combine data from your **25 interconnected tables**.

#### 🧩 Joins Implemented:
- **INNER JOIN** – Matches records with related data in both tables  
- **LEFT (OUTER) JOIN** – Returns all records from the left table, even if unmatched  
- **RIGHT (OUTER) JOIN** – Returns all records from the right table  
- **FULL JOIN** *(if supported)* – Returns all records from both sides  
- **SELF JOIN** – Joins a table with itself  
- **CROSS JOIN** – Generates all possible combinations of records  

#### 💡 Example Queries:
```sql
-- Find all customers with their orders
SELECT c.CustomerName, o.OrderDate
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Show employees without assigned projects
SELECT e.EmployeeName, p.ProjectName
FROM Employees e
LEFT JOIN Projects p ON e.ProjectID = p.ProjectID
WHERE p.ProjectID IS NULL;

