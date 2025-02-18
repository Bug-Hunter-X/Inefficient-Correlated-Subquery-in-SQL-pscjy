The problem can be solved by using a JOIN instead of a subquery in the FROM clause. This approach is generally much more efficient.

```sql
SELECT o.order_id, SUM(oi.quantity * oi.price) AS total_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.order_id;
```

This revised query uses a `JOIN` to combine data from the `orders` and `order_items` tables. The `SUM()` function, along with `GROUP BY`, efficiently calculates the total amount for each order. This solution is significantly faster and more scalable than the original query.