-- Monthly Revenue and Order Volume
-- Monthly Revenue and Order Volume
SELECT 
    YEAR(Date) AS order_year,
    MONTH(Date) AS order_month,
    SUM(Total_Revenue) AS monthly_revenue,
    COUNT(DISTINCT Transaction_ID) AS order_volume
FROM 
    [Online Sales Data]
GROUP BY 
    YEAR(Date), MONTH(Date)
ORDER BY 
    order_year, order_month;
