# Funções LOWER() e UPPER() no PostgreSQL

As funções `LOWER()` e `UPPER()` são usadas no PostgreSQL para converter letras de uma string em minúsculas ou maiúsculas, respectivamente. Isso é útil para realizar comparações ou operações de busca sem considerar a diferença entre letras maiúsculas e minúsculas.

## Função LOWER()

A função `LOWER()` converte uma string em todas as letras minúsculas.

**Sintaxe:**

```sql
LOWER(string)
```

**Exemplo:**

```sql
SELECT LOWER('Texto Exemplo'); -- Retorna 'texto exemplo'
```

## Função UPPER()

A função `UPPER()` converte uma string em todas as letras maiúsculas.

**Sintaxe:**

```sql
UPPER(string)
```

**Exemplo:**

```sql
SELECT UPPER('Texto Exemplo'); -- Retorna 'TEXTO EXEMPLO'
```

## Usando LOWER() e UPPER() em Consultas

Essas funções são frequentemente usadas em consultas para fazer comparações de strings sem levar em consideração a diferença entre letras maiúsculas e minúsculas.

### Exemplo: Selecionar Produtos que Começam com 'S' ou 's'

```sql
SELECT *
FROM products
WHERE LOWER(LEFT(name, 1)) = 's';
```

Neste exemplo, a função `LOWER()` é usada para converter os nomes em letras minúsculas antes de comparar o primeiro caractere com "s", permitindo que você selecione produtos que começam com a letra "S" ou "s".

### Exemplo: Selecionar Usuários com Nomes em Maiúsculas

```sql
SELECT *
FROM usuarios
WHERE UPPER(name) = name;
```

Neste exemplo, a função `UPPER()` é usada para converter o nome do usuário em maiúsculas e comparar com o nome original, permitindo que você selecione usuários que tenham nomes totalmente em maiúsculas.

Lembre-se de ajustar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para executar a consulta.