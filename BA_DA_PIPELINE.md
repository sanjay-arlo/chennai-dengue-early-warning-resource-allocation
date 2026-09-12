# BA / DA Delivery Pipeline

## Business question
Which wards show rising dengue pressure without enough intervention capacity?

## 01 — Excel — mandatory first pass
Clean weekly surveillance records, reconcile cases to the four-week baseline proxy, inspect missing/outlier values, use formulas and pivots, and classify intervention gaps.

## 02 — Python (Pandas + NumPy) — optional
Use Python for EDA, rolling-trend checks, anomaly detection, distribution analysis or automated profiling when it improves repeatability. Do not force Python when Excel/SQL are sufficient.

## 03 — SQL — mandatory analytical layer
Use joins, CTEs, aggregations and window functions to calculate case trends, risk tiers, intervention coverage, ward rankings and response queues.

## 04 — Power BI — mandatory decision interface
Build DAX measures, slicers and drill-through with the story: Early Warning → Ward Ranking → Intervention Coverage → Response Scenario.

## 05 — Decision — mandatory outcome
Prioritise field teams, screening capacity and source reduction using risk, intervention gap, owner, expected impact and escalation trigger.

## Acceptance criteria
Trend logic is auditable; Excel/SQL/Power BI totals reconcile; synthetic surveillance data is clearly labelled and never presented as official epidemiological data.
