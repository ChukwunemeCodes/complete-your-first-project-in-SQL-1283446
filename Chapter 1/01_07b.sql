-- Create new month columns
SELECT * ,
MONTH(CreationDate) as MonthNum,
MONTHNAME(CreationDate) as MonthName
FROM Orders;