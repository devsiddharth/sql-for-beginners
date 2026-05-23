-- Write a SQL query below --
SELECT o.id AS order_id, c.email AS email, ROUND(o.total_amount, 2) AS total_amount, p.payment_method AS payment_method

FROM orders o
INNER JOIN customers c ON c.id = o.customer_id
INNER JOIN payments p ON p.order_id = o.id
WHERE o.ordered_at >= '2023-10-01' AND o.ordered_at <= '2023-10-31'
ORDER BY o.id ASC;