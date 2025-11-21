-- Overall churn
SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned_customers,
  SUM(CASE WHEN Churn = 0 THEN 1 ELSE 0 END) AS active_customers,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`;

-- Churn by subscription type
SELECT
  SubscriptionType,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`
GROUP BY SubscriptionType
ORDER BY churn_rate_percent DESC;

-- Churn by engagement (viewing hours)
SELECT
  CASE 
    WHEN ViewingHoursPerWeek < 5 THEN 'Low (0–5 hrs)'
    WHEN ViewingHoursPerWeek < 15 THEN 'Moderate (5–15 hrs)'
    WHEN ViewingHoursPerWeek < 30 THEN 'High (15–30 hrs)'
    ELSE 'Very High (30+ hrs)'
  END AS engagement_level,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`
GROUP BY engagement_level
ORDER BY churn_rate_percent DESC;

-- Churn by payment method
SELECT
  PaymentMethod,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

-- Churn by device registered
SELECT
  DeviceRegistered,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`
GROUP BY DeviceRegistered
ORDER BY churn_rate_percent DESC;

-- Churn by price tier (monthly charges)
SELECT
  CASE 
    WHEN MonthlyCharges < 1500 THEN 'Low (<1500)'
    WHEN MonthlyCharges < 3000 THEN 'Medium (1500–3000)'
    ELSE 'High (3000+)'
  END AS price_tier,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS churned,
  ROUND(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
    AS churn_rate_percent
FROM `subscription-478514.subscription_analysis.subscription_churn`
GROUP BY price_tier
ORDER BY churn_rate_percent DESC;
