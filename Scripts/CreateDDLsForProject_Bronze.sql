USE DataWarehouse

CREATE TABLE bronze.crm_prd_info (
	prd_id INT,
	prd_key NVARCHAR(50),
	prd_nm NVARCHAR(50),
	prd_cost INT,
	prd_line NVARCHAR(50),
	prd_start_dt DATE,
	prd_end_dt DATE

);

CREATE TABLE Bronze.Sales_details (
	sls_ord_num NVARCHAR(50),
	sls_prd_key NVARCHAR(50),
	sls_cust_id INT,
	sls_order_dt INT,
	sls_ship_dt INT, 
	sls_due_dt INT,
	sls_sales INT,
	sls_quantity INT,
	sls_price INT
);

CREATE TABLE Bronze.CUST_AZ12 (
	CID NVARCHAR(50),
	BDATE DATE,
	GEN NVARCHAR(50)
);

CREATE TABLE Bronze.LOC_A101 (
	CID NVARCHAR(50),
	CNTRY NVARCHAR(50)
);

CREATE TABLE Bronze.PX_CAT_G1V2 (
	ID NVARCHAR(50),
	CAT NVARCHAR(50),
	SUBCAT NVARCHAR(50),
	Maintenance NVARCHAR(50)
);

ALTER TABLE bronze.crm_prd_info
ALTER COLUMN prd_start_dt DATETIME;


ALTER TABLE bronze.crm_prd_info
ALTER COLUMN prd_end_dt DATETIME;

EXEC sp_rename 'Bronze.Sales_details', 'crm_sales_details';

--Change the names of all tables to equal Baraa Data 
