# 🛒 Blinkit SQL Data Analysis Project

A **SQL-based Data Analyst portfolio project** focused on exploring, cleaning, and analyzing Blinkit-style e-commerce inventory data using **PostgreSQL**.

The project demonstrates practical SQL skills including data exploration, data cleaning, aggregations, filtering, `CASE` statements, and business-oriented analysis.

## 📌 Project Overview

The goal of this project is to analyze product and inventory data and answer practical business questions related to:

- Product categories
- Stock availability
- Pricing and discounts
- Estimated revenue
- Product value
- Inventory weight
- High-value and discounted products

## 🛠️ Tech Stack

- **Database:** PostgreSQL
- **Language:** SQL
- **Tool:** pgAdmin / PostgreSQL client

## 📊 Dataset Structure

The `Blinkit` table contains:

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

### 1. Database & Table Creation
Created the `Blinkit` table using appropriate PostgreSQL data types and defined `sku_id` as the primary key.

### 2. Data Exploration
- Counted total records
- Examined sample records
- Checked for NULL values
- Identified distinct product categories
- Compared in-stock vs. out-of-stock products
- Identified product names appearing across multiple SKUs

### 3. 🧹 Data Cleaning
- Identified products with zero MRP or selling price
- Removed records where MRP was zero
- Converted price values from **paise to rupees**
- Verified cleaned price values

## 📈 Business Questions & SQL Analysis

1. **Top 10 products by discount percentage**
2. **High-MRP products that are out of stock** (MRP > ₹300)
3. **Estimated revenue by category** using discounted price × available quantity
4. **Products with MRP > ₹500 and discount < 10%**
5. **Top 5 categories by average discount**
6. **Price per gram analysis** for products weighing at least 100g
7. **Product weight classification** into Low, Medium, and Bulk
8. **Total inventory weight by category**

## 🧠 SQL Concepts Demonstrated

- `CREATE TABLE`
- `SELECT`, `WHERE`, `DISTINCT`
- `GROUP BY`, `HAVING`
- `ORDER BY`, `LIMIT`
- `COUNT`, `SUM`, `AVG`
- `CASE WHEN`
- NULL-value checking
- `DELETE` and `UPDATE`
- Filtering with multiple conditions
- Price and inventory calculations

## 📁 Repository Structure

```text
Blinkit-SQL-Data-Analysis/
│
├── Blinkit_SQL_Project.sql
└── README.md
```

## 🚀 How to Run

1. Install PostgreSQL and pgAdmin.
2. Create a PostgreSQL database.
3. Open `Blinkit_SQL_Project.sql`.
4. Load the Blinkit dataset into the `Blinkit` table.
5. Run the exploration, cleaning, and analysis queries.
6. Review the results for each business question.

## 💼 Resume Description

**Blinkit E-commerce Inventory Analysis | PostgreSQL, SQL**

> Analyzed e-commerce inventory data using PostgreSQL to perform data exploration, cleaning, and business analysis. Developed SQL queries to evaluate discounts, stock availability, estimated category revenue, product value, and inventory distribution.

## 👤 Author

**Gaurav Sahu**  
B.Tech CSE (Data Science)  
Greater Noida
