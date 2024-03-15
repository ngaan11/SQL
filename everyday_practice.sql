--EX1
SELECT tweet_id
FROM Tweets
WHERE char_length(content) > 15;

--Basic joins 1378
SELECT Employees.name, EmployeeUNI.unique_id
FROM Employees
LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id;
