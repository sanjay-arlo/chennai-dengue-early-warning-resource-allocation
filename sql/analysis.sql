-- Chennai Dengue: trend and priority analysis
SELECT zone,
       COUNT(*) AS observations,
       SUM(dengue_cases) AS cases,
       ROUND(AVG(trend_ratio),2) AS avg_trend_ratio,
       ROUND(AVG(breeding_sources_removed),1) AS avg_breeding_sources_removed,
       ROUND(AVG(screening_camps),1) AS avg_screening_camps
FROM sample_ward_dengue_surveillance_chennai
GROUP BY zone
ORDER BY avg_trend_ratio DESC;

SELECT ward, zone, week, dengue_cases, four_week_baseline_proxy,
       trend_ratio, risk_tier, breeding_sources_removed, screening_camps
FROM sample_ward_dengue_surveillance_chennai
ORDER BY trend_ratio DESC, dengue_cases DESC
LIMIT 20;
