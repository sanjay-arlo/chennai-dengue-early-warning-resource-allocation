# Chennai Dengue Early-Warning & Resource Allocation

> **Business Analyst / Data Analyst portfolio case study** using ward-level surveillance signals to identify rising dengue pressure and prioritise response capacity.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/chennai-dengue-early-warning-resource-allocation/)**

## Executive summary

This case transforms weekly surveillance signals into a decision-support workflow: validate the data, compare current cases with a baseline, identify rising-risk wards, assess intervention capacity, and convert exceptions into a response queue.

## Business problem

**Which wards show rising dengue pressure without enough intervention capacity, and where should response resources be concentrated first?**

## Analyst workflow

**Excel → Python / Pandas / NumPy (optional) → SQL / MySQL → Power BI → Decision**

### 1. Excel — first-pass control

Clean weekly records, reconcile case totals, calculate baseline comparisons, use pivots and formulas, inspect anomalies and create the initial ward exception view.

### 2. Python — optional analytical layer

Use **Pandas + NumPy** for exploratory trend analysis, repeatable transformations, anomaly checks and response-capacity sensitivity testing when useful.

### 3. SQL / MySQL — mandatory analytical layer

Use CTEs, aggregations, joins, window functions, segmentation and ranking to calculate cases, trend ratios, risk tiers, intervention gaps and response queues.

### 4. Power BI — mandatory executive layer

Build governed measures, slicers, drill-through and a surveillance story: **Early Warning → Ward Ranking → Intervention Coverage → Response Scenario**.

### 5. Decision — mandatory outcome

Prioritise field teams, screening camps and source-reduction activity with clear **priority, owner, action, expected impact and escalation trigger**.

## Technical stack

- **Excel** — cleaning, reconciliation, formulas, pivots, exception analysis and scenario planning
- **SQL / MySQL** — KPI calculation, segmentation, ranking and exception queues
- **Python / Pandas / NumPy** — optional EDA, transformations, trend/anomaly checks and sensitivity analysis
- **HTML / CSS / JavaScript** — interactive dashboard interface
- **Chart.js** — browser-based visualisation
- **GitHub Pages** — live dashboard hosting
- **Power BI** — compatible dashboard design direction, DAX and executive reporting specification
- **GitHub** — version control and documentation

## Dashboard story

1. **Early Warning** — weekly pressure and trend signals
2. **Ward Ranking** — highest-priority wards
3. **Intervention Coverage** — source removal and screening activity
4. **Response Scenario** — illustrative resource levers
5. **Decision Queue** — actionable exceptions
6. **Governance** — data quality and limitations

## KPI framework

- **Trend ratio** = current-week cases / four-week baseline proxy
- **Risk tier** = transparent portfolio classification based on trend pressure and case volume
- **Intervention gap** = risk pressure considered against available response activity
- **Priority** = rising cases + severity + intervention shortfall

## Business Analyst deliverables

Business case, stakeholder framing, KPI dictionary, Excel analysis, optional Python notebook, SQL analysis, Power BI/DAX specification, dashboard, prioritisation logic and production-upgrade plan.

## Data quality & governance

Required-field validation, numeric/range checks, duplicate review, trend-definition consistency and explicit synthetic-data labelling are part of the analytical controls.

## Production upgrade path

A production system would require verified case surveillance, laboratory positivity, vector-density indicators, governed ward geography, field-activity completion, privacy controls and domain-approved alert thresholds with epidemiologist sign-off.

## Important limitation

This is a **portfolio case study using synthetic / illustrative data**. It is not a clinical or official epidemiological early-warning system.

## Author

**Sanjay Arlo**  
Business Analyst / Data Analyst Portfolio  
[GitHub](https://github.com/sanjay-arlo)
