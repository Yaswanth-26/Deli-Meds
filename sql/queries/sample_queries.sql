-- 1. To find the Average payment paid by the customers
SELECT c.Customer_ID, AVG(p.Amount) AS AverageAmountPaid 
FROM Orders o, Customer c, Payment p 
WHERE c.Customer_ID = o.Customer_ID AND 
      o.Order_ID = p.Order_ID 
GROUP BY o.Customer_ID;

-- 2. To get Staff Names and their respective departments
SELECT Staff_Name, Staff_Department FROM Staff;

-- 3. To get The details of all the order with respect to customers first and last name
SELECT Orders.*, Customer.Customer_Firstname, Customer.Customer_Lastname 
FROM Orders 
INNER JOIN Customer ON Orders.Customer_ID = Customer.Customer_ID;

-- 4. Left outer Join of medicine and pharmacy table
SELECT Medicine.*, Pharmacy.* 
FROM Medicine 
LEFT JOIN Pharmacy ON Medicine.Pharmacy_ID = Pharmacy.Pharmacy_ID;

-- 5. To get the total duration for the customers interacted with the customer care staff
SELECT Customer_ID, SUM(Interaction_Duration) AS Total_Interaction_Duration 
FROM Interaction 
GROUP BY Customer_ID;

-- 6. To find top 10 Pharmacy's which has most orders from
SELECT
    p.Pharmacy_Name As Pharmacy,
    COUNT(c.Cart_ID) AS TotalOrders
FROM
    Cart c, Pharmacy p
WHERE
    c.Order_ID IS NOT NULL AND c.Pharmacy_ID = p.Pharmacy_ID
GROUP BY
    c.Pharmacy_ID
ORDER BY
    TotalOrders DESC
LIMIT 10;

-- 7. To find top 10 Customers's based on their average spending
SELECT c.Customer_Firstname as Customers, AVG(p.Amount) AS AverageAmountPaid
FROM Orders o
JOIN Customer c ON c.Customer_ID = o.Customer_ID
JOIN Payment p ON o.Order_ID = p.Order_ID
GROUP BY c.Customer_ID
ORDER BY AverageAmountPaid DESC
LIMIT 10;

-- 8. Conversion percentage from customers adding to the cart and then converting to orders
SELECT
    COUNT(CASE WHEN Order_ID IS NULL THEN 1 END) AS CartsWithoutOrders,
    COUNT(*) AS TotalCarts,
    (COUNT(CASE WHEN Order_ID IS NULL THEN 1 END) / COUNT(*)) * 100 AS Percentage
FROM
    Cart;

-- 9. Top 5 customer's based on the time they have interacted with a staff member
SELECT
    c.Customer_ID,
    c.Customer_Firstname,
    c.Customer_Lastname,
    SUM(i.Interaction_Duration) AS TotalInteractionDuration
FROM
    Interaction i
JOIN
    Customer c ON i.Customer_ID = c.Customer_ID
GROUP BY
    c.Customer_ID, c.Customer_Firstname, c.Customer_Lastname
ORDER BY
    TotalInteractionDuration DESC
LIMIT 5;

-- 10. Top 20 Customer's who left a review based on the number of reviews
SELECT
    c.Customer_Firstname as FirstName,
    c.Customer_Lastname as Last,
    MAX(r.Review_Number) AS TotalReviews
FROM
    Customer c
LEFT JOIN
    Review r ON c.Customer_ID = r.Customer_ID
WHERE
    r.Review_Number >= ALL (
        SELECT
            Review_Number
        FROM
            Review
        WHERE
            Customer_ID = c.Customer_ID
    )
GROUP BY
    c.Customer_ID, c.Customer_Firstname, c.Customer_Lastname
ORDER BY
    TotalReviews DESC
LIMIT 20;
