# 📊 PhonePe Transaction Analytics - Business Insights Report

## 1. Project Overview

This project analyzes PhonePe transaction data for 2024 to understand overall transaction performance, customer activity, service contribution, and operational challenges.

The analysis was performed using:

- PostgreSQL for data extraction and analysis
- SQL Window Functions for growth calculations
- Power BI for interactive dashboard development

The objective of this analysis is to identify key business trends and generate actionable insights that can support operational and strategic decision-making.

---

# 2. Executive Summary

PhonePe processed approximately **300K transactions** during 2024 with a total transaction value of **₹3.47 Billion**.

The platform maintained strong operational performance with a **96% transaction success rate**, demonstrating reliable payment processing.

The analysis identified that:

- Transaction activity remained stable throughout the year.
- Loans generated the highest transaction value among all services.
- Money Transfer contributed the highest transaction volume.
- Transaction failures resulted in approximately **₹39.32 Million potential value loss**.
- Customer engagement remained consistent with users completing an average of **2.79 transactions per user**.

---

# 3. Overall Business Performance Analysis

## Key Performance Indicators

| KPI | Value |
|---|---:|
| Total Transaction Value | ₹3.47 Billion |
| Total Transactions | 300K |
| Total Users | 108K |
| Success Rate | 96% |
| Failure Rate | 3.33% |
| Failure Cost | ₹39.32 Million |
| Transaction Value Growth MoM | 8.98% |
| Transaction Growth MoM | 0.09 |
| Transactions Per User | 2.79 |
| Value Per User | ₹32.27K |

---

## Business Interpretation

### Strong Transaction Performance

The platform processed nearly **300 thousand transactions**, indicating strong customer adoption and regular usage.

### Reliable Payment System

A **96% success rate** indicates efficient payment processing. However, the remaining failures represent an opportunity to recover lost transaction value.

### Customer Engagement

Users completed an average of **2.79 transactions**, showing consistent but moderate engagement.

Increasing transaction frequency can improve customer lifetime value.

---

# 4. Monthly Transaction Value Trend Analysis

## Dashboard Observation

The monthly transaction value remained stable throughout 2024.

Highest transaction value:

### July 2024

```
₹304.47 Million
```

---

## Month-over-Month Growth Insights

Highest positive growth:

### July 2024

```
+6.34%
```

---

## Business Interpretation

- Transaction value showed regular fluctuations rather than unpredictable changes.
- July represented the strongest performance period in terms of transaction value growth.
- The stable trend indicates predictable customer spending behavior.

Business opportunity:

> Analyze July transaction drivers and replicate successful strategies in lower-performing months.

---

# 5. Monthly Transaction Volume Analysis

## Dashboard Observation

Transaction volume remained consistent throughout the year.

Monthly transactions stayed approximately within:

```
24K - 26K transactions
```

---

## Business Interpretation

The consistent transaction pattern indicates:

- Stable customer usage
- Predictable platform demand
- Reliable operational capacity requirements

The business can use this trend for better infrastructure and resource planning.

---

# 6. Transaction Status Analysis

## Transaction Distribution

Successful Transactions:

```
96%
```

Failed Transactions:

```
3.33%
```

---

## Business Interpretation

The majority of transactions were successfully processed, indicating a reliable payment ecosystem.

However:

```
₹39.32 Million
```

was associated with failed transaction value.

Reducing failure rates can directly improve customer experience and financial performance.

---

# 7. Service-wise Transaction Value Analysis

## Highest Value Generating Services

| Service | Transaction Value |
|---|---:|
| Loans | ₹2.53 Billion |
| Insurance | ₹512.92 Million |
| Money Transfer | ₹378.19 Million |
| Recharge & Bills | ₹50.72 Million |

---

## Key Insights

### Loans as the Primary Value Driver

Loans generated the highest transaction value.

Business implication:

> Financial products contribute significantly to PhonePe's monetary transaction volume.

Recommendation:

- Increase financial product adoption
- Target users with suitable loan offerings


---

### Money Transfer as the Usage Driver

Money Transfer contributes the highest transaction volume.

Business implication:

> Daily payment activities drive customer engagement.

Recommendation:

Use frequent transaction users as opportunities for cross-selling financial services.

---

# 8. Failure Analysis

## Top Failure Reasons

| Failure Reason | Failed Transactions |
|---|---:|
| Server Error | 3.4K |
| Wrong PIN | 3.3K |
| Insufficient Amount | 3.3K |

---

## Business Interpretation

### Server Error

Server errors caused the highest number of failed transactions.

Possible causes:

- System downtime
- API issues
- Infrastructure limitations

Recommendation:

Improve system monitoring and reliability management.

---

### Wrong PIN

Wrong PIN failures created significant transaction loss.

Recommendation:

- Improve authentication recovery process
- Provide better user guidance

---

# 9. Key Business Recommendations

## 1. Improve Transaction Reliability

Actions:

- Monitor server performance continuously
- Reduce technical failures
- Implement proactive error detection

Expected impact:

Higher success rate and reduced revenue leakage.

---

## 2. Increase Customer Engagement

Actions:

- Encourage repeat transactions
- Provide personalized offers
- Improve financial product recommendations

Expected impact:

Higher transactions per user.

---

## 3. Expand High-Value Services

Actions:

- Promote Loans and Insurance products
- Identify high-value customer segments

Expected impact:

Increase overall transaction value.

---

# 10. Final Conclusion

The analysis shows that PhonePe maintained a strong digital payment ecosystem in 2024 with:

- High transaction success rate
- Stable monthly transaction activity
- Strong customer adoption
- Significant contribution from financial services

Money Transfer acts as the primary engagement channel, while Loans drive the highest transaction value.

The main improvement opportunities are:

- Reducing transaction failures
- Improving service reliability
- Increasing customer transaction frequency

The insights generated from SQL analysis and Power BI visualization provide a data-driven foundation for improving operational efficiency and business growth.
