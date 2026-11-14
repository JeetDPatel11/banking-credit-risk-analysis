# Business Insights & Recommendations
## Banking Credit Risk Analysis

## 1. Business Insights

The analysis of 134,813 loan records reveals several important patterns in loan repayment performance, credit risk, borrower characteristics and portfolio exposure.

### 1.1 Overall Loan Portfolio Performance

- The dataset contains **134,813 resolved loan applications**.
- **107,968 loans (80.09%)** were Fully Paid.
- **26,845 loans (19.91%)** were Charged Off.
- The total loan amount is approximately **$1.945 billion**.
- The average loan amount is **$14,424.90**.
- The average interest rate is **13.25%**.

**Insight:** Approximately one in five loans in the analysed portfolio was charged off. This highlights the importance of effective credit-risk assessment and continuous portfolio monitoring.

### 1.2 Credit Risk Across Loan Grades

| Loan Grade | Applications | Default Rate | Average Interest Rate |
|---|---:|---:|---:|
| A | 23,395 | 5.83% | 7.11% |
| B | 39,286 | 13.28% | 10.68% |
| C | 38,295 | 22.48% | 14.01% |
| D | 20,412 | 30.20% | 17.73% |
| E | 9,263 | 38.29% | 21.15% |
| F | 3,257 | 45.59% | 24.98% |
| G | 905 | 50.39% | 27.76% |

**Insight:** Default rates increase progressively from Grade A to Grade G. Grade G records the highest default rate at 50.39%, while Grade A has the lowest at 5.83%. Average interest rates also increase across these grades.

This indicates a clear relationship between loan grade, interest-rate levels and observed credit risk.

### 1.3 Loan Purpose and Default Risk

- Small Business loans have the highest default rate at **28.93%**.
- Moving loans have a default rate of **23.40%**.
- Debt Consolidation loans have a default rate of **21.19%**.
- Wedding loans have the lowest default rate at **11.38%**.
- Debt Consolidation accounts for **78,416 applications**, approximately 58.17% of the portfolio.

**Insight:** Small Business loans show the highest default rate among loan purposes, although their application volume is relatively small. Debt Consolidation represents the largest application segment and therefore deserves particular attention when monitoring portfolio risk.

### 1.4 Loan Term Analysis

| Loan Term | Applications | Portfolio Share | Default Rate |
|---|---:|---:|---:|
| 36 Months | 102,240 | 75.84% | 15.95% |
| 60 Months | 32,573 | 24.16% | 32.34% |

**Insight:** The default rate for 60-month loans is approximately twice that of 36-month loans. Although 36-month loans represent the majority of applications, the longer-term segment has a considerably higher observed default rate.

### 1.5 Home Ownership and Default Risk

- Renters have a default rate of **23.28%**.
- Borrowers with owned homes have a default rate of **20.18%**.
- Borrowers with mortgages have a default rate of **17.14%**.

**Insight:** Renters show a higher observed default rate than borrowers with mortgages or owned homes. Home ownership may provide useful context for borrower segmentation, but it should not be used as a standalone measure of creditworthiness.

### 1.6 Employment Length and Repayment Performance

- Borrowers with 10+ years of employment have a default rate of **18.73%**.
- Borrowers with less than one year of employment have a default rate of **20.73%**.
- Records with missing employment-length information have a default rate of **26.86%**.

**Insight:** Longer employment history is associated with a somewhat lower default rate in this dataset. Records with missing employment information show a higher default rate, highlighting the importance of data completeness during borrower assessment.

### 1.7 FICO Score and Credit Risk

| FICO Score Group | Applications | Default Rate |
|---|---:|---:|
| 660–699 | 82,238 | 23.55% |
| 700–739 | 38,001 | 15.89% |
| 740–779 | 10,778 | 10.83% |
| 780 and Above | 3,796 | 7.24% |

**Insight:** Default rates decrease as FICO score groups increase. Borrowers in the 660–699 group have the highest default rate, while borrowers with scores of 780 and above have the lowest.

This demonstrates the importance of credit-score analysis when evaluating borrower risk.

### 1.8 Debt-to-Income Ratio (DTI) and Default Risk

| DTI Group | Applications | Default Rate |
|---|---:|---:|
| Below 10% | 24,623 | 14.75% |
| 10%–19.99% | 56,183 | 17.86% |
| 20%–29.99% | 41,077 | 22.89% |
| 30%–39.99% | 12,254 | 29.13% |
| 40% and Above | 676 | 30.18% |

**Insight:** Default rates generally increase with higher DTI levels. Borrowers with DTI below 10% have a default rate of 14.75%, compared with 30.18% for the 40% and above group.

This suggests that a borrower's existing debt burden is an important factor to consider during credit-risk evaluation.

### 1.9 Interest Rate and Default Risk

- Loans with interest rates below 10% have a default rate of **8.01%**.
- Loans in the 15%–19.99% group have a default rate of **29.46%**.
- Loans with interest rates of 25% and above have a default rate of **46.51%**.

