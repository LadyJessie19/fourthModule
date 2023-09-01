/* 
a) Remova a coluna "store_id" da tabela de produtos.
b) Crie uma nova tabela "product_store" para ser a tabela pivô da relação N:N product - store.
c) Adicione valores a essa tabela.
d) Listar o nome e a cidade de todas as lojas que têm pelo menos um produto em estoque.
e) Listar o nome e a cidade de todas as lojas que possuem produtos com avaliação média maior ou igual a 4.
f) Listar o nome e cidade de todas lojas que possuem produtos com preço superior a 50.
g) Obtenha o nome das lojas e o número total de avaliações registradas para cada loja.

** Desafio -> Listar o nome dos produtos e a média das classificações de avaliações para cada produto, considerando apenas os produtos que possuem pelo menos uma avaliação.
*/

-- ALTER TABLE products
-- DROP COLUMN store_id;

-- SELECT * FROM products;

-- CREATE TABLE product_store(product_id INT REFERENCES products(id), store_id INT REFERENCES store(id), PRIMARY KEY (product_id, store_id));

-- DROP TABLE product_store;
/*
SELECT * FROM product_store;
SELECT * FROM store;
SELECT * FROM products;
*/

-- INSERT INTO product_store (product_id, store_id) VALUES (1, 2);

-- Estamos selecionando os nomes e as cidades das lojas. Usamos DISTINCT para garantir que cada loja seja listada apenas uma vez, mesmo que ela tenha vários produtos em estoque.
-- FROM store s
-- Indica que estamos selecionando dados da tabela "store" e usando o alias "s" para referenciar a tabela.
-- INNER JOIN product_store ps ON s.ID = ps.store_id
-- Fazemos um INNER JOIN entre as tabelas "store" e "product_store" usando a coluna "store_id" na tabela "product_store" e a coluna "ID" na tabela "store".
-- INNER JOIN products p ON ps.product_id = p.ID
-- Também fazemos um INNER JOIN entre as tabelas "product_store" e "products" usando a coluna "product_id" na tabela "product_store" e a coluna "ID" na tabela "products".
-- WHERE p.in_stock = true;
-- Estamos filtrando as lojas apenas para aquelas que têm pelo menos um produto em estoque. Verificamos a coluna "in_stock" na tabela "products".

-- SELECT DISTINCT s.name, s.city
-- FROM store s
-- INNER JOIN product_store ps ON s.ID = ps.store_id
-- INNER JOIN products p ON ps.product_id = p.ID
-- WHERE p.in_stock = true;

-- NÃO ENTENDI ESSE  =( 
-- SELECT DISTINCT s.name, s.city
-- FROM store s
-- INNER JOIN product_store ps ON s.ID = ps.store_id
-- INNER JOIN products p ON ps.product_id = p.ID
-- INNER JOIN evaluation e ON p.ID = e.product_id
-- GROUP BY s.ID, s.name, s.city
-- HAVING AVG(e.rating) >= 4;

--f) Listar o nome e cidade de todas lojas que possuem produtos com preço superior a 50

-- SELECT DISTINCT s.name, s.city
-- FROM store s
-- INNER JOIN product_store ps ON s.Id = ps.store_id
-- INNER JOIN products p ON ps.product_id = p.Id
-- WHERE p.price > 50;

-- SELECT s.name, s.city, COUNT(e.ID) AS total_evaluations
-- FROM store s
-- INNER JOIN product_store ps ON s.ID = ps.store_id
-- INNER JOIN products p ON ps.product_id = p.ID
-- LEFT JOIN evaluation e ON p.ID = e.product_id
-- GROUP BY s.ID, s.name, s.city;
