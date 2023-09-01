# Criando uma Tabela Pivô: product_store

Uma tabela pivô, também conhecida como tabela de junção ou tabela de associação, é usada para estabelecer um relacionamento muitos-para-muitos entre duas tabelas. No contexto de produtos e lojas, podemos criar uma tabela pivô chamada "product_store" para associar produtos a lojas.

## Sintaxe

Aqui está como criar a tabela pivô "product_store" usando SQL:

```sql
CREATE TABLE product_store (
    product_id INT REFERENCES products(ID),
    store_id INT REFERENCES store(ID),
    PRIMARY KEY (product_id, store_id)
);
```

## Explicação

Nesse exemplo, estamos criando a tabela "product_store" com as seguintes colunas:

- `product_id`: Uma coluna que faz referência à coluna "ID" na tabela "products". Essa coluna armazenará o ID do produto associado.
- `store_id`: Uma coluna que faz referência à coluna "ID" na tabela "store". Essa coluna armazenará o ID da loja associada.

Também definimos uma chave primária composta usando as colunas `product_id` e `store_id`. Isso garante que não haverá duplicatas de associações entre produtos e lojas na tabela pivô.

A tabela pivô "product_store" permitirá associar múltiplos produtos a múltiplas lojas, facilitando a modelagem de um relacionamento muitos-para-muitos.

Lembre-se de adaptar a sintaxe e os nomes das tabelas de acordo com suas necessidades e convenções de nomenclatura. Certifique-se de ter os privilégios necessários para criar tabelas em seu banco de dados.
