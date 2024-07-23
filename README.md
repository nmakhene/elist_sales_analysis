# Analysis of EList

## Project Background
Founded in 2018, Elist is an e-commerce company that sells popular electronics products and has since expanded to a global customer base. Like most e-commerce companies, Elist sells products through their online site as well as through their mobile app. They use a variety of marketing channels to reach customers, including Email campaigns, SEO, and affiliate links. Over the last few years, their more popular products have been products from Apple, Samsung, and ThinkPad.

This analysis reviews sales, loyalty, refund and shipping trends from 2019-2022 at Elist in an attempt to recommend opportunities to increase sales, evaluate the effectiveness of the loyalty program, and reduce return rates. North Star metrics for this analysis are total sales, average order value (AOV) and order count. Dimensions that are explored include sales region, purchase platform, marketing channel and shipping dates.

## Executive Summary
2020 is the best sales year to date, which is likely due to COVID-19/pandemic sales trends across many industries. By 2022, total sales and average order value returned to their pre-COVID numbers. The product with the highest sales was the 27” 4K gaming monitor. Across all years, sales KPI's tend to be the highest in September, November, and December. March 2020 had the highest increase in sales MoM; the highest sales month was December 2020 and the lowest sales month was October 2022. Regarding the loyalty program, by 2021 loyalty members and non-loyalty members account for an almost even split between sales and order count. Although loyalty sales are presently less than non-loyalty sales, loyal customers order more often and spend more when they order.

The ERD for this dataset is as follows:
![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/339248a4-0bd2-4939-a442-775b513b5513)

## Dashboard
This Elist Tableau dashboard gives a high-level overview of key metrics such as total sales, AOV, order count, and number of loyalty members. The dashboard has four filters--purchase year, region, loyalty status, and purchase platform--to interact with to see more specific information about the Elist dataset. To use the interactive dashboard, click [here](https://public.tableau.com/app/profile/naledi.makhene/viz/ElistDashboard_17216845371670/Dashboard1?publish=yes).

<img width="1079" alt="Screen Shot 2024-07-23 at 12 08 24 PM" src="https://github.com/user-attachments/assets/d8634fda-a251-49df-96d2-ddb271185566">

## Insights Deep-Dive
### Yearly Summary
![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/b1a64337-974f-4b06-8a68-5d8c2c3184b3) ![image](https://github.com/nmakhene/elist_sales_analysis/assets/124527594/bc77041c-fb65-42c5-b076-c605ee620e63)
#### Key Points:
- There was a 163% increase in sales and a 31% increase in AOV from 2019 to 2020
- 2019 had the lowest numbers across all 3 sales KPI's.
- When comparing 2019 and 2022 (excluding 2020 and 2021 COVID sales), there was a 28% increase in sales and order count
- AOV in 2019 and 2022 are the same ($230)
- There’s a 46% drop in sales from 2021 to 2022, which puts total sales in 2022 closer to its 2019 pre-covid sales range of the mid-millions of dollars
- 27” 4K gaming monitors accounted for $9.85M in sales

### Monthly Summary
#### Key Points:
- One insight that coincides with a boost in sales due to COVID is the 50% increase in sales and 46% increase in order count during March 2020 which translates to $241,033 increase in sales and a 760 increase in order count
- The month with the highest sales and order count was December 2020 with sales at $1,251,721 and order count at 4,019
- October 2022 had the lowest sales and order count which were $178,275 and 825 respectively
- Highest sales months tend to be in November, December, and September averaging at $659,524 in sales for these months, which is $73,841 higher than the total monthly average across the data

### Loyalty Program Summary
#### Key Points:
- Loyalty sales surpassed non-loyalty sales in 2021, which is two years after the program began
- Loyalty customers in 2022 saw the smallest decrease in AOV across all years. On average, their AOV dropped just 2% in comparison to non-loyalty customers whose AOV dropped 18%
- In 2022, total sales dropped by 47% and 44% for non-loyalty and loyalty members respectively. It suggests that even if overall sales and order count rates decrease at similar values, loyal members tend to spend more when they order
- Loyal members had the lowest decrease in AOV across all years even when accounting for decrease in overall sales with the AOV remaining at $230

### Recommendations
- Although total sales has returned closer to its pre-COVID numbers, order count has a 28% increase when comparing 2019 and 2022 while AOV remained the same. This is an opportunity to focus on increasing AOV so that total sales increase while potentially cutting cost on acquiring new customers that would have led to the same increase in sales
-	The loyalty program is effective when looking at AOV and order count. Creating an incentive for non-loyal members to become loyal members is a strategy that could lead to higher AOV and sales
-	Promoting a Valentine's or Halloween sale could lead to an increase in lower sales months like February and October. Additionally, holiday themed accessories that accompany the electronics could promote more sales  
-	Further exploration can be done into why loyal customers spend more and on which products to inform the customer journey strategy

