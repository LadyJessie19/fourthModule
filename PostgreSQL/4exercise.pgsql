
-- CREATE TABLE evaluation(
--     id SERIAL PRIMARY KEY,
--     description TEXT,
--     rating INTEGER NOT NULL CHECK(rating >= 0 AND rating <= 5),
--     product_id INT REFERENCES products(id) ON DELETE CASCADE
-- )

-- SELECT * FROM evaluation;

/* -- Inserir avaliação com descrição
INSERT INTO evaluation (description, rating, product_id) VALUES ('Avaliação positiva', 4, 1);

-- Inserir avaliação sem descrição
INSERT INTO evaluation (rating, product_id) VALUES (3, 2);

-- Inserir avaliação com descrição
INSERT INTO evaluation (description, rating, product_id) VALUES ('Avaliação neutra', 2, 1); */

-- INSERT INTO evaluation (description, rating, product_id) VALUES ('gostei muito do produto', 4, 1), ('como vivi sem isso!', 4, 1), ('produto velho e feio', 1, 2), ('apesar de estar com marcas de uso, muito bom', 3, 3)

-- INSERT INTO evaluation (rating, product_id) VALUES (5, 11);

-- DELETE FROM evaluation
-- WHERE id = 6;

/* SELECT products.*, evaluation.*
FROM products
LEFT JOIN evaluation ON product_id = evaluation.product_id; */

-- SELECT products.*, evaluation.rating
-- FROM products
-- LEFT JOIN evaluation ON products.id = evaluation.product_id
-- ORDER BY id;

SELECT * FROM evaluation;

INSERT INTO evaluation (description, rating, product_id) VALUES ('Uma droga', 1, 15);

/* SELECT products.*, evaluation.*
FROM products
LEFT JOIN evaluation ON products.id = evaluation.product_id;
 */

-- SELECT products.*, evaluation.rating
-- FROM products
-- LEFT JOIN evaluation ON products.id = evaluation.product_id
-- WHERE evaluation.rating >= 4;
-- ORDER BY name DESC;

-- SELECT products.*, evaluation.rating
-- FROM products
-- LEFT JOIN evaluation ON products.id = evaluation.product_id
-- WHERE evaluation.rating IS NULL;

-- SELECT COUNT(*) AS products
-- FROM products;

-- DELETE FROM products
-- WHERE id = 14
-- RETURNING *;

-- SELECT COUNT(*) AS evaluations
-- FROM evaluation;

-- CREATE TABLE store(
--     id SERIAL PRIMARY KEY, 
--     name VARCHAR(64) NOT NULL, 
--     city VARCHAR(64)
-- );

-- SELECT * FROM store;

-- ALTER TABLE products
-- ADD COLUMN store_id INT REFERENCES store(id);

-- ALTER TABLE products
-- DROP COLUMN store_id;

-- SELECT * FROM products
-- ORDER BY id;

-- INSERT INTO store (name, city)
-- VALUES ('Store A', 'City 1'),
--        ('Store B', 'City 2'),
--        ('Store C', 'City 3');

-- SELECT * FROM store;

-- DROP TABLE store;

-- UPDATE products
-- SET store_id = 2
-- WHERE id = 8;

-- UPDATE products
-- SET store_id = 2
-- WHERE id IN (3, 4, 5, 6);

-- UPDATE products
-- SET store_id = 3
-- WHERE id IN (7, 1, 2, 9);

-- SELECT * FROM products
-- ORDER BY id;

-- SELECT * FROM products
-- WHERE store_id = 3;

-- SELECT DISTINCT s.*
-- FROM store s
-- INNER JOIN products p ON s.id = p.store_id
-- WHERE p.store_id = true;

-- SELECT DISTINCT s.*
-- FROM store s
-- INNER JOIN products p ON s.ID = p.store_id
-- WHERE EXISTS (
--     SELECT 1
--     FROM products p2
--     WHERE p2.store_id = s.ID AND p2.in_stock = true
-- );