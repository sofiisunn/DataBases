SELECT brand_title, product_title, product_price
FROM product 
INNER JOIN brand ON product.brand_id = brand.brand_id;

SELECT product_title, product_price, quantity
FROM product
LEFT JOIN order_item ON order_item.product_id = product.product_id;

SELECT product_title, category_id
FROM product
FULL JOIN product_category ON product.product_id = product_category.product_id;
