# 🛒 Blinkit E-commerce Inventory Analysis

A **SQL-based Data Analyst portfolio project** using **PostgreSQL** to explore, clean, and analyze e-commerce inventory data. The project focuses on pricing, discounts, stock availability, estimated revenue, product value, and inventory distribution.

## 📌 Project Overview

The project follows a practical analyst workflow:

- Database and table creation
- Data exploration
- Data quality checks
- Data cleaning
- Business-focused SQL analysis
- Extraction of actionable inventory and pricing insights

## 🛠️ Tech Stack

- **Database:** PostgreSQL
- **Language:** SQL
- **Tool:** pgAdmin / PostgreSQL client

## 📊 Dataset

The dataset contains **3,732 product records** with fields covering SKU, category, product name, MRP, discount, selling price, available quantity, weight, stock status, and package quantity.

| Column | Description |
|---|---|
| `sku_id` | Unique product/SKU identifier |
| `category` | Product category |
| `name` | Product name |
| `mrp` | Maximum Retail Price |
| `discountPercent` | Discount percentage |
| `availableQuantity` | Available inventory quantity |
| `discountedSellingPrice` | Selling price after discount |
| `weightInGms` | Product weight in grams |
| `outOfStock` | Stock availability flag |
| `quantity` | Product/package quantity |

## 🔍 Project Workflow

### 1. Database Setup
Created the `Blinkit` table in PostgreSQL with appropriate data types and `sku_id` as the primary key.

### 2. Data Exploration
- Counted total records
- Reviewed sample records
- Checked NULL values
- Identified distinct product categories
- Compared in-stock and out-of-stock products
- Identified products appearing across multiple SKUs

### 3. 🧹 Data Cleaning
- Identified products with zero MRP or selling price
- Removed records where MRP was zero
- Converted MRP and discounted selling price from **paise to rupees**
- Verified the cleaned pricing data

## 📈 Business Analysis

The project answers 8 business questions:

1. What are the **top 10 products by discount percentage**?
2. Which **high-MRP products are out of stock**?
3. What is the **estimated revenue by category**?
4. Which products have **MRP above ₹500 and discount below 10%**?
5. Which **5 categories have the highest average discount**?
6. What is the **price per gram** for products weighing at least 100g?
7. How can products be classified into **Low, Medium, and Bulk** weight categories?
8. What is the **total inventory weight by category**?

## 🧠 SQL Concepts Demonstrated

- `CREATE TABLE`
- `SELECT`
- `WHERE`
- `DISTINCT`
- `GROUP BY`
- `HAVING`
- `ORDER BY`
- `LIMIT`
- `COUNT()`
- `SUM()`
- `AVG()`
- `ROUND()`
- `CASE WHEN`
- NULL-value checks
- `DELETE`
- `UPDATE`
- Conditional filtering
- Calculated fields and business metrics

## 📌 Key Project Metrics

- **3,732** product records analyzed
- **8** business questions answered
- **453** out-of-stock products identified
- **2,451** products identified with MRP above ₹500 and discount below 10%

> These metrics are based on the uploaded Blinkit dataset and the SQL analysis performed in this project.

## 📁 Repository Structure

```text
Blinkit-SQL-Data-Analysis/
│
├── Blinkit_SQL_Project.sql
├── Blinkit_v2.csv
└── README.md
```

## 🚀 How to Run

1. Install **PostgreSQL** and **pgAdmin**.
2. Create a PostgreSQL database.
3. Open `Blinkit_SQL_Project.sql`.
4. Import `Blinkit_v2.csv` into the `Blinkit` table.
5. Run the SQL queries in sequence:
   - Table creation
   - Data exploration
   - Data cleaning
   - Business analysis
6. Review the query results and business insights.

## 💼 Resume Description

**Blinkit E-commerce Inventory Analysis | PostgreSQL, SQL**

> Analyzed **3,732 product records** using PostgreSQL, performing data exploration and cleaning to identify pricing, discount, stock, and inventory patterns. Developed **8 business-focused SQL analyses** covering estimated revenue, product discounts, stock availability, price-per-gram, and inventory distribution. Identified **453 out-of-stock products** and **2,451 high-MRP/low-discount products** to support inventory and pricing analysis.

## 👤 Author

**Gaurav Sahu**  
B.Tech CSE (Data Science)  
Greater Noida
