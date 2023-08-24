# Comando GROUP BY no SQL

O comando `GROUP BY` é uma cláusula usada em consultas SQL para agrupar os resultados da consulta com base nos valores de uma ou mais colunas. Ele é fundamental para realizar análises agregadas e obter informações resumidas sobre conjuntos específicos de dados.

## Funcionamento do GROUP BY

Ao usar o `GROUP BY`, os resultados da consulta são divididos em grupos distintos com base nos valores únicos nas colunas especificadas. Isso permite que você realize cálculos e operações de agregação dentro de cada grupo.

## Sintaxe Básica

A sintaxe básica do comando `GROUP BY` é a seguinte:

```sql
SELECT coluna1, coluna2, ..., função_de_agregação(coluna)
FROM nome_da_tabela
GROUP BY coluna1, coluna2, ...;
```

Substitua `coluna1`, `coluna2`, ... pelas colunas pelas quais você deseja agrupar os resultados e realizar cálculos. A função de agregação, como `SUM`, `COUNT`, `AVG`, etc., é aplicada às colunas dentro de cada grupo.

## Exemplos de Uso

### Exemplo 1: Contagem de Vendas por Produto

```sql
SELECT produto, SUM(quantidade) AS total_vendido
FROM vendas
GROUP BY produto;
```

Neste exemplo, estamos agrupando as vendas por produto e calculando a soma total da quantidade vendida para cada produto.

### Exemplo 2: Média de Salário por Departamento

```sql
SELECT departamento, AVG(salario) AS media_salario
FROM funcionarios
GROUP BY departamento;
```

Neste exemplo, estamos agrupando os funcionários por departamento e calculando a média salarial para cada departamento.

O uso correto do `GROUP BY` é essencial para obter resultados precisos e significativos. Lembre-se de ajustar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para executar consultas com `GROUP BY`.