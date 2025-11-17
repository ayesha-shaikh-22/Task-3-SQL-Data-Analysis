# Task 3 – SQL for Data Analysis

**Project Title:** ClassicModels Database Analysis using MySQL (XAMPP + phpMyAdmin)

**Objective:**  
To analyze and query the ClassicModels dataset using SQL.  
The task includes extracting insights using SELECT, JOIN, GROUP BY, HAVING, SUBQUERIES, VIEWS, and INDEXES.

---

## Tools Used:
- MySQL (XAMPP)
- phpMyAdmin
- VS Code (for writing task3.sql)
- ClassicModels Sample Database

---

## Dataset Used:
**classicmodels** (MySQL Sample Database)

### Main Tables in the Dataset:

| Table Name     | Description                                            |
|----------------|--------------------------------------------------------|
| customers      | Customer information and credit limits                 |
| orders         | Order details placed by customers                      |
| orderdetails   | Line-level data for each order                         |
| products       | All products available for order                       |
| productlines   | Product categories                                     |
| payments       | Customer transactions and payment amounts              |
| employees      | Employee information                                   |
| offices        | Office location details                                |

---

## Steps Performed as Follows:

### **1. Basic SQL Queries (Filtering & Sorting)**  
Used `SELECT`, `WHERE`, and `ORDER BY` to extract specific data.  
Examples:  
- Customers from France  
- Products with price greater than 100  
- Customers sorted by credit limit  

### **2. Performed SQL JOIN Operations**  
Used `INNER JOIN` and `LEFT JOIN` to connect multiple tables.  
Examples:  
- Orders with customer names  
- Customers with their payments  
- Products that were never ordered  

### **3. Applied Aggregations using GROUP BY**  
Used `SUM`, `AVG`, and `COUNT` for analyzing totals and averages.  
Examples:  
- Total spending by each customer  
- Average payment amount  

### **4. Used HAVING for Group Filtering**  
Example:  
- Customers who spent more than 100000  

### **5. Implemented Subqueries**  
Used nested queries for deeper filtering.  
Examples:  
- Customers with more than 3 orders  
- Products priced above the average price  

### **6. Created a SQL View**  
Created a virtual table for top-selling products:  
`CREATE VIEW top_selling_products AS ...`

This view helps in summarizing product sales without rewriting the query.

### **7. Optimized SQL Queries with Indexes**  
Created indexes to speed up data retrieval.  
Examples:  
- Index on `orders(customerNumber)`  
- Index on `orderdetails(productCode)`  

---

## Summary of SQL Operations

| SQL Concept     | Description                               | Examples Used                                    |
|-----------------|-------------------------------------------|--------------------------------------------------|
| SELECT, WHERE   | Filtering & selecting specific data       | Customers, products, payments                    |
| ORDER BY        | Sorting data                              | Credit limits, product prices                    |
| JOINs           | Combine multiple tables                   | Customers + orders, customers + payments         |
| GROUP BY        | Aggregating data                          | Total spending, average payment                  |
| HAVING          | Filtering after aggregation               | Customers spending > 100000                      |
| SUBQUERIES      | Nested queries                            | Orders count, average price comparison           |
| VIEW            | Virtual table for repeated use            | Top-selling products                             |
| INDEXES         | Performance optimization                  | Faster lookup on customerNumber, productCode     |

---

## Files Included

| File Name          | Description                               |
|--------------------|-------------------------------------------|
| task3.sql          | All SQL queries used in this task         |
| README.md          | Documentation summary for this task       |

---


## Conclusion

Through this SQL Analysis Project, I learned how to:

- Write SQL queries for real-world data  
- Perform table joins and relational analysis  
- Use GROUP BY, HAVING, and aggregate functions  
- Create views for analytical reporting  
- Optimize performance using indexes  
- Execute and interpret SQL results in phpMyAdmin  

This task helped me strengthen my SQL foundations and understand how databases are used in data analysis.

---

## Author  
**Ayesha Shaikh**  
Data Analyst Intern  
Email: **ashu203831@gmail.com**  
GitHub: **https://github.com/ayesha-shaikh-22/**
