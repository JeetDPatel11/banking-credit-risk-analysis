-- Banking Credit Risk Analysis
-- 02: Data quality checks, loan-status validation, and removal of invalid loan-status rows
-- Source: reorganized from the original E-commerce_Project.sql
-- Review the DELETE statement before execution. It permanently removes rows
-- where loan_status is NULL or blank from loan_data.

USE banking_credit_risk;

SELECT
    COUNT(*) AS total_rows,
    SUM(loan_amnt IS NULL) AS missing_loan_amnt,
    SUM(loan_status IS NULL) AS missing_loan_status,
    SUM(annual_inc IS NULL) AS missing_annual_inc,
    SUM(fico_range_low IS NULL) AS missing_fico_low,
    SUM(fico_range_high IS NULL) AS missing_fico_high
FROM loan_data;


SELECT DISTINCT loan_status
FROM loan_data
ORDER BY loan_status;

SELECT *
FROM loan_data
WHERE loan_status IS NULL
   OR TRIM(loan_status) = '';

SELECT COUNT(*) AS invalid_rows
FROM loan_data
WHERE loan_status IS NULL
   OR TRIM(loan_status) = '';

DELETE FROM loan_data
WHERE loan_status IS NULL
   OR TRIM(loan_status) = '';

SELECT COUNT(*) AS total_rows
FROM loan_data;

SELECT
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM loan_data), 2
    ) AS percentage
FROM loan_data
GROUP BY loan_status
ORDER BY total_loans DESC;
