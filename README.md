# 🧩 Task 6: Subqueries and Nested Queries

## 📌 Overview
This task demonstrates how to use **subqueries** inside different SQL clauses to perform advanced filtering, comparisons, and aggregations in the `EcommerceDB`.  
It covers **scalar subqueries, correlated subqueries, EXISTS, IN, and derived tables** with practical use cases.

---

## 🎯 Objectives
- Learn how to use subqueries in `SELECT`, `WHERE`, and `FROM`  
- Understand the difference between scalar and correlated subqueries  
- Apply filtering with `EXISTS` and `IN`  
- Use derived tables for advanced query logic  

---

## 🛠️ Features
✅ Scalar subqueries → Use subqueries that return a single value (e.g., products above average price)  
✅ Correlated subqueries → Row-by-row evaluation (e.g., high-spending customers)  
✅ EXISTS → Efficient filtering for existence checks  
✅ IN → Match against a list of values from subquery results  
✅ Derived tables → Subqueries inside `FROM` for grouped results (e.g., top-selling products)  

---

## 📊 Outcomes
- Ability to write **advanced SQL queries using subqueries**  
- Perform complex filtering beyond simple `WHERE` conditions  
- Extract business insights such as:  
  - Customers with delivered orders  
  - High-value customers  
  - Top-selling products  

---

## 📝 Example Queries
- **IN Subquery** → Find customers who placed orders  
- **Scalar Subquery** → Get products priced above average  
- **Correlated Subquery** → Find customers spending more than 5000  
- **EXISTS** → List customers with delivered orders  
- **Derived Table** → Find top 3 most sold products  

---

## 🔑 Key Concepts
- Scalar Subqueries  
- Correlated Subqueries  
- EXISTS vs IN  
- Derived Tables  
