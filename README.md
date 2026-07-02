# Auto-Mobile Sales Analysis — SQL Business Intelligence Report

A SQL-driven analysis of an auto-mobile sales dataset, covering geography, product performance, customer behavior, and seasonal sales trends.

**Author:** Patricia Fagbola | Data Analyst | 2026
**Tools:** MySQL (MySQL Workbench)
**Dataset:** `sales_data_sample`

---

## Business Problem

The business needed a clear, data-backed view of where its auto-mobile sales performance was strong versus at risk, across four dimensions:

- **Geography** — which markets drive revenue, and which are underperforming
- **Product mix** — which of the 7 product lines actually sell
- **Customer base** — who the highest-value and most loyal customers are
- **Seasonality** — when demand peaks, to guide inventory and marketing planning

## Headline Numbers

- **19** countries served
- **7** product lines
- **USA** — top market by revenue
- **November** — peak sales month

## Key Insights

- **Revenue is order-volume driven** — country rankings for revenue and order count are identical, meaning there's no significant difference in average order value across markets; more orders simply means more revenue
- **USA leads, Ireland lags** — USA generates the highest revenue of all 19 markets; Ireland the lowest, pointing to either limited market penetration or weak brand awareness there
- **Classic Cars and Vintage Cars dominate** — they rank #1 and #2 in both revenue and units sold, with the remaining 5 product lines trailing significantly on both metrics
- **Customer longevity tracks with value** — Euro Shopping Channel is both the highest-spending customer (259 total orders) and the longest-standing, suggesting tenure and value are linked
- **Loyalty tiering reveals a concentrated customer base** — customers were segmented into Champion (100+ orders), Loyal (40–99), Occasional (5–39), and One-time (<5) tiers to separate high-engagement customers from churn risks
- **November is a consistent seasonal peak** — revenue spikes every year in November, pointing to a year-end/holiday demand cycle

## Recommendations

1. **Protect the USA market** while investigating why Ireland underperforms  pricing, marketing reach, or brand awareness are the likely culprits
2. **Prioritize Classic and Vintage Cars** in inventory planning; evaluate whether the remaining 5 product lines justify continued stocking based on margin
3. **Launch a retention program** targeting Champion and Loyal tier customers, with a tiered loyalty rewards system to move Occasional customers up
4. **Build Q4 inventory ahead of October–November** and time marketing campaigns to the seasonal demand spike
5. **Investigate lowest-revenue months** to identify ways to smooth demand across the year

## Methodology

Analysis was performed entirely in SQL (MySQL Workbench) across four stages:

1. **Geographical analysis** — revenue and order volume by country
2. **Product analysis** — revenue and quantity sold by product line
3. **Customer analysis** — top 10 customers by spend, plus a loyalty tier classification using `CASE` logic on order frequency
4. **Period analysis** — monthly and yearly revenue trends to surface seasonality

## Repo Contents

```
Auto-Mobile-Sales-Analysis/
├── README.md
├── sql/
│   └── auto_mobile_sales_analysis.sql      # Full SQL analysis script
└── report/
    └── Auto_Mobile_Sales_Analysis_Report.docx   # Formatted business report
```

## How to View

- **SQL script:** open `sql/auto_mobile_sales_analysis.sql` in MySQL Workbench or any SQL editor
- **Report:** open `report/Auto_Mobile_Sales_Analysis_Report.docx` in Word or Google Docs
