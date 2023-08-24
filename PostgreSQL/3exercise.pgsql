--a) Crie uma nova tabela "products" ("ID" -> SERIAL PK; "name" -> VARCHAR(100) NOT NULL; "description" VARCHAR(255); "in_stock" -> BOOLEAN NOT NULL; "price" FLOAT)

/* CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    in_stock BOOLEAN NOT NULL DEFAULT TRUE,
    price FLOAT DEFAULT 0.00
); */

-- SELECT * FROM products;

-- SELECT * FROM products
-- WHERE LEFT(name, 1) = 'S';

/* SELECT name FROM products
WHERE LEFT(name, 1) = 'S';
 */

/* SELECT name FROM products
WHERE LOWER(LEFT(name, 1)) = 's'; */

/* SELECT *
FROM products
ORDER BY price DESC
LIMIT 1; */

-- SELECT *
-- FROM products
-- WHERE price = (SELECT MAX(price) FROM products);

-- SELECT SUM(price) FROM products;

-- SELECT ROUND(SUM(price)) FROM products;

-- SELECT * FROM products ORDER BY name;

-- SELECT in_stock, COUNT(*) AS quantidade
-- FROM products
-- WHERE in_stock = true
-- GROUP BY in_stock;

-- SELECT AVG(price) as average FROM products;

-- SELECT ROUND(AVG(price)) as average FROM products;

-- ALTER TABLE products
-- ADD COLUMN category VARCHAR(60);

-- UPDATE products
-- SET category = 'physical';

-- ALTER TABLE products
-- ALTER COLUMN category SET NOT NULL;
