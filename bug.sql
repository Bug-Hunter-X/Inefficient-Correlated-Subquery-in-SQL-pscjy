The following SQL query attempts to use a subquery in the FROM clause, which is not supported by all SQL dialects.  Additionally, it uses a correlated subquery that might lead to performance issues.

```sql
SELECT o.order_id, (SELECT SUM(oi.quantity * oi.price) FROM order_items oi WHERE oi.order_id = o.order_id) AS total_amount
FROM orders o;
```

This query aims to calculate the total amount for each order.  The problem is that the subquery is executed for *every* row in the `orders` table, making it inefficient, especially for large datasets. 