SELECT
    CustomerID,
    SUM(TotalDue) AS Revenue,
    RANK() OVER
    (
        ORDER BY SUM(TotalDue) DESC
    ) AS CustomerRank
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;