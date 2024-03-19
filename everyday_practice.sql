--EX1
SELECT tweet_id
FROM Tweets
WHERE char_length(content) > 15;

--Basic joins 1378
SELECT Employees.name, EmployeeUNI.unique_id
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id;

--Basic joins 1068
SELECT product_name, year, price
FROM Sales
LEFT JOIN Product ON Sales.product_id=Product.product_id; 

--Basic joins 1581
SELECT 
    a.customer_id, 
    COUNT(a.visit_id) as count_no_trans
FROM 
    Visits AS a
LEFT JOIN 
    Transactions AS b
ON 
    a.visit_id=b.visit_id
WHERE 
    amount IS NULL
GROUP BY 
    a.customer_id;
#570
# Write your MySQL query statement below
WITH t AS (SELECT managerId
FROM Employee
GROUP BY managerId
HAVING COUNT(managerId) >=5)
SELECT manager.name AS name
FROM Employee manager
JOIN t on manager.id=t.managerId

