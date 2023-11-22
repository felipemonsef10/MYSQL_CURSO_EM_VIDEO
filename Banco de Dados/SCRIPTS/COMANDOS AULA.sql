CREATE TABLE LIVROS(
	LIVRO VARCHAR(100),
    AUTOR VARCHAR(100),
    SEXO CHAR(1),
    PAGINAS INT(5),
    EDITORA VARCHAR(30),
    VALOR FLOAT(10,2),
    UF CHAR(4),
    ANO INT(4)
);


INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('CONVIDADOS DE HONRA', 'KARLA CLAUDIA', 'F', '465', 'ATLAS', 49.9, 'RJ', 2019);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('JAVA PARA LEIGOS', 'CARLOS NUNES', 'M', '450', 'ATENA', 90, 'SP', 2019);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('NUTRICAO VEGANA', 'CELIA TAVARES', 'F', '201', 'ATLAS', 45, 'RJ', 2018);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('MOTIVACAO DIARIA', 'MARCOS SANTOS', 'M', '390', 'BETA', 38, 'RJ' ,2018);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('7 VIDAS', 'MARCOS SANTOS', 'M', '800', 'BETA' , 78, 'RJ', '2020');
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('O ESPELHO MAGICO', 'LEANDRO MACEDO', 'M', '250', 'BUBA' , 79, 'MG', 2020);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('O JOVEM AMADO', 'JADER FRANCISCO', 'N', '234', 'INSIGHT', 100, 'ES' ,2014);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('O PODER DA AMIZADE', 'CRISTINA SILVA', 'F', '739', 'GLENIA', 56, 'ES', 2018);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('CASAS DE VARANDA', 'BRUNO ALCANTARA', 'M', '234', 'ATLAS', 78, 'RS', 2017);
INSERT INTO LIVROS (Livro, Autor, Sexo, Paginas, editora, Valor, UF, ANO) VALUES ('SAUDE MENTAL', 'DIANA JEAN', 'F', '40', 'TERRA', 123, 'SP', 2017);



/* 1) Trazer todos os dados.*/
SELECT * FROM LIVROS;


/* 2) Trazer o nome do livro e o nome da editora*/
SELECT LIVRO, EDITORA 
FROM LIVROS;


/* 3) Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino*/
SELECT LIVRO, UF, SEXO 
FROM LIVROS 
WHERE SEXO = 'M';


SELECT AUTOR, SEXO, LIVRO, UF 
FROM LIVROS 
WHERE SEXO = 'M';


/* 4) Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino*/
SELECT LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';


SELECT AUTOR, LIVRO, PAGINAS
FROM LIVROS
WHERE SEXO = 'F';


/* 5) Trazer os valores dos livros das editoras de São Paulo.*/
SELECT EDITORA, VALOR, UF
FROM LIVROS
WHERE UF = 'SP';


/* 6) Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (questão desafio)*/
SELECT * FROM LIVROS;

SELECT 
	AUTOR, 
    SEXO
FROM LIVROS
WHERE SEXO = 'M' AND (UF = 'SP' OR UF = 'RJ');


SELECT COUNT(AUTOR), UF
FROM LIVROS WHERE SEXO = 'M'
GROUP BY UF;







