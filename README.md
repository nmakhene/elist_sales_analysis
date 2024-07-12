# Sales Analysis of EList e-Commerce Brand

## Project Background
Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, Elist sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad.

This analysis reviews sales, loyalty, refund and shipping trends from 2019-2022 at Elist in an attempt to recommend opportunities to increase sales, evaluate the effectiveness of the loyalty program, and reduce return rates. North Star metrics for this analysis are total sales, average order value (AOV) and order count. Dimensions that are explored include sales region, purchase platform, marketing channel and shipping dates.

## Executive Summary
The ERD for this dataset is as follows:
![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/339248a4-0bd2-4939-a442-775b513b5513)

2020 is the best sales year to date, which is likely due to COVID-19/pandemic sales trends across many industries. By 2022, total sales and average order value returned to their pre-COVID numbers. The product with the highest sales was the 27” 4K gaming monitor. 

## Insights Deep-Dive
### Yearly Sales Summary
![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/b1a64337-974f-4b06-8a68-5d8c2c3184b3) ![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/bc77041c-fb65-42c5-b076-c605ee620e63)
#### Key Points:
- There was a 163% increase in sales and a 31% increase in AOV from 2019 to 2020
- 2019 had the lowest numbers across all 3 sales KPI's.
- When comparing 2019 and 2022 (excluding 2020 and 2021 COVID sales), there was a 28% increase in sales and order count
- AOV in 2019 and 2022 are the same ($230)
- There’s a 46% drop in sales from 2021 to 2022, which puts total sales in 2022 closer to its 2019 pre-covid sales range of the mid-millions of dollars
- 27” 4K gaming monitors accounted for $9.85M in sales

![image](https://github.com/user-attachments/assets/ab04b795-2f04-4b8b-9c43-2e19dd941054)

### Monthly Sales Summary
#### Analysis:
Similarly to yearly insights, I created a PivotTable with number of orders, total sales, and average order value. One insight that coincides with a boost in sales due to COVID is the 50% increase in sales and 46% increase in order count for March 2020. Monthly trends emerged looking over the span of 4 years of sales numbers. Across all years, sales KPI's tend to be the highest in November and December. There is usually a decrease in numbers in January and February. October across all years sees a drop in sales and September (with the exception of 2022) always see an increase in sales. It's possible that people spend more during the holiday season, therefore spending less in January and February to balance out their spending. The beginning of the school year could explain the increase in sales in September and it's possible that October is a lower sales month due to people saving from "back to school" shopping as well as holding out for the holiday season. I recommend creating an incentive for people to either shop more in October without disincentivizing them to withhold in November (Black Friday). Potentially, we could encourage clients to shop more in October so that they'll recieve a coupon in November that would stack on Black Friday deals the company is already offering. 

#### Key Points:
- March 2020 had the highest increase in sales and order count MoM
- October 2022 had the biggest decrease in sales MoM. October 2022 also had the lowest sales KPI's from 2019-2022
- Highest sales months tend to be in November, December, and September 

![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/e43c7f36-7e0d-4dd2-ac94-885df5c18e78)

### Loyalty Program Summary
### Analysis:
In 2019, eList started a loyalty program, and I created 3 PivotTables to analyze the effectiveness of the loyalty program. The table below summarizes total sales, order count, and AOV across years and grouped by loyalty or non-loyalty program members. The conditional formatting (color coding) is grouped by the KPI's (sales, order count, AOV) to highlight the highest(green) and lowest(red) KPI's across all loyalty and non-loyalty members. 

![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/dfe44505-f2c5-4322-9312-f65395516c0e)

When reviewing sales, non-loyalty members in 2020 had the highest sales numbers. The loyalty program existed for one year at this point, so it's possible that customers were familiarizing themselves with the program. By 2021, loyalty members and non-loyalty members account for an almost even split between sales and order count, which can be seen in the table below: 

![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/a3f2c62e-edd1-4fca-89bf-f9ba311170bd)

Regarding growth rates (table below), an insight worth considering is that loyalty members in 2022 saw the smallest decrease in AOV across all years. On average, their AOV dropped just 2% in comparison to non-loyalty members whose AOV dropped 18%. In 2022, total sales dropped by 47% and 44% for non-loyalty and loyalty members respectively. It suggests that even if overall sales and order count rates decrease at similar values, loyal members tend to spend more when they order. This is an opportunity to uncover why loyal members spend more and on which products they tend to spend more. 

![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/de69c373-7de9-4a98-b0f6-e3074bc67791)

### Key Points:
- Loyalty sales surpassed non-loyalty sales in 2021, which is two years after the program began
- Although loyalty sales are presently less than non-loyalty sales, loyal members tender to order more often and spend more when they do
- Loyal members had the lowest decrease in AOV across all years and loyalty member groupings

