# Comando ALTER no PostgreSQL

O comando `ALTER` é usado no PostgreSQL para fazer alterações em objetos de banco de dados existentes, como tabelas, colunas, restrições, entre outros. Ele permite que você adicione, modifique ou exclua elementos do seu esquema de banco de dados sem a necessidade de recriar os objetos.

## Sintaxe Básica

A sintaxe básica do comando ALTER é a seguinte:

```sql
ALTER TABLE nome_da_tabela
ALTER COLUMN nome_da_coluna ALTERAÇÃO;
```

Substitua `nome_da_tabela` pelo nome da tabela onde você deseja fazer a alteração e `nome_da_coluna` pelo nome da coluna na qual deseja fazer a alteração. A `ALTERAÇÃO` é a alteração específica que você deseja realizar, como mudar o tipo de dado, adicionar uma restrição, renomear a coluna, entre outros.

## Exemplos

### Exemplo 1: Alterar o Tipo de Dado de uma Coluna

```sql
ALTER TABLE produtos
ALTER COLUMN preco TYPE NUMERIC;
```

Neste exemplo, estamos alterando o tipo de dado da coluna "preco" na tabela "produtos" para NUMERIC.

### Exemplo 2: Adicionar uma Restrição a uma Coluna

```sql
ALTER TABLE usuarios
ADD CONSTRAINT idade_minima CHECK (idade >= 18);
```

Neste exemplo, estamos adicionando uma restrição de verificação à coluna "idade" na tabela "usuarios" para garantir que a idade seja maior ou igual a 18.

### Exemplo 3: Renomear uma Coluna

```sql
ALTER TABLE clientes
RENAME COLUMN nome_antigo TO nome_novo;
```

Neste exemplo, estamos renomeando a coluna "nome_antigo" para "nome_novo" na tabela "clientes".

Lembre-se de adaptar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para realizar as alterações.