**Insight:** Higher interest-rate groups show higher observed default rates. This pattern may reflect the relationship between loan pricing and underlying borrower risk. It does not establish that higher interest rates directly cause defaults.

### 1.10 Verification Status and Default Risk

- Not Verified loans have a default rate of **14.79%**.
- Source Verified loans have a default rate of **20.98%**.
- Verified loans have a default rate of **23.52%**.

**Insight:** The Not Verified category has the lowest observed default rate. Verification status alone cannot explain repayment outcomes, as differences in borrower profiles and other risk factors may influence these results.

### 1.11 Loan Portfolio Exposure by Purpose

- Debt Consolidation accounts for approximately **$1.196 billion** in loan value.
- Credit Card accounts for approximately **$432.70 million**.
- Together, these two purposes account for approximately **83.8% of total loan value**.

**Insight:** A substantial portion of the portfolio's financial exposure is concentrated in Debt Consolidation and Credit Card loans. Monitoring these segments is important because changes in their repayment performance could have a significant impact on the overall portfolio.

---

## 2. Business Recommendations

Based on the observed patterns, the following actions could help improve credit-risk assessment and portfolio monitoring.

### 2.1 Strengthen Credit Assessment for Higher-Risk Loan Grades

Loan grades E, F and G show substantially higher default rates than Grades A and B.

**Recommendation:**
- Apply more detailed repayment-capacity assessments to higher-risk applicants.
- Review income stability, existing liabilities and credit history.
- Monitor the performance of higher-risk grade segments regularly.
- Evaluate lending exposure across grades to manage concentration risk.

### 2.2 Apply Greater Attention to Longer-Term Loans

The 60-month loan segment has a default rate of 32.34%, compared with 15.95% for 36-month loans.

**Recommendation:**
- Evaluate repayment affordability over the full loan tenure.
- Monitor longer-term loans more closely throughout their repayment period.
- Review borrower income stability and existing financial obligations before approval.
- Compare the risk and return of different loan terms.

### 2.3 Improve Assessment of Borrowers with Higher DTI

Default rates generally increase as DTI rises.

**Recommendation:**
- Evaluate existing debt obligations before approving additional credit.
- Assess disposable income and repayment capacity.
- Apply additional affordability checks to applicants with higher DTI.
- Monitor borrowers with elevated debt-to-income ratios.

### 2.4 Use FICO Scores in Credit-Risk Segmentation

Lower FICO score groups show higher observed default rates.

**Recommendation:**
- Include credit-score analysis as an important part of borrower evaluation.
- Review applicants with lower credit scores more carefully.
- Combine credit scores with income, DTI and repayment history rather than relying on one metric.
- Monitor default trends across credit-score groups.

### 2.5 Strengthen Assessment of Small Business Loans

Small Business loans have the highest observed default rate among loan purposes at 28.93%.

**Recommendation:**
- Review business income and cash-flow stability.
- Evaluate existing business and personal liabilities.
- Assess the borrower's repayment capacity.
- Monitor the performance of this segment while considering its relatively small application volume.

### 2.6 Monitor Major Loan Purpose Concentrations

Debt Consolidation and Credit Card loans represent approximately 83.8% of total loan value.

**Recommendation:**
- Monitor repayment performance in these two major lending segments.
- Review loan exposure by purpose.
- Track changes in default rates and outstanding risk concentrations.
- Evaluate portfolio diversification opportunities.

### 2.7 Improve Borrower Information Collection

Records with missing employment-length information have a higher observed default rate.

**Recommendation:**
- Improve the completeness of borrower employment information.
- Introduce data-validation checks during application processing.
- Review incomplete applications before making credit decisions.
- Track missing information as a data-quality indicator.

### 2.8 Monitor Interest Rates Alongside Credit Risk

Higher interest-rate groups show higher observed default rates.

**Recommendation:**
- Evaluate interest rates alongside borrower credit profiles and repayment capacity.
- Review whether loan pricing appropriately reflects assessed risk.
- Monitor repayment outcomes across interest-rate categories.
- Avoid treating interest rate as an independent cause of default.

### 2.9 Establish Regular Portfolio Monitoring

The overall default rate is 19.91%, making continuous monitoring important.

**Recommendation:**
- Track default rates across loan grades, purposes, terms and borrower segments.
- Monitor changes in charged-off loan volumes.
- Establish regular portfolio performance reviews.
- Use dashboard KPIs to identify segments requiring further investigation.

---

## 3. Conclusion

The analysis highlights that credit grade, loan term, FICO score, debt-to-income ratio and interest-rate category are important dimensions for understanding observed loan default patterns.

The portfolio also shows significant exposure to Debt Consolidation and Credit Card loans, while Small Business and longer-term loans display comparatively higher default rates.

By strengthening borrower assessment, improving data quality, monitoring high-risk segments and regularly reviewing portfolio exposure, financial institutions can make more informed lending and credit-risk management decisions.

**Note:** These findings describe historical patterns in the analysed dataset of resolved loans. They represent associations rather than proof of causation and should not be interpreted as a predictive credit-scoring model or as evidence of current portfolio performance.
