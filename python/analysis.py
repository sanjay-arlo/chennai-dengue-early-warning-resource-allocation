"""Optional Pandas/NumPy surveillance analysis.
Run: python analysis.py --input path/to/data.csv
"""
import argparse
import numpy as np
import pandas as pd

REQUIRED = ["week", "ward", "zone", "dengue_cases", "four_week_baseline_proxy", "trend_ratio", "breeding_sources_removed", "screening_camps"]


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--input", required=True)
    args = parser.parse_args()
    df = pd.read_csv(args.input)
    missing = [c for c in REQUIRED if c not in df.columns]
    if missing:
        raise ValueError(f"Missing required columns: {missing}")

    for col in REQUIRED[3:]:
        df[col] = pd.to_numeric(df[col], errors="coerce")
    df["case_vs_baseline"] = np.where(
        df["four_week_baseline_proxy"] > 0,
        df["dengue_cases"] / df["four_week_baseline_proxy"],
        np.nan,
    )
    df["surveillance_exception"] = np.where(
        (df["trend_ratio"] >= 1.25) & (df["screening_camps"] < df["screening_camps"].median()),
        1,
        0,
    )
    summary = (
        df.groupby(["zone", "ward"], as_index=False)
        .agg(total_cases=("dengue_cases", "sum"),
             avg_trend_ratio=("trend_ratio", "mean"),
             exception_observations=("surveillance_exception", "sum"))
        .sort_values(["avg_trend_ratio", "total_cases"], ascending=False)
    )
    summary["trend_z_proxy"] = (
        (summary["avg_trend_ratio"] - summary["avg_trend_ratio"].mean())
        / summary["avg_trend_ratio"].std(ddof=0)
        if len(summary) else 0
    )
    print("Rows:", len(df))
    print(summary.head(20).to_string(index=False))


if __name__ == "__main__":
    main()
