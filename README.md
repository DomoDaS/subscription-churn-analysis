**📊 Subscription Churn Analysis**

SQL and Tableau analysis exploring customer behavior, subscription trends, and key factors influencing churn.

**📘 Overview**

This project analyzes churn patterns within a subscription-based service. Using SQL for data exploration and Tableau for visualization, this work identifies behavioral, demographic, and engagement-related drivers that influence whether a customer remains active or cancels their subscription.
Understanding churn is essential for any subscription-driven business model. The insights in this project highlight retention risks, customer preferences, and opportunities to improve long-term loyalty.

**📁 Dataset Description**

The dataset contains 963 customer records with the following attributes:

Subscription Type

Payment Method

Monthly Charges & Total Charges

Device Registered

Genre Preference

Viewing Hours per Week

Average Viewing Duration

Engagement Level (categorized)

Parental Controls & Accessibility Features

Subtitles Enabled

Customer ID

Churn (0 = active, 1 = churned)

**Data Cleaning Summary**

Several fields contained missing or inconsistent values. The following steps were completed:
Missing numeric values replaced using median or computed values
Missing categorical fields grouped into “Unknown” where appropriate
Payment methods and device types standardized
Boolean fields corrected and normalized
Data validated to ensure 963 complete rows
Clean dataset uploaded to BigQuery and Tableau

**🧮 SQL Analysis**

SQL was used to conduct descriptive analytics, segment churn rates, and compute summary metrics such as:

Total customers
Total churned customers
Churn rate percentage
Churn by subscription type
Churn by device
Churn by engagement tier
Churn by payment method
Churn by price tier
Churn by user rating

The full SQL script is located in:
/sql/subscription_churn_queries.sql

**📈 Visual Analysis**

The following visualizations were created in Tableau and exported as static images:

Churn Rate (KPI)
Churn by Subscription Type
Churn by Device Registered
Churn by Engagement Level
Churn by Payment Method

**🔎 Key Findings**

1. Overall Churn Rate
The overall churn rate is 17.55%, reflecting a moderate but meaningful level of customer turnover.

2. Subscription Type
Customers with unspecified subscription types show the highest churn.
Standard subscription holders have the lowest churn.

3. Device Registered
Customers with no registered device churn at the highest rate, indicating weak product activation or low engagement.
Tablet and TV users demonstrate stronger retention.

4. Engagement Level
Customers with very high engagement (30+ hours per week) churn the least.
Low and moderate engagement groups have significantly higher churn rates.

5. Payment Method
Mailed check payments correlate with the highest churn rate.
Credit card payments correlate with lower churn.

6. Price Tier
Lower-paying customers churn more frequently.
Higher-paying tiers show lower churn, possibly reflecting higher perceived value or commitment.

**📌 Insights & Interpretation**

Engagement is the strongest indicator of retention. Customers who interact heavily with the service are substantially less likely to churn.
Accounts without device registration behave similarly to unactivated or dormant users and are at high risk of churn.
Payment method behavior suggests demographic or technological differences that may influence retention.
Lower-priced customers may be more price-sensitive or less committed.
Missing or inconsistent profile information (e.g., “Unknown” categories) often corresponds with higher churn, highlighting opportunities to improve data collection or onboarding.

**🎯 Recommendations**

Strengthen onboarding for new users to encourage device registration and early activity.
Develop engagement-boosting initiatives such as personalized content recommendations.
Encourage automatic or digital payment methods to reduce churn among mailed-check users.
Reevaluate pricing strategies for lower tiers to improve value perception.
Address missing profile information to better segment customers and reduce risk in “Unknown” categories.

**📬 Contact**

For questions or collaboration opportunities related to SQL analytics, Tableau dashboards, or customer behavior modeling, feel free to connect.
📧 Email: [domodasilva@yahoo.com](mailto:domodasilva@yahoo.com) 
💼 LinkedIn: https://www.linkedin.com/in/dominique-dasilva-2a2b93384/
