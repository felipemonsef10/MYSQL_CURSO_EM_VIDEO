-- Exemplo 1. Selecionando TODAS as linhas e colunas da:
-- a) tabela pedidos
SELECT * FROM pedidos;

-- b) tabela clientes
SELECT * FROM clientes;

-- c) tabela categorias
SELECT * FROM categorias;

-- d) tabela locais
SELECT * FROM locais;

-- e) tabela lojas
SELECT * FROM lojas;

-- f) tabela produtos
SELECT * FROM produtos;


-- Exemplo 2. Selecionar apenas ALGUMAS colunas da tabela clientes
SELECT 
	Id_Cliente AS 'ID Cliente', 
    Nome AS 'Nome do Cliente', 
    Data_Nascimento AS 'Data de Nascimento', 
    Email 
FROM clientes;


-- Exemplo 3. Selecionar APENAS as 5 PRIMEIRAS linhas
SELECT * FROM produtos
LIMIT 5;


-- Exemplo 4. Selecionar todas as linhas da tabela produtos, MAS...
-- ...ORDENANDO pela coluna Preco_Unit
SELECT * FROM produtos
ORDER BY Preco_Unit ASC;

SELECT * FROM produtos
ORDER BY Preco_Unit DESC;






