EXEC Bronze.Load_Bronze

CREATE OR ALTER PROCEDURE Bronze.load_bronze AS 

BEGIN
	PRINT'================================================================'
	PRINT 'Loading Bronze Layer'
	PRINT'================================================================'

	PRINT '------------------------------------------------------------------------';
	PRINT'Loading CRM Tables';
	PRINT '------------------------------------------------------------------------';

	PRINT '>>Truncating Table: bronze.crm_cust_info';

	--First Example of BULK INSERT
	TRUNCATE TABLE bronze.crm_cust_info;

	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';

	BULK INSERT bronze.crm_cust_info
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH (
		 FIRSTROW = 2,
		 FIELDTERMINATOR = ',',
		 TABLOCK 
	);

	--Using example to create my own scripts for other tables

	PRINT '>>Truncating Table: bronze.crm_cust_info';

	TRUNCATE TABLE bronze.crm_prd_info;

	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';

	BULK INSERT bronze.crm_prd_info
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH (
		 FIRSTROW = 2,
		 FIELDTERMINATOR = ',',
		 TABLOCK 
	);

	PRINT '>>Truncating Table: bronze.crm_cust_info';

	TRUNCATE TABLE bronze.crm_sales_details;
	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH (
		 FIRSTROW = 2,
		 FIELDTERMINATOR = ',',
		 TABLOCK 
	);

	PRINT '------------------------------------------------------------------------';
	PRINT'Loading ERP Tables';
	PRINT '------------------------------------------------------------------------';

	PRINT '>>Truncating Table: bronze.crm_cust_info';

	TRUNCATE TABLE bronze.erp_CUST_AZ12;

	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';

	BULK INSERT bronze.erp_CUST_AZ12
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT '>>Truncating Table: bronze.crm_cust_info';

	TRUNCATE TABLE bronze.erp_LOC_A101;

	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';

	BULK INSERT bronze.erp_LOC_A101
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);
	PRINT '>>Truncating Table: bronze.crm_cust_info';

	TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;

	PRINT '>>Inserting Data Into: Bronze.crm_cust_info';

	BULK INSERT bronze.erp_PX_CAT_G1V2
	FROM 'C:\STUDY TOPICS\DataWithBaraaSQL\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

END 
