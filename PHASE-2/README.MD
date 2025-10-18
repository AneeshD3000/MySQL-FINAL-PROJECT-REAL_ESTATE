---

# Phase-2: SQL Query Mastery


Tables Covered

Users, Properties, Agents, Customers
Property Images, Amenities, Property Features, Transactions, Appointments
Property Reviews, Payments, Invoices, Loans, Installments, Commission
Maintenance Requests, Tenancies, Property Documents, Feedback, Contracts
Inspection, Utilities, Offers, Ratings, Property Insurance

Key Features

SQL Query Languages

DDL (Data Definition Language)**: CREATE, ALTER, DROP, TRUNCATE, RENAME
DML (Data Manipulation Language)**: INSERT, UPDATE, DELETE
DQL (Data Query Language)**: SELECT, DISTINCT, JOINs, GROUP BY, aggregate functions

 Operators & Clauses

Arithmetic: `+`, `-`, `/`
Comparison: `=`, `!=`, `<`, `>`, `<=`, `>=`
Logical: `AND`, `OR`, `NOT`
Special: `IN`, `BETWEEN`, `LIKE`, `IS NULL`
Clauses: WHERE, ORDER BY, GROUP BY, HAVING, LIMIT

 Aliases

Column Alias: `SELECT salary*12 AS AnnualSalary`
Table Alias: `SELECT c.customer_name, o.order_date FROM Customers c JOIN Orders o`

 Cascading Rules

ON DELETE CASCADE: Deleting a parent deletes dependent records
ON UPDATE CASCADE: Updating a parent key updates child records

 Highlights

 DML queries for existing tables
 Queries demonstrating operators, clauses, and aliases
 20+ cascading queries showing referential integrity

 Usage

1. Open your MySQL client or Workbench.
2. Load the `Phase-2.sql` file.
3. Execute queries sequentially to explore DDL, DML, DQL, operators, aliases, and cascading effects.
4. Observe the results and referential integrity across tables.

---


