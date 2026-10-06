drop table if exists Blinkit;

create table Blinkit (
sku_id SERIAL PRIMARY KEY,
category VARCHAR(120),
name VARCHAR(150) NOT NULL,
mrp NUMERIC(8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGms INTEGER,
outOfStock BOOLEAN,	
quantity INTEGER
);


-- Data Exploration

-- Count OF Rows
SELECT COUNT(*) FROM blinkit

-- Sample Data
SELECT * FROM blinkit
LIMIT 10;

-- Null Values 
SELECT * FROM blinkit
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountPercent IS NULL
OR
discountedSellingPrice IS NULL
OR
weightInGms IS NULL
OR
availableQuantity IS NULL
OR
outOfStock IS NULL
OR
quantity IS NULL;

-- Different Product Category
SELECT DISTINCT category
FROM blinkit
ORDER BY category;

-- Product in Stock VS OUT of Stock
SELECT outOfStock, COUNT(sku_id)
FROM blinkit
GROUP BY outOfStock;

-- Product Names Present Multiple Times
SELECT name, COUNT(sku_id) AS "Number of SKUs"
FROM blinkit
GROUP BY name
HAVING count(sku_id) > 1
ORDER BY count(sku_id) DESC;

DATA CLEANING

-- Product with price =0
SELECT * FROM blinkit
WHERE mrp = 0 OR discountedSellingPrice = 0;

DELETE FROM blinkit
WHERE mrp = 0;

-- Convert Paise TO Rupees
UPDATE blinkit
SET mrp = mrp / 100.0,
discountedSellingPrice = discountedSellingPrice / 100.0;

SELECT mrp, discountedSellingPrice FROM blinkit;

-- . DATA CLEANING

-- Q1. Find The Top 10 Best Value products Based On Discount Percentage ? 

 SELECT DISTINCT name, mrp, discountPercent
FROM blinkit
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2. What are the Products with High MRP but Out of Stock ?.

 SELECT DISTINCT name,mrp
FROM blinkit
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;

-- Q3. Calculate The Estimated Revenue for each Category ?

SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM blinkit
GROUP BY category
ORDER BY total_revenue;

-- Q4.Find all products where MRP is greater than ₹500 and discount is less than 10%.?

SELECT DISTINCT name, mrp, discountPercent
FROM blinkit
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.

SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM blinkit
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.

SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM blinkit
WHERE weightInGms >= 100
ORDER BY price_per_gram;

--Q7.Group the products into categories like Low, Medium, Bulk.

SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM blinkit;

--Q8.What is the Total Inventory Weight Per Category 

SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM blinkit
GROUP BY category
ORDER BY total_weight;





