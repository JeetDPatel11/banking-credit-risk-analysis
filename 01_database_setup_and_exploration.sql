-- Banking Credit Risk Analysis
-- 01: Database selection, table structure, and initial exploration
-- Source: reorganized from the original E-commerce_Project.sql
-- Run this file first. The banking_credit_risk database must already exist.

USE banking_credit_risk;

CREATE TABLE loan_data (
    loan_amnt DECIMAL(12,2),
    funded_amnt DECIMAL(12,2),
    term VARCHAR(20),
    int_rate DECIMAL(6,2),
    installment DECIMAL(12,2),
    grade VARCHAR(5),
    sub_grade VARCHAR(5),
    emp_length VARCHAR(20),
    home_ownership VARCHAR(30),
    annual_inc DECIMAL(15,2),
    verification_status VARCHAR(50),
    issue_d VARCHAR(20),
    loan_status VARCHAR(100),
    purpose VARCHAR(100),
    addr_state VARCHAR(10),
    dti DECIMAL(10,2),
    delinq_2yrs INT,
    fico_range_low INT,
    fico_range_high INT,
    open_acc INT,
    pub_rec INT,
    revol_bal DECIMAL(15,2),
    total_acc INT,
    total_pymnt DECIMAL(15,2),
    recoveries DECIMAL(15,2),
    application_type VARCHAR(50)
);

SELECT COUNT(*) AS total_rows
FROM loan_data;

SELECT *
FROM loan_data
LIMIT 10;

SET GLOBAL local_infile = 1;

SHOW VARIABLES LIKE 'local_infile';
