# Cleaning E-Commerce

This project is a data cleaning and preparation project for an e-commerce dataset. It focuses on transforming a messy Indian e-commerce orders dataset into a cleaner, more reliable format that can be used for analysis, reporting, and business insights.

## Project Overview
The dataset contains raw order information such as customer name, email, phone number, city, state, product category, price, quantity, order date, delivery date, payment method, order status, and ratings. In the raw version, the records include inconsistencies such as missing values, duplicate entries, formatting issues, invalid emails, inconsistent city/category naming, incorrect date formats, and invalid numeric values.

This repository demonstrates how to clean and standardize such data using SQL queries in MySQL.

## Objectives
- Remove duplicate and invalid records
- Standardize customer and product data
- Fix date and time formatting issues
- Clean phone numbers and email IDs
- Handle missing or inconsistent values
- Normalize category, city, and status fields
- Prepare a cleaned dataset for further analysis and reporting

## Dataset
The project includes both raw and cleaned datasets:

- `Dataset/Raw_Dataset/indian_ecommerce_dirty_project2.csv` - original dirty dataset
- `Dataset/cleaned_Dataset/ecommerce_orders_cleaned.csv` - processed cleaned dataset
- `Dataset/cleaned_Dataset/Cleaned_exported_file.csv` - exported cleaned version

## SQL Scripts
The repository contains SQL scripts used for database creation and cleaning tasks:

- `Sql Queries/Database_creation.sql` - creates the database and tables
- `Sql Queries/Cleaning_queries.sql` - main data cleaning operations
- `Sql Queries/Queries.sql` - validation and audit queries
- `Sql Queries/datatype_conversion.sql` - type conversion logic
- `Sql Queries/updations.sql` - update operations
- `Sql Queries/validation.sql` - validation checks

## Tools and Techniques Used
- MySQL
- SQL data cleaning operations
- Duplicate removal
- Null-value handling
- String and date standardization
- Regular expression-based cleanup
- Data validation and quality checks

## Result
The project produces a cleaned e-commerce orders dataset that is more consistent and analysis-ready, making it suitable for dashboards, order analysis, customer segmentation, and business intelligence tasks.

## Folder Structure
```text
Cleaning-E-Commerce/
├── Dataset/
│   ├── Raw_Dataset/
│   └── cleaned_Dataset/
├── Sql Queries/
├── Screenshorts/
└── README.md
```

This repository is useful for learning SQL-based data cleaning, data quality improvement, and preparing raw e-commerce data for business analysis.
