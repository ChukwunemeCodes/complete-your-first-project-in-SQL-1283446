-- Find how many products sold
SELECT
COUNT(DISTINCT ProductID) as TotaUniqueProduct,
SUM(Quantity) as TotalQuantity
FROM OrderItem