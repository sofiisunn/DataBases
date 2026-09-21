SELECT COUNT(*) AS total_customers
FROM customer;

SELECT 
AVG(orders_price) AS average_order_price, 
MAX(orders_price) AS max_order_price,
MIN(orders_price) AS min_order_price
FROM orders;

SELECT category_id, COUNT(*) AS total_products
FROM product_category
GROUP BY category_id;

SELECT customer_id, SUM(orders_price) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(orders_price) > 500;
