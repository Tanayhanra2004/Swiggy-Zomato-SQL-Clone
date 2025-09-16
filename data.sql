USE swiggy_clone;

INSERT INTO users (name, email, phone, address) VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Delhi'),
('Priya Singh', 'priya@gmail.com', '9123456789', 'Mumbai'),
('Amit Verma', 'amit@gmail.com', '9012345678', 'Bangalore');

INSERT INTO restaurants (name, location, rating) VALUES
('Dominos', 'Delhi', 4.3),
('Burger King', 'Mumbai', 4.1),
('Pizza Hut', 'Bangalore', 4.2);

INSERT INTO menu_items (restaurant_id, name, price, category) VALUES
(1, 'Cheese Pizza', 299.00, 'Pizza'),
(1, 'Veg Burger', 149.00, 'Burger'),
(2, 'Chicken Burger', 199.00, 'Burger'),
(3, 'Pasta Alfredo', 249.00, 'Pasta');
