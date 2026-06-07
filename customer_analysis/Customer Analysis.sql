--Number of orders per customer
SELECT
    CustomerID,
    COUNT(*) AS TotalOrders
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;

--Top Customers
SELECT Top 1 Percent
    CustomerID,
    SUM(TotalDue) AS TotalPurchase
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY TotalPurchase DESC;

--مشتریانی با یک سفارش
SELECT
    CustomerID
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING COUNT(*) = 1;