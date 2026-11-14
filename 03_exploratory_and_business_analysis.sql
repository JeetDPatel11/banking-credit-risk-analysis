-- Banking Credit Risk Analysis
-- 03: Exploratory analysis and business-risk analysis queries
-- Source: reorganized from the original E-commerce_Project.sql
-- These queries analyse loan_data after it has been created and populated.
-- Includes grade, term, purpose, home ownership, employment, income,
-- verification, interest-rate, FICO, DTI, and overall portfolio analysis.

USE banking_credit_risk;

SELECT
    purpose,
    COUNT(*) AS total_loans,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount
FROM loan_data
GROUP BY purpose
ORDER BY total_loans DESC;

SELECT
    grade,
    COUNT(*) AS total_loans,
    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(fico_range_low), 0) AS avg_fico_score,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount
FROM loan_data
GROUP BY grade
ORDER BY grade;

SELECT
    grade,
    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1
            ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1
            ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1
                ELSE 0
            END
        ) * 100.0 /
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                  OR loan_status LIKE '%Fully Paid%'
                THEN 1
                ELSE 0
            END
        ),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate

FROM loan_data

WHERE grade IS NOT NULL
  AND loan_status IS NOT NULL
  AND TRIM(loan_status) <> ''
  AND loan_amnt > 0

GROUP BY grade
ORDER BY default_rate DESC;

SELECT
    term,
    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1
            ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1
            ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1
                ELSE 0
            END
        ) * 100.0 /
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                  OR loan_status LIKE '%Fully Paid%'
                THEN 1
                ELSE 0
            END
        ),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE term IS NOT NULL
  AND loan_status IS NOT NULL
  AND loan_amnt > 0
  AND (
      loan_status LIKE '%Charged Off%'
      OR loan_status LIKE '%Fully Paid%'
  )

GROUP BY term
ORDER BY default_rate DESC;

SELECT
    purpose,
    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1 ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1 ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1 ELSE 0
            END
        ) * 100.0 /
        COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE purpose IS NOT NULL
  AND loan_status IS NOT NULL
  AND loan_amnt > 0
  AND (
      loan_status LIKE '%Charged Off%'
      OR loan_status LIKE '%Fully Paid%'
  )

GROUP BY purpose
ORDER BY default_rate DESC;

SELECT
    home_ownership,
    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1 ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1 ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*), 2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE home_ownership IS NOT NULL
    AND TRIM(home_ownership) <> ''
    AND loan_amnt > 0
    AND (
        loan_status LIKE '%Charged Off%'
        OR loan_status LIKE '%Fully Paid%'
    )

GROUP BY home_ownership
ORDER BY default_rate DESC;

SELECT
    emp_length,
    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1 ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1 ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*), 2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE emp_length IS NOT NULL
    AND TRIM(emp_length) <> ''
    AND loan_amnt > 0
    AND (
        loan_status LIKE '%Charged Off%'
        OR loan_status LIKE '%Fully Paid%'
    )

GROUP BY emp_length
ORDER BY default_rate DESC;

SELECT
    CASE
        WHEN annual_inc < 25000 THEN 'Below 25K'
        WHEN annual_inc < 50000 THEN '25K - 50K'
        WHEN annual_inc < 75000 THEN '50K - 75K'
        WHEN annual_inc < 100000 THEN '75K - 100K'
        WHEN annual_inc < 150000 THEN '100K - 150K'
        ELSE '150K+'
    END AS income_group,

    COUNT(*) AS total_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1 ELSE 0
        END
    ) AS defaulted_loans,

    SUM(
        CASE
            WHEN loan_status LIKE '%Fully Paid%'
            THEN 1 ELSE 0
        END
    ) AS fully_paid_loans,

    ROUND(
        SUM(
            CASE
                WHEN loan_status LIKE '%Charged Off%'
                THEN 1 ELSE 0
            END
        ) * 100.0 / COUNT(*), 2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,
    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE annual_inc IS NOT NULL
    AND annual_inc > 0
    AND loan_amnt > 0
    AND (
        loan_status LIKE '%Charged Off%'
        OR loan_status LIKE '%Fully Paid%'
    )

GROUP BY income_group
ORDER BY default_rate DESC;

-- Default Rate by Verification Status

SELECT
    verification_status,
    COUNT(*) AS total_loans,

    SUM(CASE
        WHEN loan_status LIKE '%Charged Off%'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    SUM(CASE
        WHEN loan_status LIKE '%Fully Paid%'
        THEN 1 ELSE 0
    END) AS fully_paid_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status LIKE '%Charged Off%'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data

WHERE verification_status IS NOT NULL
    AND TRIM(verification_status) <> ''
    AND loan_amnt > 0
    AND (
        loan_status LIKE '%Charged Off%'
        OR loan_status LIKE '%Fully Paid%'
    )

GROUP BY verification_status
ORDER BY default_rate DESC;

-- 1. Loan Status by Verification Status

SELECT
    verification_status,
    loan_status,
    COUNT(*) AS total_loans,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY verification_status),
        2
    ) AS percentage
