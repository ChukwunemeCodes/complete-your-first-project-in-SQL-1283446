-- Calculate repeat customer rate
WITH Repeat_Customers AS
(
SELECT
CustomerID as Repeat_Cust
FROM Orders
GROUP BY CustomerID
HAVING COUNT(OrderID) > 1
)
SELECT
(COUNT(DISTINCT Repeat_Cust)/
COUNT(DISTINCT CustomerID))*100
as CustomerRepeatRate
FROM Orders
LEFT OUTER JOIN Repeat_Customers
ON Orders.CustomerID = Repeat_Customers.Repeat_Cust