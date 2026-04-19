USE DataWareHouse
IF OBJECT_ID ('Bronze.crm_cust_info', 'U') IS NOT NULL 
	DROP TABLE Bronze.crm_cust_info
CREATE TABLE Bronze.crm_cust_info ( 
cst_id INT, 
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50), 
cst_create_date DATE
); 
