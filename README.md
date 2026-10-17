# 🛒 Blinkit E-commerce Inventory Analysis

A **SQL-based data analysis project** using **PostgreSQL** to explore, clean, and analyze e-commerce inventory data. The project focuses on pricing, discounts, stock availability, estimated revenue, and inventory distribution across product categories.

## 📌 Project Overview

The project follows a practical analyst workflow:

- Database and table creation
- Data exploration and data quality checks
- Data cleaning
- Business-focused SQL analysis
- Extraction of inventory and pricing insights

## 🛠️ Tech Stack

- **Database:** PostgreSQL
- **Language:** SQL
- **Tool:** pgAdmin / PostgreSQL client

## 📊 Dataset

The dataset (`Blinkit_v2.csv`) contains **3,732 product records across 14 categories**, with 9 columns. Prices in the raw file are stored in **paise** and are converted to rupees during cleaning.

| Column | Description |
|---|---|
| `sku_id` | Auto-generated unique ID (`SERIAL` primary key, added in the table definition) |
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
Created the `Blinkit` table in PostgreSQL with appropriate data types and an auto-generated `sku_id` primary key.

### 2. Data Exploration
- Counted total records and reviewed sample rows
- Checked NULL values
- Identified distinct product categories
- Compared in-stock and out-of-stock products
- Identified products appearing across multiple SKUs

### 3. 🧹 Data Cleaning
- Identified products with zero MRP or zero selling price
- Removed the record where MRP was zero
- Converted MRP and discounted selling price from **paise to rupees**
- Verified the cleaned pricing data

## 📈 Business Analysis

The project answers 8 business questions:

1. What are the **top 10 products by discount percentage**?
2. Which **high-MRP products (above ₹300) are out of stock**?
3. What is the **estimated revenue by category** (selling price × available quantity)?
4. Which products have **MRP above ₹500 and discount below 10%**?
5. Which **5 categories have the highest average discount**?
6. What is the **price per gram** for products weighing at least 100g?
7. How can products be classified into **Low, Medium, and Bulk** weight categories?
8. What is the **total inventory weight by category**?

## 📌 Key Findings

- **453 products (about 12% of the catalog) are out of stock**, out of 3,732 records.
- Only **82 product listings (39 distinct product/price combinations)** have an MRP above ₹500 *and* a discount below 10%, so premium, low-discount items are a small part of the catalog (about 2%).
- **Fruits & Vegetables** has the highest average discount (**15.46%**), followed by **Meats, Fish & Eggs** (**11.03%**).
- Weight-based classification splits products into **Low (<1 kg), Medium (1–5 kg) and Bulk (5 kg+)** to compare inventory by pack size.

> Metrics are based on the `Blinkit_v2.csv` dataset in this repository. The MRP-above-₹500 filter is applied **after** the paise-to-rupee conversion; running it on the raw paise values would return a much larger, incorrect count.

## 🧠 SQL Concepts Demonstrated

`CREATE TABLE` · `SELECT` · `WHERE` · `DISTINCT` · `GROUP BY` · `ORDER BY` · `LIMIT` · `COUNT()` · `SUM()` · `AVG()` · `ROUND()` · `CASE WHEN` · NULL-value checks · `DELETE` · `UPDATE` · Calculated fields and business metrics

## 📁 Repository Structure

```text
Blinkit-SQL-Data-Analysis-Project/
│
├── Blinkit_SQL_Project.sql
├── Blinkit_v2.csv
└── README.md
```

## 🚀 How to Run

1. Install **PostgreSQL** and **pgAdmin**.
2. Create a PostgreSQL database.
3. Open `Blinkit_SQL_Project.sql` and run the `CREATE TABLE` statement.
4. Import `Blinkit_v2.csv` into the `Blinkit` table (map the 9 CSV columns; `sku_id` is generated automatically).
5. Run the rest of the script **in order**: data exploration → data cleaning → business analysis.

## 👤 Author

**Gaurav Sahu**
B.Tech CSE (Data Science), Greater Noida

[LinkedIn](https://www.linkedin.com/in/gaurav-sahu-767040230/) · [GitHub](https://github.com/Sahuji2004) · sahugaurav8023@gmail.com
