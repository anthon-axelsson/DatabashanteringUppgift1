-- 1. Lista alla råvaror och vilka leverantörer de kommer ifrån
SELECT 
    i.ingredient_id,
    i.name AS ingredient,
    i.price_per_kg,
    i.storage_units,
    s.name AS supplier,
    s.contactperson,
    s.phone
FROM ingredients i
JOIN suppliers s ON i.supplier_id = s.supplier_id;

SELECT 
    p.name AS product,
    i.name AS ingredient,
    r.amount_kg,
    s.name AS supplier
FROM products p
JOIN recipes r ON p.product_id = r.product_id
JOIN ingredients i ON r.ingredient_id = i.ingredient_id
JOIN suppliers s ON i.supplier_id = s.supplier_id;

SELECT 
    name, 
    storage_units 
FROM ingredients 
WHERE storage_units < 20.0;