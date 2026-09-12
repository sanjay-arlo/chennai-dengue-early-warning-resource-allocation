# Industry BA Delivery Pack — Chennai Dengue Early Warning

## Executive decision
Prioritise vector-control, screening and field capacity using weekly case pressure relative to a rolling baseline and transparent ward risk tiers.

## Stakeholders
Public-health operations, ward field teams, surveillance analysts, programme managers and epidemiology/domain reviewers.

## Requirements
- Compare current cases with a four-week baseline.
- Rank wards by trend pressure and case burden.
- Show intervention coverage and resource gaps.
- Support response scenarios and filtered exports.
- Keep health data governance and privacy explicit.

## KPI dictionary
Case count, trend ratio, risk tier, breeding-source removal, screening coverage and resource-gap count.

## Analytical model
`dim_week` + `dim_ward` + `dim_zone` → `fact_surveillance` + `fact_field_activity` → alert KPI layer.

## Scenario model
Test case reduction, screening uplift and source-removal uplift to understand potential changes in response priority.

## Acceptance criteria
Trend ratios reproduce from source fields, risk tiers follow documented thresholds, filters update every visual, and no risk score is represented as clinical diagnosis.

## Production controls
Lab-confirmed surveillance, field-activity reconciliation, threshold governance, access control, privacy-by-design and epidemiologist sign-off.

## Portfolio note
Synthetic illustrative data only; not a clinical or official epidemiological early-warning system.
