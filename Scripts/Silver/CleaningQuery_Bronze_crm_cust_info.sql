SELECT 
	cst_id, 
	cst_key,
	TRIM(cst_firstname) AS cst_firstname,
	TRIM(cst_lastname) AS cst_lastname,
	CASE WHEN UPPER(cst_marital_status) = 'S' THEN 'Single'
		 WHEN UPPER(cst_marital_status) = 'M' THEN 'Married'
		 ELSE 'n/a'
	END cst_marital_status,
	CASE WHEN UPPER(cst_gndr) = 'F' THEN 'Female'
		 WHEN UPPER(cst_gndr) = 'M' THEN 'Male'
		 ELSE 'n/a'
	END cst_gndr,
	cst_create_date
FROM ( 
SELECT 
*,
ROW_NUMBER() OVER (PARTITION BY cst_id ORDER BY cst_create_date DESC) AS Flag 
FROM bronze.crm_cust_info
WHERE cst_id IS NOT NULL 
)t WHERE flag_last = 1
