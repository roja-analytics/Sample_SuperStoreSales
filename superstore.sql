CREATE DATABASE SuperstoreDB;
GO

USE SuperstoreDB;
GO


SELECT COUNT(*) AS TotalRecords
FROM dbo.SampleSuperstore;

SELECT
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore;

SELECT
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore;

SELECT
COUNT(DISTINCT [Order_ID]) AS TotalOrders
FROM dbo.SampleSuperstore;

SELECT COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM dbo.SampleSuperstore;

SELECT
Region,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY Region
ORDER BY TotalSales DESC;

SELECT
Region,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Region
ORDER BY TotalProfit DESC;

SELECT
Category,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY Category
ORDER BY TotalSales DESC;

SELECT
Category,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Category
ORDER BY TotalProfit DESC;

SELECT
Segment,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY Segment
ORDER BY TotalSales DESC;

SELECT TOP 10
State,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY State
ORDER BY TotalSales DESC;

SELECT TOP 10
Customer_ID,
Customer_Name,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY Customer_ID, Customer_Name
ORDER BY TotalSales DESC;

SELECT TOP 10
Product_Name,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Product_Name
ORDER BY TotalProfit ASC;

SELECT
Sub_Category,
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Sub_Category
ORDER BY TotalSales DESC;

SELECT
Category,
AVG(Discount) AS AvgDiscount
FROM dbo.SampleSuperstore
GROUP BY Category;


SELECT TOP 10
Product_Name,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY Product_Name
ORDER BY TotalSales DESC;

SELECT TOP 10
Product_Name,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Product_Name
ORDER BY TotalProfit DESC;

SELECT
YEAR(Order_Date) AS SalesYear,
MONTH(Order_Date) AS SalesMonth,
SUM(Sales) AS TotalSales
FROM dbo.SampleSuperstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY SalesYear, SalesMonth;


SELECT
YEAR(Order_Date) AS SalesYear,
MONTH(Order_Date) AS SalesMonth,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY SalesYear, SalesMonth;

SELECT
Ship_Mode,
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Ship_Mode
ORDER BY TotalSales DESC;

SELECT TOP 5
City,
SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY City
ORDER BY TotalProfit DESC;

SELECT
Category,
SUM(Sales) AS TotalSales,
SUM(Profit) AS TotalProfit,
ROUND((SUM(Profit)/SUM(Sales))*100,2) AS ProfitMargin
FROM dbo.SampleSuperstore
GROUP BY Category
ORDER BY ProfitMargin DESC;

SELECT
Product_Name,
SUM(Sales) AS TotalSales,
RANK() OVER(ORDER BY SUM(Sales) DESC) AS SalesRank
FROM dbo.SampleSuperstore
GROUP BY Product_Name;

SELECT
    Region,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Region
ORDER BY TotalProfit ASC;

SELECT
    Region,
    State,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Region, State
ORDER BY TotalProfit ASC;

SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;

SELECT
    Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Category
ORDER BY TotalProfit DESC;

SELECT
    Sub_Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit
FROM dbo.SampleSuperstore
GROUP BY Sub_Category
ORDER BY TotalProfit DESC;

