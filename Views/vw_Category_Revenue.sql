CREATE VIEW Reporting.vw_CategoryRevenue
AS
SELECT
    PC.Name AS CategoryName,
    SUM(SOD.LineTotal) AS Revenue
FROM Production.ProductCategory PC
JOIN Production.ProductSubcategory PSC
ON PC.ProductCategoryID=PSC.ProductCategoryID
JOIN Production.Product P
ON PSC.ProductSubcategoryID=P.ProductSubcategoryID
JOIN Sales.SalesOrderDetail SOD
ON P.ProductID=SOD.ProductID
GROUP BY PC.Name;