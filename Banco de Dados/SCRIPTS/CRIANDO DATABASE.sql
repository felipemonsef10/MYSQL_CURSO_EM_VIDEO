-- 1) CRIA UM BANCO DE DADOS:
-- CREATE DATABASE cadastro;

USE cadastro;

-- 2) CRIA UMA TABELA:
CREATE TABLE pessoas (
	nome varchar(30),
	idade tinyint(3),
    sexo char(1),
	peso float,
    altura float,
    nacionalidade varchar(20)
);

-- 3) VISUALIZAR INFORMAÇÕES DA TABELA:
DESCRIBE pessoas;

-- VISUALIZA OS BANCOS DE DADOS CRIADOS:
SHOW DATABASES;

-- VISUALIZA AS TABELAS DO DATABASE:
SHOW TABLES;
DESCRIBE pessoas;


