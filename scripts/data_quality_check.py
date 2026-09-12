from pathlib import Path
import csv
p=Path(__file__).parents[1]/'sample_ward_dengue_surveillance_chennai.csv'
req={'week','ward','zone','dengue_cases','four_week_baseline_proxy','breeding_sources_removed','screening_camps','trend_ratio','risk_tier'}
with p.open(newline='',encoding='utf-8') as f: rows=list(csv.DictReader(f))
missing=sorted(req-set(rows[0])) if rows else sorted(req)
invalid=sum(1 for r in rows if float(r['dengue_cases'])<0 or float(r['four_week_baseline_proxy'])<0 or float(r['trend_ratio'])<0)
print({'rows':len(rows),'missing_columns':missing,'invalid_rows':invalid})