FROM loan_data
WHERE verification_status IS NOT NULL
    AND TRIM(verification_status) <> ''
    AND loan_status IN ('Fully Paid', 'Charged Off')
GROUP BY verification_status, loan_status
ORDER BY verification_status, total_loans DESC;

-- 2. Default Rate by Purpose and Grade

SELECT
    purpose,
    grade,
    COUNT(*) AS total_loans,

    SUM(CASE
        WHEN loan_status = 'Charged Off'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    SUM(CASE
        WHEN loan_status = 'Fully Paid'
        THEN 1 ELSE 0
    END) AS fully_paid_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status = 'Charged Off'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate

FROM loan_data
WHERE purpose IS NOT NULL
    AND grade IS NOT NULL
    AND loan_status IN ('Fully Paid', 'Charged Off')
GROUP BY purpose, grade
ORDER BY default_rate DESC;

-- 3. Default Rate by Interest Rate Group

SELECT
    CASE
        WHEN int_rate < 10 THEN 'Below 10%'
        WHEN int_rate < 15 THEN '10% - 14.99%'
        WHEN int_rate < 20 THEN '15% - 19.99%'
        WHEN int_rate < 25 THEN '20% - 24.99%'
        ELSE '25% and Above'
    END AS interest_rate_group,

    COUNT(*) AS total_loans,

    SUM(CASE
        WHEN loan_status = 'Charged Off'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status = 'Charged Off'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data
WHERE int_rate IS NOT NULL
    AND loan_status IN ('Fully Paid', 'Charged Off')
GROUP BY interest_rate_group
ORDER BY default_rate DESC;

-- 4. Default Rate by FICO Score Group

SELECT
    CASE
        WHEN fico_range_low < 660 THEN 'Below 660'
        WHEN fico_range_low < 700 THEN '660 - 699'
        WHEN fico_range_low < 740 THEN '700 - 739'
        WHEN fico_range_low < 780 THEN '740 - 779'
        ELSE '780 and Above'
    END AS fico_score_group,

    COUNT(*) AS total_loans,

    SUM(CASE
        WHEN loan_status = 'Charged Off'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status = 'Charged Off'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate

FROM loan_data
WHERE fico_range_low IS NOT NULL
    AND loan_status IN ('Fully Paid', 'Charged Off')
GROUP BY fico_score_group
ORDER BY default_rate DESC;

-- 5. Default Rate by DTI Group

SELECT
    CASE
        WHEN dti < 10 THEN 'Below 10%'
        WHEN dti < 20 THEN '10% - 19.99%'
        WHEN dti < 30 THEN '20% - 29.99%'
        WHEN dti < 40 THEN '30% - 39.99%'
        ELSE '40% and Above'
    END AS dti_group,

    COUNT(*) AS total_loans,

    SUM(CASE
        WHEN loan_status = 'Charged Off'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status = 'Charged Off'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount

FROM loan_data
WHERE dti IS NOT NULL
    AND dti >= 0
    AND loan_status IN ('Fully Paid', 'Charged Off')
GROUP BY dti_group
ORDER BY default_rate DESC;

-- Overall Loan Portfolio KPIs

SELECT
    COUNT(*) AS total_resolved_loans,

    SUM(CASE
        WHEN loan_status = 'Fully Paid'
        THEN 1 ELSE 0
    END) AS fully_paid_loans,

    SUM(CASE
        WHEN loan_status = 'Charged Off'
        THEN 1 ELSE 0
    END) AS defaulted_loans,

    ROUND(
        SUM(CASE
            WHEN loan_status = 'Charged Off'
            THEN 1 ELSE 0
        END) * 100.0 / COUNT(*),
        2
    ) AS default_rate,

    ROUND(AVG(loan_amnt), 2) AS avg_loan_amount,

    ROUND(AVG(int_rate), 2) AS avg_interest_rate

FROM loan_data
WHERE loan_status IN ('Fully Paid', 'Charged Off');
