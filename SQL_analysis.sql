--What is the average quarterly order count and total sales for Macbooks sold in North America?


WITH quarterly_mac_sales AS (SELECT DATE_TRUNC (orders.purchase_ts, quarter) as quarters,
    COUNT(orders.id) AS order_count,
    ROUND(SUM(orders.usd_price),2) AS total_sales,
    ROUND(AVG(orders.usd_price),2) AS AOV,
FROM core.orders
LEFT JOIN core.customers
ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
ON customers.country_code = geo_lookup.country
WHERE product_name = 'Macbook Air Laptop' AND region= 'NA'
GROUP BY 1
ORDER BY 1) 

SELECT ROUND(AVG(order_count),2) AS avg_qrt_count,
    ROUND(AVG(total_sales),2) AS total_mac_na_sales
FROM quarterly_mac_sales

---------------------------------------------------

--For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the average highest time to deliver? 

    
WITH sales_specs AS(SELECT geo_lookup.region, 
    ROUND(AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, DAY)),2) AS avg_ship_days,
CASE
    WHEN product_name= '27in"" 4k gaming monitor' 
    THEN "27in 4K gaming monitor" 
    ELSE product_name
    END AS product_name_clean,
CASE 
    WHEN purchase_platform= 'mobile app'
    THEN 'mobile purchase'
    WHEN purchase_platform = 'website' AND orders.purchase_ts BETWEEN '2022-01-01' AND '2022-12-31'
    THEN '2022_web_sale'
    ELSE 'N/A'
    END AS purchase_specs
FROM core.orders
LEFT JOIN core.customers
ON orders.customer_id = customers.id
LEFT JOIN core.order_status
ON orders.id = order_status.order_id
LEFT JOIN core.geo_lookup
ON customers.country_code = geo_lookup.country
GROUP BY geo_lookup.region, product_name_clean, purchase_specs
ORDER BY geo_lookup.region)

SELECT RANK() OVER (ORDER BY (ROUND(AVG(sales_specs.avg_ship_days),2))) AS rank,
    region,
    ROUND(AVG(sales_specs.avg_ship_days),2) AS avg_reg_ship_days  
FROM sales_specs 
WHERE purchase_specs IN ('2022_web_sale', 'mobile purchase')
GROUP BY region
ORDER BY rank

---------------------------------------------------

