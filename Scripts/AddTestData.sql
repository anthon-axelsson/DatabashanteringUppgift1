INSERT INTO suppliers (name, address, contactperson, phone, email) VALUES 
('Svenska Mjölprodukter AB', 'Mjölgatan 1, Stockholm', 'Anna Andersson', '08-123456', 'kontakt@svenskamjol.se'),
('Bagerigrossisten Väst AB', 'Hamngatan 45, Göteborg', 'Johan Berg', '031-987654', 'order@bagarvast.se');

INSERT INTO ingredients (name, price_per_kg, storage_units, supplier_id) VALUES 
('Vetemjöl', 12.50, 150.0, 1),
('Strösocker', 15.00, 80.0, 1),
('Smör', 65.00, 25.5, 2),
('Färskjäst', 30.00, 10.0, 2);

INSERT INTO products (name, description) VALUES 
('Kanelbulle', 'Klassisk svensk kanelbulle med pärlsocker'),
('Fransk Baguette', 'Krispigt ljust vetebröd');

INSERT INTO recipes (product_id, ingredient_id, amount_kg) VALUES 
(1, 1, 0.500), 
(1, 2, 0.150), 
(1, 3, 0.200), 
(1, 4, 0.050); 
INSERT INTO recipes (product_id, ingredient_id, amount_kg) VALUES 
(2, 1, 0.600), 
(2, 4, 0.020);

INSERT INTO purchases (ingredient_id, quantity_kg, purchase_date) VALUES 
(1, 200.0, '2026-05-01'),
(3, 50.0, '2026-05-05');