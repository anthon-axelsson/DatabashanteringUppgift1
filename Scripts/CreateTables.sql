-- SQLite
CREATE TABLE suppliers(
    supplier_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    address VARCHAR(50) NOT NULL,
    contactperson VARCHAR(30) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE ingredients(
    ingredient_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    price_per_kg FLOAT NOT NULL,
    storage_units FLOAT NOT NULL DEFAULT 0.0,
    supplier_id INTEGER NOT NULL,
    CONSTRAINT fk_supplier FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE products(
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(40) NOT NULL,
    description VARCHAR(400) NULL
);

CREATE TABLE purchases(
    purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    ingredient_id INTEGER NOT NULL,
    quantity_kg FLOAT NOT NULL,
    purchase_date DATE NOT NULL,
    CONSTRAINT fk_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE recipes(
    product_id INTEGER NOT NULL,
    ingredient_id INTEGER NOT NULL,
    amount_kg FLOAT NOT NULL,
    PRIMARY KEY (product_id, ingredient_id), 
    CONSTRAINT fk_product FOREIGN KEY(product_id) REFERENCES products(product_id),
    CONSTRAINT fk_recipes_ingredient FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id)
);