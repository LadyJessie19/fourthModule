# Comandos Básicos de SQL

Aqui estão alguns comandos SQL básicos que são frequentemente usados para interagir com bancos de dados.

## Criação de Tabelas

```sql
CREATE TABLE nome_da_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    ...
);
```

## Inserção de Dados

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

## Seleção de Dados

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

## Atualização de Dados

```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2
WHERE condição;
```

## Deleção de Dados

```sql
DELETE FROM nome_da_tabela
WHERE condição;
```

## Junção de Tabelas

```sql
SELECT colunas
FROM tabela1
JOIN tabela2 ON tabela1.coluna = tabela2.coluna;
```

## Ordenação de Resultados

```sql
SELECT colunas
FROM nome_da_tabela
ORDER BY coluna ASC/DESC;
```

## Agregação de Dados

```sql
SELECT função_agregação(coluna)
FROM nome_da_tabela
GROUP BY coluna;
```

## Criação de Índices

```sql
CREATE INDEX nome_do_indice ON nome_da_tabela (coluna);
```

## Exclusão de Tabelas

```sql
DROP TABLE nome_da_tabela;
```

## Exclusão de Índices

```sql
DROP INDEX nome_do_indice;
```