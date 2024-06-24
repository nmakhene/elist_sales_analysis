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
