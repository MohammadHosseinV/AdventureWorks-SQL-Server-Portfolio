CREATE VIEW Reporting.vw_TopProducts
AS
SELECT
    P.ProductID,
    P.Name,
    SUM(SOD.OrderQty) AS TotalSold
FROM Production.Product P
JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
GROUP BY
    P.ProductID,
    P.Name
ORDER BY TotalSold DESC;