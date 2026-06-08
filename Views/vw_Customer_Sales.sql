CREATE VIEW Reporting.vw_CustomerSales
AS
SELECT
    CustomerID,
    SUM(TotalDue) AS Revenue
FROM Sales.SalesOrderHeader
GROUP BY CustomerID;