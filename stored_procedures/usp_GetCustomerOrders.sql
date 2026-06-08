CREATE PROCEDURE Reporting.usp_GetCustomerOrders
    @CustomerID INT
AS
BEGIN

SELECT
    SalesOrderID,
    OrderDate,
    TotalDue
FROM Sales.SalesOrderHeader
WHERE CustomerID=@CustomerID

END