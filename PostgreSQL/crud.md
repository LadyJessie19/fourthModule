# Comandos CRUD usando SQL no PostgreSQL

Aqui estão os comandos básicos de CRUD (Create, Read, Update, Delete) que você pode usar para interagir com bancos de dados PostgreSQL.

## Criar (Create)

### Criar uma Nova Linha (Registro) em uma Tabela

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

## Ler (Read)

### Selecionar Dados de uma Tabela

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condição;
```

## Atualizar (Update)

### Atualizar Dados em uma Tabela

```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2
WHERE condição;
```

## Deletar (Delete)

### Deletar Linhas de uma Tabela

```sql
DELETE FROM nome_da_tabela
WHERE condição;
```

## Exemplos

### Exemplo de Criar

```sql
INSERT INTO clientes (nome, email)
VALUES ('João', 'joao@email.com');
```

### Exemplo de Ler

```sql
SELECT nome, email
FROM clientes
WHERE cidade = 'São Paulo';
```

### Exemplo de Atualizar

```sql
UPDATE produtos
SET preço = 15.99
WHERE categoria = 'Alimentos';
```

### Exemplo de Deletar

```sql
DELETE FROM pedidos
WHERE data < '2023-01-01';
```

Lembre-se de substituir `nome_da_tabela`, `coluna1`, `coluna2`, etc., pelos nomes reais das tabelas e colunas do seu banco de dados PostgreSQL, bem como adaptar as condições de acordo com as suas necessidades.
