-- Chennai Dengue: reproducible surveillance SQL
-- MySQL 8+; portfolio data is synthetic/illustrative.

-- 1) Weekly zone KPIs
WITH zone_kpi AS (
    SELECT zone,
           COUNT(*) AS observations,
           SUM(dengue_cases) AS cases,
           AVG(trend_ratio) AS avg_trend_ratio,
           AVG(breeding_sources_removed) AS avg_sources_removed,
           AVG(screening_camps) AS avg_screening_camps
    FROM sample_ward_dengue_surveillance_chennai
    GROUP BY zone
)
SELECT zone, observations, cases,
       ROUND(avg_trend_ratio,2) AS avg_trend_ratio,
       ROUND(avg_sources_removed,1) AS avg_sources_removed,
       ROUND(avg_screening_camps,1) AS avg_screening_camps
FROM zone_kpi
ORDER BY avg_trend_ratio DESC;

-- 2) Window function: weekly trend by ward
SELECT ward, zone, week, dengue_cases, four_week_baseline_proxy,
       trend_ratio, risk_tier,
       DENSE_RANK() OVER (PARTITION BY zone ORDER BY trend_ratio DESC, dengue_cases DESC) AS zone_priority_rank,
       SUM(dengue_cases) OVER (PARTITION BY ward ORDER BY week ROWS BETWEEN 3 PRECEDING AND CURRENT ROW) AS four_week_case_sum
FROM sample_ward_dengue_surveillance_chennai
ORDER BY zone, zone_priority_rank, week;

-- 3) CTE + join: intervention gaps versus zone benchmark
WITH zone_avg AS (
    SELECT zone,
           AVG(screening_camps) AS zone_avg_camps,
           AVG(breeding_sources_removed) AS zone_avg_sources
    FROM sample_ward_dengue_surveillance_chennai
    GROUP BY zone
)
SELECT w.ward, w.zone,
       ROUND(w.screening_camps,1) AS screening_camps,
       ROUND(z.zone_avg_camps,1) AS zone_avg_camps,
       ROUND(w.breeding_sources_removed,1) AS sources_removed,
       ROUND(z.zone_avg_sources,1) AS zone_avg_sources,
       ROUND(w.trend_ratio,2) AS trend_ratio,
       w.risk_tier
FROM sample_ward_dengue_surveillance_chennai w
JOIN zone_avg z ON w.zone = z.zone
WHERE w.trend_ratio > 1
  AND w.screening_camps < z.zone_avg_camps
ORDER BY w.trend_ratio DESC, w.dengue_cases DESC;

-- 4) Investigation / response queue
SELECT ward, zone, week, dengue_cases, trend_ratio, risk_tier,
       breeding_sources_removed, screening_camps
FROM sample_ward_dengue_surveillance_chennai
WHERE risk_tier IN ('High','Critical') OR trend_ratio >= 1.25
ORDER BY trend_ratio DESC, dengue_cases DESC
LIMIT 25;

-- 5) Data-quality control
SELECT COUNT(*) AS invalid_rows
FROM sample_ward_dengue_surveillance_chennai
WHERE ward IS NULL OR zone IS NULL OR week IS NULL
   OR dengue_cases IS NULL OR trend_ratio IS NULL OR risk_tier IS NULL;
