-- Find top product size sold
SELECT Size,
Sum(Quantity) as TotalQuantity
FROM OrderItem 
LEFT OUTER JOIN Product
ON OrderItem.ProductID = Product.ProductID
GROUP BY Size
ORDER BY TotalQuantity DESC 