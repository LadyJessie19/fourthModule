# Cláusula ORDER BY no PostgreSQL

A cláusula `ORDER BY` é utilizada em consultas SQL para ordenar os resultados de uma consulta de acordo com uma ou mais colunas. Isso permite que você apresente os resultados de forma ordenada, seja em ordem crescente (ascendente) ou decrescente (descendente).

## Sintaxe Básica

A sintaxe básica da cláusula `ORDER BY` é a seguinte:

```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
ORDER BY coluna1 [ASC | DESC], coluna2 [ASC | DESC], ...;
```

Substitua `coluna1`, `coluna2`, ... pelas colunas pelas quais você deseja ordenar os resultados e `nome_da_tabela` pelo nome da tabela que você está consultando. Você pode adicionar mais colunas para uma ordenação mais complexa.

`ASC` significa ordenação ascendente (padrão) e `DESC` significa ordenação descendente.

## Exemplos

### Exemplo 1: Ordenar em Ordem Crescente

```sql
SELECT nome, idade
FROM usuarios
ORDER BY idade ASC;
```

Neste exemplo, estamos selecionando as colunas "nome" e "idade" da tabela "usuarios" e ordenando os resultados em ordem crescente com base na coluna "idade".

### Exemplo 2: Ordenar em Ordem Decrescente

```sql
SELECT nome, saldo
FROM contas
ORDER BY saldo DESC;
```

Neste exemplo, estamos selecionando as colunas "nome" e "saldo" da tabela "contas" e ordenando os resultados em ordem decrescente com base na coluna "saldo".

Lembre-se de ajustar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para executar a consulta.