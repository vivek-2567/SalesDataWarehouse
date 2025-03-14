/*

DDL Script for Bronze Layer.
==================================================================================
	
    This script will drop if any of the table already exists.
	And make the table if does not exists, it will make the table.
	This script can also be used in a pipeline, and repetative running of the script will not break the pipeline.
    
*/

use bronze;

drop table if exists crm_cust_info;

create table if not exists crm_cust_info(
	cst_id              INT,
    cst_key             VARCHAR(50),
    cst_firstname       VARCHAR(50),
    cst_lastname        VARCHAR(50),
    cst_marital_status  VARCHAR(50),
    cst_gndr            VARCHAR(50),
    cst_create_date     DATE
);


drop table if exists crm_prd_info;

create table if not exists crm_prd_info(
    prd_id       INT,
    prd_key      VARCHAR(50),
    prd_nm       VARCHAR(50),
    prd_cost     INT,
    prd_line     VARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);

drop table if exists crm_sales_details;

create table if not exists crm_sales_details(
    sls_ord_num  VARCHAR(50),
    sls_prd_key  VARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);

drop table if exists erp_loc_a101;

create table if not exists erp_loc_a101(
    cid    VARCHAR(50),
    cntry  VARCHAR(50)
);

drop table if exists erp_cust_az12;

create table if not exists erp_cust_az12(
    cid    VARCHAR(50),
    bdate  DATE,
    gen    VARCHAR(50)
);


drop table if exists erp_px_cat_g1v2;

create table if not exists erp_px_cat_g1v2(
	id           VARCHAR(50),
    cat          VARCHAR(50),
    subcat       VARCHAR(50),
    maintenance  VARCHAR(50)
);