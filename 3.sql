SELECT product_title, product_price 
FROM product 
WHERE product_price > (SELECT AVG(product_price) FROM product);

SELECT brand_title, 
(SELECT COUNT(*) FROM product WHERE product.brand_id = brand.brand_id) AS total_products
FROM brand;

SELECT customer_id, SUM(orders_price) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(orders_price) > (SELECT MIN(orders_price) FROM orders);
