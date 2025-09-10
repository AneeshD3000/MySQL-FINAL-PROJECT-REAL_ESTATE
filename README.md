# MySQL-FINAL-PROJECT-REAL_ESTATE
📊 Real Estate Database project with 25–30 tables, each with 5+ attributes. Includes schema design, sample data, and queries to manage properties, clients, agents, sales, rentals, and payments. Built for academic use, SQL learning, and real estate management system development.
# 🏡 MySQL-FINAL-PROJECT-REAL_ESTATE  
---
<img width="612" height="408" alt="image" src="https://github.com/user-attachments/assets/5da526bb-c9a6-42cb-90c5-4e7bdbdc6034" />

## 📌 Features
- **25–30 normalized tables** with at least 5 attributes each.  
- **Entity-Relationship (ER) Diagram** for clear schema visualization.  
- Implementation of **Primary Keys, Foreign Keys, and Relationships**.  
- Preloaded **sample data** for testing.  
- Example **SQL queries** for real estate analytics:
  - Top-selling agents  
  - High-value properties  
  - Rental revenue reports  
  - Active client transactions  

---

<img width="692" height="489" alt="image" src="https://github.com/user-attachments/assets/ed357f36-5cf0-4b2b-aa07-35abfa304f00" />

## 🛠️ Tech Stack
- **Database**: MySQL (tested on MySQL 8.0+)  
- **Scripts**: SQL (DDL for schema, DML for data, Joins, Views, Procedures)  
- **Documentation**: ER Diagram + README.md  

---

## 📂 Repository Structure
```bash
📁 MySQL-FINAL-PROJECT-REAL_ESTATE
 ┣ 📄 Schema.sql         # Database schema (tables & relationships)
 ┣ 📄 InsertData.sql     # Sample records for testing
 ┣ 📄 Queries.sql        # Example SQL queries (reports & insights)
 ┣ 📄 ER_Diagram.png     # Entity-Relationship diagram
 ┣ 📄 README.md          # Documentation

git clone https://github.com/your-username/MySQL-FINAL-PROJECT-REAL_ESTATE.git
cd MySQL-FINAL-PROJECT-REAL_ESTATE

-- Create database
CREATE DATABASE RealEstate;

-- Use the database
USE RealEstate;

-- Run schema
SOURCE Schema.sql;

-- Insert sample data
SOURCE InsertData.sql;
SOURCE Queries.sql;

-- 1. List all properties available for rent
SELECT * FROM Properties WHERE Status = 'Available' AND Type = 'Rent';

-- 2. Find top 5 agents with highest sales revenue
SELECT Agent_ID, SUM(Sale_Amount) AS Total_Sales
FROM Sales
GROUP BY Agent_ID
ORDER BY Total_Sales DESC
LIMIT 5;

-- 3. Calculate total rental income per month
SELECT MONTH(Rental_Date) AS Month, SUM(Rent_Amount) AS Total_Rent
FROM Rentals
GROUP BY MONTH(Rental_Date);

-- 4. Show clients who bought more than one property
SELECT Client_ID, COUNT(Property_ID) AS Purchases
FROM Sales
GROUP BY Client_ID
HAVING COUNT(Property_ID) > 1;

-- 5. Display most expensive property in each city
SELECT City, MAX(Price) AS Max_Price
FROM Properties
GROUP BY City;
Use Cases

Academic Projects – Final year database/SQL project

SQL Practice – Hands-on with DDL, DML, Joins, Views, Procedures

Real Estate Systems – Starting point for management software

🤝 Contributing

Contributions are welcome!
To contribute:

Fork the repo

Create a new branch (feature-branch)

Commit your changes

Push the branch and open a Pull Request

📜 License

Licensed under the MIT License – free to use and modify.

👨‍💻 Author
Aneesh Dabhane
📧aneeshdabhane5@gmail.com
🔗 GitHub
 | LinkedIn
---
