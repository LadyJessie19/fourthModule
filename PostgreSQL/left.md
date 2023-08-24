# Função LEFT() em SQL

A função `LEFT()` é uma função usada em SQL para extrair uma quantidade específica de caracteres à esquerda de uma string. Ela é útil quando você deseja pegar uma parte inicial de uma string, como os primeiros caracteres.

## Sintaxe

A sintaxe básica da função `LEFT()` é a seguinte:

```sql
LEFT(string, length)
```

- `string`: A string da qual você deseja extrair os caracteres.
- `length`: O número de caracteres que você deseja extrair da esquerda da string.

## Exemplo de Uso

Imagine que temos a string 'Hello, World'. Se usarmos `LEFT('Hello, World', 5)`, o resultado será 'Hello', que são os primeiros 5 caracteres da string.

Agora, vamos relacionar isso com um exemplo prático:

Suponha que temos uma tabela "products" com uma coluna "name" que armazena os nomes dos produtos. Queremos selecionar os nomes dos produtos que começam com a letra 'S'. Podemos usar a função `LEFT()` para isso:

```sql
SELECT name FROM products
WHERE LEFT(name, 1) = 'S';
```

Nesta consulta:

- `LEFT(name, 1)`: Estamos pegando o primeiro caractere da coluna "name" de cada registro.
- `= 'S'`: Estamos comparando se esse primeiro caractere é igual a 'S'.

Assim, a consulta nos dará os nomes dos produtos cujo primeiro caractere é 'S'.

Lembre-se de que a função `LEFT()` é sensível a maiúsculas e minúsculas. Se você desejar torná-la case-insensitive (não distinguir entre maiúsculas e minúsculas), você pode usar a função `LOWER()` para converter a string para minúsculas antes de aplicar o `LEFT()` e a comparação.