# BA / DA Delivery Pipeline

## Business question
Which wards show rising dengue pressure without enough intervention capacity?

## 01 — Excel
Clean weekly surveillance data, compare cases with the four-week baseline proxy, review intervention coverage and classify exceptions. Excel is the first-pass control layer.

## 02 — SQL
Calculate case totals, trend ratio, intervention coverage, risk tiers and the response queue with reproducible queries.

## 03 — Power BI
Build: Early Warning → Ward Ranking → Intervention Coverage → Response Scenario. Use ward/zone drill-through and time filters.

## 04 — Decision
Prioritise field teams, screening capacity and source-reduction activity by risk and intervention gap.

## Acceptance criteria
Trend logic is transparent; filters reconcile to the source; synthetic surveillance data is clearly labelled and never presented as official epidemiological data.