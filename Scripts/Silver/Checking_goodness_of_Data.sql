/* check For Nulls or Duplicates in Primary Key 
Expectation: No Result */

SELECT 
cst_id,
COUNT(*)
FROM Silver.crm_cust_info
GROUP BY cst_id 
HAVING COUNT(*) > 1 OR cst_id IS NULL

--Check for Unwanted Spaces
--Expectation: No Results

SELECT 
cst_firstname
FROM Silver.crm_cust_info
WHERE cst_key != TRIM(cst_key)

--Data Standardization & Consistency 
SELECT DISTINCT 
cst_gndr 
FROM Silver.crm_cust_info
