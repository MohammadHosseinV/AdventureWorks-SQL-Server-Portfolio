WITH MonthlySales AS
(
    SELECT
        YEAR(OrderDate) AS SalesYear,
        MONTH(OrderDate) AS SalesMonth,
        SUM(TotalDue) AS Revenue
    FROM Sales.SalesOrderHeader
    GROUP BY
        YEAR(OrderDate),
        MONTH(OrderDate)
)
SELECT
    *,
    LAG(Revenue) OVER
    (
        ORDER BY SalesYear,SalesMonth
    ) AS PreviousMonthRevenue,
	(
	Revenue - 
	LAG(Revenue) OVER
    (
        ORDER BY SalesYear,SalesMonth
    ) 
	)AS ProfitGrowth
FROM MonthlySales;