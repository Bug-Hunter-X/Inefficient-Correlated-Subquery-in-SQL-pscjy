# Inefficient Correlated Subquery in SQL

This repository demonstrates an example of an inefficient SQL query using a correlated subquery in the FROM clause. The query calculates the total amount for each order but does so in an inefficient manner. The provided solution shows how to optimize the query for better performance.

## Bug
The original SQL query uses a correlated subquery within the FROM clause to calculate the total amount for each order. This approach is inefficient as the subquery is executed repeatedly for every row in the outer query.

## Solution
The solution uses a JOIN operation to achieve the same result much more efficiently. This significantly reduces the database load, making the query faster and more scalable.