-- Top 3 Months by Revenue
SELECT TOP 3
    YEAR(date) AS order_year,
    MONTH(date) AS order_month,
    SUM(Total_Revenue) AS monthly_revenue,
    COUNT(DISTINCT Transaction_ID) AS order_volume
FROM 
    [Online Sales Data]
GROUP BY 
    YEAR(date), MONTH(date)
ORDER BY 
    monthly_revenue DESC;
