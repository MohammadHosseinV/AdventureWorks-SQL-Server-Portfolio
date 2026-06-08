CREATE PROCEDURE Reporting.usp_ProductSalesReport
AS
BEGIN

SELECT
    P.Name,
    SUM(SOD.OrderQty) AS TotalSold
FROM Production.Product P
JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
GROUP BY P.Name

END