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
