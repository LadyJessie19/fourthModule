# Cláusula CHECK no SQL

A cláusula `CHECK` é usada em SQL para aplicar restrições a nível de linha, garantindo que os valores inseridos em uma coluna atendam a uma condição específica. Essa cláusula é frequentemente usada para garantir a integridade dos dados e impor regras específicas sobre os valores que podem ser inseridos em uma coluna.

## Sintaxe Básica

A sintaxe básica da cláusula `CHECK` é a seguinte:

```sql
CREATE TABLE nome_da_tabela (
    coluna tipo_de_dado CHECK (condição)
);
```

Substitua `nome_da_tabela` pelo nome da tabela que você está criando, `coluna` pelo nome da coluna na qual você deseja aplicar a restrição e `condição` pela expressão que define a restrição.

## Exemplos de Uso

### Exemplo 1: Restrição de Intervalo

```sql
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    preco DECIMAL CHECK (preco >= 0)
);
```

Neste exemplo, estamos criando uma tabela "produtos" com a coluna "preco". A cláusula `CHECK` garante que o valor inserido na coluna "preco" seja maior ou igual a zero.

### Exemplo 2: Restrição de Faixa Etária

```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    idade INT CHECK (idade >= 18 AND idade <= 99)
);
```

Neste exemplo, estamos criando uma tabela "usuarios" com a coluna "idade". A cláusula `CHECK` garante que o valor inserido na coluna "idade" esteja no intervalo de 18 a 99.

### Exemplo 3: Restrição de Domínio de Valores

```sql
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    status VARCHAR(20) CHECK (status IN ('pendente', 'processando', 'concluido'))
);
```

Neste exemplo, estamos criando uma tabela "pedidos" com a coluna "status". A cláusula `CHECK` garante que o valor inserido na coluna "status" esteja dentro do conjunto de valores permitidos ('pendente', 'processando' ou 'concluido').

A cláusula `CHECK` é uma ferramenta poderosa para impor regras específicas nos dados de uma tabela, ajudando a manter a integridade dos dados armazenados.

Certifique-se de ajustar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para criar tabelas no banco de dados.