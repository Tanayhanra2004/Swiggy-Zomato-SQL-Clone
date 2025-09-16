-- Get all restaurants
SELECT * FROM restaurants;

-- Get menu of Dominos
SELECT * FROM menu_items WHERE restaurant_id = 1;

-- Place an order
INSERT INTO orders (user_id, restaurant_id, total_amount, status)
VALUES (1, 1, 598.00, 'Placed');

INSERT INTO order_items (order_id, item_id, quantity)
VALUES (1, 1, 2);

-- Show order history
SELECT o.order_id, o.order_date, o.total_amount, r.name AS restaurant
FROM orders o
JOIN restaurants r ON o.restaurant_id = r.restaurant_id
WHERE o.user_id = 1;

-- Top 3 selling items
SELECT mi.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN menu_items mi ON oi.item_id = mi.item_id
GROUP BY mi.name
ORDER BY total_sold DESC
LIMIT 3;
