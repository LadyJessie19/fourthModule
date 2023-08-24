# Função COUNT() no PostgreSQL

A função `COUNT()` é usada em consultas SQL para contar o número de registros em uma tabela ou o número de valores não nulos em uma coluna específica. Ela é frequentemente usada para calcular estatísticas sobre os dados.

## Sintaxe Básica

A sintaxe básica da função `COUNT()` é a seguinte:

```sql
SELECT COUNT(coluna) AS quantidade
FROM nome_da_tabela
WHERE condições_opcionais;
```

Substitua `coluna` pela coluna que você deseja contar, `nome_da_tabela` pelo nome da tabela que você está consultando e `condições_opcionais` pelas condições de filtro, se necessário.

## Exemplos

### Exemplo 1: Contar Todos os Registros

```sql
SELECT COUNT(*) AS total_registros
FROM usuarios;
```

Neste exemplo, estamos contando o número total de registros na tabela "usuarios" e renomeando o resultado para "total_registros".

### Exemplo 2: Contar Valores Não Nulos em uma Coluna

```sql
SELECT COUNT(email) AS total_emails
FROM contatos;
```

Neste exemplo, estamos contando o número total de valores não nulos na coluna "email" na tabela "contatos" e renomeando o resultado para "total_emails".

Lembre-se de ajustar a sintaxe de acordo com suas necessidades e ter os privilégios apropriados para executar a consulta.