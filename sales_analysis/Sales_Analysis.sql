-- Annual sales
SELECT
    YEAR(OrderDate) AS SalesYear,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY SalesYear;

--Monthly sales
SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY
    YEAR(OrderDate),
    MONTH(OrderDate)
ORDER BY
    SalesYear,
    SalesMonth;

--Average order amount
SELECT
    AVG(TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader;