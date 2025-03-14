/*

Data Insertion Script - Bronze Layer
=====================================================
	Truncates the bronze tables before loading data
    Directly inserts data from the csv file itself.


*/



use bronze;

-- crm_cust_info table--  

truncate table crm_cust_info;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_crm/cust_info.csv' 
INTO TABLE crm_cust_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@cst_id,@cst_key,@cst_firstname,@cst_lastname,@cst_marital_status,@cst_gndr,@cst_create_date)
SET
	cst_id = NULLIF(@cst_id,""),
    cst_key = NULLIF(@cst_key, ""),
    cst_firstname = NULLIF(@cst_firstname,""),
    cst_lastname = NULLIF(@cst_lastname, ""),
    cst_marital_status = NULLIF(@cst_marital_status, ""),
    cst_gndr = NULLIF(@cst_gndr,""),
    cst_create_date = NULLIF(@cst_create_date,"");


-- crm_prd_info table

truncate table crm_prd_info;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_crm/prd_info.csv' 
INTO TABLE bronze.crm_prd_info
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(prd_id, prd_key, prd_nm, @prd_cost, prd_line, @prd_start_dt, @prd_end_dt)
SET 
    prd_cost = NULLIF(@prd_cost, ''),
    prd_start_dt = NULLIF(TRIM(@prd_start_dt), ''),
    prd_end_dt = NULLIF(TRIM(@prd_end_dt), '');


-- crm_sales_details table

truncate table crm_sales_details;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_crm/sales_details.csv' 
INTO TABLE crm_sales_details
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(sls_ord_num,sls_prd_key,sls_cust_id,sls_order_dt,sls_ship_dt,sls_due_dt,@sls_sales,sls_quantity,@sls_price)
SET 
	sls_sales = NULLIF(@sls_sales,""),
	sls_price = NULLIF(@sls_price,"");

-- erp_loc_a101 table

truncate table erp_loc_101;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_erp/loc_a101.csv' 
INTO TABLE erp_loc_a101
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@CID,@CNTRY)
SET
	CID = NULLIF(@CID,""),
    CNTRY = NULLIF(@CNTRY,"");


-- crp_cust_az12 table

truncate table crp_cust_az12;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_erp/cust_az12.csv' 
INTO TABLE erp_cust_az12
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@CID,@BDATE,@GEN)
SET
	CID = NULLIF(@CID,""),
    BDATE = NULLIF(@BDATE,""),
    GEN = NULLIF(@GEN,"");


-- erp_px_cat_g1v2 table

truncate table erp_px_cat_g1v2;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/source_erp/px_cat_g1v2.csv' 
INTO TABLE erp_px_cat_g1v2
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@ID,@CAT,@SUBCAT,@MAINTENANCE)
SET
	ID = NULLIF(@ID,""),
    CAT = NULLIF(@CAT,""),
    SUBCAT = NULLIF(@SUBCAT,""),
    MAINTENANCE = NULLIF(@MAINTENANCE,"");

