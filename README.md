# Chennai Dengue Early-Warning & Resource Allocation

> Business Analyst portfolio case study using ward-level surveillance signals to prioritise dengue-response resources.

## 🚀 Live Dashboard

**[Open the interactive dashboard](https://sanjay-arlo.github.io/chennai-dengue-early-warning-resource-allocation/)**

## Business question

**Which wards show the strongest early-warning signals, and where should vector-control, screening and field resources be concentrated first?**

## Dashboard

The dashboard compares weekly cases with a four-week baseline, assigns risk tiers, highlights breeding-source removal and screening coverage, and produces a ward priority view.

## Decision flow

Surveillance signals → data checks → trend ratio → risk tier → resource gap → intervention recommendation

## Dataset

Synthetic/illustrative portfolio records are used for demonstration. They are not official Chennai Public Health Department epidemiological data.

## KPI logic

**Trend ratio** = current-week cases / four-week rolling average.

**Risk tier** is assigned from trend pressure and absolute case count using transparent portfolio thresholds.

## Production upgrade

A production system would require verified case surveillance, laboratory positivity, vector-density surveys, ward geography, field-activity completion and governed alert thresholds, with privacy controls and epidemiologist sign-off.

## Limitation

This is a **portfolio case study**, not a clinical or epidemiological early-warning system.

## Author

**Sanjay Arlo** — Business Analyst / Data Analyst Portfolio
