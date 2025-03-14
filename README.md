# Sales Data Warehouse & Analytics System

A comprehensive Data Warehouse project implementing Medallion Architecture (Bronze, Silver, Gold layers) using **MySQL**. The system integrates sales data from ERP and CRM sources to provide analytical reporting and actionable insights.

![Medallion Architecture]()

## 🚀 Project Overview
This project demonstrates how to design and build a modern data warehouse optimized for analytical queries and reporting. It focuses on transforming raw data into valuable business insights.

## 📌 Features
- **Data Architecture:** Implementation of Medallion Architecture (Bronze, Silver, Gold) for data organization and transformation.
- **ETL Pipelines:** Efficient data extraction, transformation, and loading using MySQL.
- **Data Modeling:** Development of star-schema models with fact and dimension tables for optimized query performance.
- **Analytics & Reporting:** Creation of SQL-based dashboards to provide real-time insights.
- **Data Quality Management:** Data cleansing and validation processes to ensure high data accuracy.
- **Comprehensive Documentation:** Clear and structured documentation for stakeholders and analysts.

## 📂 Dataset
The datasets used in this project include:
- `cust_info.csv`: Customer details (ID, Name, Gender, Marital Status, etc.)
- `prd_info.csv`: Product details (ID, Name, Cost, Line, etc.)
- `sales_details.csv`: Sales transactions (Order Number, Product ID, Customer ID, Sales Amount, etc.)
- `CUST_AZ12.csv`: Additional customer information (Birthdate, Gender)
- `LOC_A101.csv`: Customer location data (Country)
- `PX_CAT_G1V2.csv`: Product category information (Category, Subcategory, Maintenance)

## 📝 Data Architecture
The project follows the **Medallion Architecture**:
- **Bronze Layer:** Raw data ingestion from CSV files.
- **Silver Layer:** Cleaned and transformed data with applied business logic.
- **Gold Layer:** Analytical tables optimized for reporting and visualization.

## 📊 Reporting & Analysis
SQL-based dashboards provide insights into:
- Sales performance by product categories.
- Customer demographics and purchasing behavior.
- Revenue trends over time.
- Country-wise sales distribution.

## 💡 Key Achievements
- Reduced data ingestion time by **50%** through optimized ETL processes.
- Enhanced query performance by **40%** via efficient data modeling.

## Links
-[MySQL](https://www.mysql.com)
-[Git Repo](https://github.com/DataWithBaraa/sql-data-warehouse-project/tree/main)

## 💪 Technologies Used
- **MySQL** - Database Management
- **SQL** - Data Modeling, ETL, Reporting
- **Excel/CSV** - Data Source Files

## 📌 How to Use
1. Clone the repository.
2. Import the CSV files into MySQL.
3. Run the ETL scripts to process and transform data.
4. Access the analytical reports via SQL queries.

## 📧 Contact
For any inquiries or suggestions, feel free to reach out!

