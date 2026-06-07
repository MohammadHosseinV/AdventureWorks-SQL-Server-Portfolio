--Best-selling products
SELECT TOP 10 
    P.Name,
    SUM(SOD.OrderQty) AS TotalSold
FROM Production.Product P
JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
GROUP BY P.Name
ORDER BY TotalSold DESC;

--Revenue per product
SELECT
    P.Name,
    SUM(SOD.LineTotal) AS Revenue
FROM Production.Product P
JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
GROUP BY P.Name;

--Unsold products
SELECT
    P.ProductID,
    P.Name
FROM Production.Product P
LEFT JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
WHERE SOD.ProductID IS NULL;