SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(TotalDue) AS Revenue,
    SUM(SUM(TotalDue))
    OVER(
        ORDER BY
            YEAR(OrderDate),
            MONTH(OrderDate)
    ) AS RunningRevenue
FROM Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate);