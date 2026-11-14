-- Banking Credit Risk Analysis
-- 04: Checks on Tableau-prepared data and final source-table validation
-- Source: reorganized from the original E-commerce_Project.sql
-- This file assumes tableau_loan_data and/or tableau_loan_data_export
-- already exist in the database.

SELECT *
FROM tableau_loan_data
LIMIT 10;

SELECT COUNT(*) AS total_records
FROM tableau_loan_data;

SELECT *
FROM tableau_loan_data;


SELECT COUNT(*) AS total_records
FROM tableau_loan_data_export;

SHOW COLUMNS FROM loan_data;

USE banking_credit_risk;

SELECT
    loan_status,
    COUNT(*) AS total_loans
FROM loan_data
GROUP BY loan_status
ORDER BY total_loans DESC;
