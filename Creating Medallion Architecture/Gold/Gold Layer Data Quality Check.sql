/*

Gold Layer Data Quality Check
=========================================
	Used to check for:
    - Null or duplicate primary keys.
    - Unwanted spaces in string fields.
    - Data standardization and consistency.
    - Invalid date ranges and orders.
    - Data consistency between related fields.
	

*/


-- ====================================================================
-- Checking 'gold.dim_customers'
-- Check for Uniqueness of Customer Key in gold.dim_customers
-- ====================================================================
SELECT 
    customer_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_customers
GROUP BY customer_key
HAVING COUNT(*) > 1;


-- ====================================================================
-- Checking 'gold.product_key'
-- Check for Uniqueness of Product Key in gold.dim_products
-- ====================================================================
SELECT 
    product_key,
    COUNT(*) AS duplicate_count
FROM gold.dim_products
GROUP BY product_key
HAVING COUNT(*) > 1;



-- ====================================================================
-- Checking 'gold.fact_sales'
-- Check the data model connectivity between fact and dimensions
-- ====================================================================
SELECT * 
FROM gold.fact_sales f
LEFT JOIN gold.dim_customers c
ON c.customer_key = f.customer_key
LEFT JOIN gold.dim_products p
ON p.product_key = f.product_key
WHERE p.product_key IS NULL OR c.customer_key IS NULL  