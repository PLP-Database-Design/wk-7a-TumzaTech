-- Question 1
SELECT 
    OrderID, 
    CustomerName, 
    TRIM(value) AS Product
FROM 
    ProductDetail
CROSS APPLY 
    STRING_SPLIT(Products, ',');

-- Question 2
-- Orders table (OrderID → CustomerName)
SELECT DISTINCT 
    OrderID, 
    CustomerName
INTO Orders
FROM OrderDetails;

-- OrderItems table (OrderID + Product → Quantity)
SELECT 
    OrderID, 
    Product, 
    Quantity
INTO OrderItems
FROM OrderDetails;
