# Banking Credit Risk Analysis

### Analyzing Loan Portfolio Performance and Default Risk Using MySQL and Tableau

## Project Overview

This project focuses on analyzing banking loan data to understand loan portfolio performance, borrower characteristics, and credit default risk.

Using MySQL for data preparation and SQL-based analysis and Tableau Public for data visualization, the project aims to identify patterns in loan defaults, examine lending trends, and generate meaningful business insights that can support credit risk assessment and lending decisions.

## Business Objectives

- Analyze overall loan portfolio performance.
- Understand the distribution of loan applications across different categories.
- Evaluate default rates across loan purposes and credit grades.
- Examine the relationship between credit grades and interest rates.
- Identify borrower segments that may require closer credit risk assessment.
- Develop an interactive dashboard for business analysis.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| MySQL Workbench | Database management, SQL queries, data preparation and validation |
| Tableau Public | Data visualization and interactive dashboard development |
| CSV / Excel | Dataset storage and initial data handling |
| GitHub | Project documentation and version control |

## Dataset Description

The project uses banking loan application data containing borrower, loan, credit grade, employment, interest rate, and loan status information.

**Dataset size:** 134,813 resolved loan records used in the analysis.

Important fields include:
- Loan Amount
- Loan Status
- Loan Purpose
- Home Ownership
- Employment Length
- Loan Grade
- Interest Rate
- Default Flag

## Project Workflow

1. Dataset import and initial exploration.
2. Data cleaning and preparation using MySQL.
3. SQL-based data validation and exploratory analysis.
4. Preparation of analysis-ready data for Tableau.
5. Creation of analytical charts and KPI metrics.
6. Development of the Banking Credit Risk Analysis Dashboard.
7. Business insights and recommendations.

## Tableau Dashboard Preview
<img width="1136" height="673" alt="Screenshot 2026-11-14 at 5 17 13 PM" src="https://github.com/user-attachments/assets/adc92e93-0b87-45d6-aa32-50a098d639f7" />

## Tableau Dashboard

**[View Interactive Dashboard on Tableau Public](https://public.tableau.com/views/bank_credit_risk_analysis_Dashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

The interactive dashboard provides insights into loan portfolio performance, borrower characteristics, loan distribution and default risk analysis.

## Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Total Loan Applications | 134,813 |
| Total Loan Amount | $1.94B |
| Average Loan Amount | $14,424.90 |
| Average Interest Rate | 13.25% |
| Overall Default Rate | 19.91% |

## Business Insights

Based on the analysis of 134,813 loan records, the following key business insights were identified:

1. **Overall Default Rate:** The portfolio has an overall default rate of 19.91%, with 26,845 loans charged off out of 134,813 applications.

2. **Credit Grade Risk:** Default rates increase from 5.83% for Grade A to 50.39% for Grade G, highlighting significant differences in credit risk across loan grades.

3. **Loan Term Analysis:** 60-month loans have a default rate of 32.34%, compared with 15.95% for 36-month loans.

4. **Loan Purpose Risk:** Small Business loans have the highest default rate at 28.93%, while Debt Consolidation represents the largest application segment with 78,416 loans.

5. **Borrower Creditworthiness:** Higher FICO score groups generally have lower default rates, while borrowers with higher debt-to-income ratios show greater default risk.

6. **Portfolio Concentration:** Debt Consolidation and Credit Card loans together account for approximately 83.8% of the total loan amount, indicating significant concentration in these two purposes.

## Business Recommendations

Based on the identified patterns, the following recommendations could help improve credit-risk management:

1. **Strengthen Credit Assessment:** Apply more detailed borrower assessments for higher-risk loan grades, particularly Grades E, F and G.

2. **Monitor Longer-Term Loans:** Pay closer attention to 60-month loans due to their considerably higher observed default rate.

3. **Evaluate Borrower Affordability:** Consider FICO scores, debt-to-income ratios, income stability and existing liabilities when assessing repayment capacity.

4. **Review High-Risk Loan Purposes:** Strengthen assessment and monitoring of Small Business loans while considering their relatively low application volume.

5. **Manage Portfolio Concentration:** Regularly monitor Debt Consolidation and Credit Card segments because they represent the majority of total lending exposure.

6. **Improve Data Quality:** Ensure complete and accurate borrower information, particularly employment details, to support more reliable credit-risk assessments.

*Note: These findings represent historical patterns and associations in the analysed dataset. They do not establish causation or represent a predictive credit-scoring model.*

## Conclusion

This project demonstrates the application of SQL and Tableau in banking data analysis, including data preparation, exploratory analysis, KPI development, dashboard creation, and business interpretation.

The objective is to transform raw loan data into meaningful information that can support better understanding of credit risk and loan portfolio performance.

## Project Structure

```text
banking-credit-risk-analysis/
├── README.md
├── data/
├── sql/
├── tableau/
├── documentation/
└── .gitignore
```

## Author

Jeet D Patel

Aspiring Data Analyst

Skills: SQL | MySQL | Tableau | Data Cleaning | Data Visualization | Business Analysis
