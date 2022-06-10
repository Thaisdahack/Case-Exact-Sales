
/* queries para apagar tabelas
DROP TABLE FILME; 
DROP TABLE GENERO;
DROP TABLE LOCACAO;
DROP TABLE USUARIO;
DROP TABLE FILMELOCACAO;*/


/* Criando a tabela genero*/

CREATE TABLE GENERO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    DtCriacao DATETIME,
    Ativo TINYINT NOT NULL
);

/* Criando a tabela filme */

CREATE TABLE FILME (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200) NOT NULL,
    DtCriacao DATETIME NOT NULL,
    Ativo TINYINT NOT NULL,
    GeneroId_FK INT NOT NULL,
    FOREIGN KEY (GeneroId_FK)
        REFERENCES GENERO (ID)
);

/* Criando a tabela usuario*/

CREATE TABLE USUARIO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(200) NOT NULL,
    Email VARCHAR(100),
    CPF VARCHAR(14),
    Ativo TINYINT NOT NULL
);
     
/*Criando a tabela filme_locacao*/
     
CREATE TABLE FILMELOCACAO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FilmeId_FK INT NOT NULL,
    FOREIGN KEY (FilmeId_FK)
        REFERENCES FILME (ID)
);
     
/*Criando a tabela locacao*/

CREATE TABLE LOCACAO (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    FilmeLocacaoId_FK INT NOT NULL,
    UsuarioId_FK INT NOT NULL,
    DtLocacao DATETIME NOT NULL,
    GeneroId_FK INT NOT NULL,
    FOREIGN KEY (FilmeLocacaoId_FK)
        REFERENCES FILMELOCACAO (ID),
    FOREIGN KEY (UsuarioId_FK)
        REFERENCES USUARIO (ID),
    FOREIGN KEY (GeneroId_FK)
        REFERENCES GENERO (ID)
);
     

/* Inserindo dados na tabela GENERO - QUESTAO 1.4 */     

INSERT INTO GENERO (ID, Nome, DtCriacao, Ativo) Values (1, 'Super herois', '2015-05-15 00:10:00', 1),
														(2, 'Drama', '2012-04-17 00:10:00', 1),
                                                        (3, 'Animaçao', '2013-05-19 00:10:00', 1),
                                                        (4, 'Comedia', '2014-05-15 02:20:00', 0),
                                                        (5, 'Ficçao Cientifica', '2012-06-15 08:20:00', 0)
                                                        ;


/* Inserindo dados na tabela FILME - QUESTAO 1.2 */ 

INSERT INTO FILME (ID, Nome, DtCriacao, Ativo, GeneroId_FK) VALUES (1, 'Titanic', '2019-03-30 00:20:10', 1, 2),
																(2, 'Aquaman', '2018-06-10 00:30:20', 1, 1),
																(3, 'Vingadores', '2018-05-15 00:10:00', 1, 1),
																(4, 'Homem de Ferro', '2012-06-13 02:20:10', 0, 1),
                                                                (5, 'A Bela e a Fera', '2011-02-10 05:00:10', 0, 3),
                                                                (6, 'Capitao America', '2016-05-30 02:20:10', 0, 1),
                                                                (7, 'Homem Formiga', '2021-05-12 10:20:10', 1, 1),
                                                                (8, 'Viuva Negra' , '2022-02-20 07:20:10', 1, 1),
                                                                (9, 'Vingadores Ultimato', '2022-01-25 20:00:09', 1, 1),
                                                                (10, 'Thor', '2019-03-27 10:03:00', 1, 1),
                                                                (11, 'Homem Aranha De volta ao Lar', '2020-02-10 00:20:10', 1, 1),
                                                                (12, 'Homem Aranha Longe de Casa' , '2018-05-20 04:10:10', 1, 1),
                                                                (13, 'Homem Aranha Sem Volta Pra Casa' , '2022-05-20 08:10:15', 1, 1),
                                                                (14, 'Batman Begins', '2018-07-10 09:10:15', 0, 1),
                                                                (15, 'Batman O Cavaleiro das Trevas' , '2018-04-11 07:10:05', 0, 1),
                                                                (16, 'Carros' , '2015-03-20 05:10:12', 0, 3),
                                                                (17, 'Formiguinhaz', '2014-08-30 06:10:15', 0, 3),
                                                                (18, 'Missao Madrinha de Casamento', '2020-09-10 18:10:15', 1, 4),
                                                                (19, 'De Volta Para o Futuro', '2013-04-02 08:11:25', 0, 5),
                                                                (20, 'Star Wars', '2014-03-15 08:12:16', 0, 5)
                                                                ;

/* Inserindo dados na tabela USUARIO - QUESTAO 1.3 */
    
    INSERT INTO USUARIO(ID, Nome, Email, CPF, Ativo) VALUES (1, 'Thais Dias', 'thaisdias@gmail.com', '0625532520', 1),
															(2, 'Mateus Lima', 'matlima@gmail.com', '0225832527', 1),
                                                            (3, 'Paulo Cunha', 'phcunha@gmail.com', '555532520', 0),
                                                            (4, 'Marcela Costa', 'marecosta@hotmail.com', '1725532520', 0),
                                                            (5, 'Fabio Santos', 'fabiosantoss@ig.com', '3236532520', 1)
                                                            ;


/* Inserindo dados na tabela FILMELOCACAO */ 

	INSERT INTO FILMELOCACAO(ID, FilmeId_FK) VALUES( 1, 20),
												( 2, 2),
                                                ( 3, 3),
                                                ( 4, 4),
                                                ( 5, 5),
                                                ( 6, 6),
                                                ( 7, 7),
                                                ( 8, 8),
                                                ( 9, 9),
                                                ( 10, 10),
                                                ( 11, 11),
                                                ( 12, 12),
                                                ( 13, 13),
                                                ( 14, 14),
                                                ( 15, 15),
                                                ( 16, 16),
                                                ( 17, 17),
                                                ( 18, 18),
                                                ( 19, 19),
                                                ( 20, 20)
                                                ;

/* Inserindo dados na tabela LOCACAO -- QUESTAO 1.5*/

	INSERT INTO LOCACAO(ID, FilmeLocacaoId_FK, UsuarioId_FK, DtLocacao, GeneroId_FK ) VALUES (1, 12, 3, '2015-03-20 05:10:12',5),
																		  (2, 18, 5, '2022-05-05 06:12:12',2),
                                                                          (3, 17, 3, '2022-06-05 10:12:12',3),
                                                                          (4, 15, 2, '2022-06-02 06:12:12',3),
                                                                          (5, 13, 3, '2022-06-05 08:12:12',1),
                                                                          (6, 11, 2, '2022-06-02 05:14:12',1),
                                                                          (7, 10, 1, '2022-06-01 03:12:12',1),
                                                                          (8, 1, 1, '2022-06-05 06:12:12',1),
                                                                          (9, 12, 3, '2022-05-07 09:12:12',4),
                                                                          (10, 16, 3, '2022-04-05 10:12:02',4),
                                                                          (11, 19, 3, '2022-06-05 10:12:12',4),
                                                                          (12, 8, 1, '2022-06-07 06:12:12',4),
                                                                          (13, 14, 1, '2022-08-05 06:12:12',4),
                                                                          (14, 7, 2, '2022-06-05 09:10:12',4),
                                                                          (15, 3, 1, '2017-04-05 09:10:12',2),
                                                                          (16, 2, 2, '2022-09-05 09:10:12',1),
                                                                          (17, 4, 1, '2022-10-05 07:10:12',1),
                                                                          (18, 5, 4, '2012-05-05 09:10:12',1),
                                                                          (19, 6, 4, '2022-06-05 09:10:12',1),
                                                                          (20, 14, 1, '2022-06-05 09:10:12',1)
                                                                          ;
 
/* 1.6 QUERY PARA BUSCAR TODAS AS LOCAÇOES DESSE MES COM AS COLUNAS: FILME.NOME, 
GENERO.NOME, LOCAÇAO.DTLOCAÇAO, USUARIO.NOME, USUARIO.EMAIL*/
       
SELECT 
    F.NOME AS FILME,
    G.NOME AS GENERO,
    LO.DtLocacao AS DATA_DE_LOCAÇAO,
    U.NOME AS NOME_USUARIO,
    U.EMAIL
FROM
    FILME F
        JOIN
    GENERO G ON F.GeneroId_FK = G.ID
        JOIN
    FILMELOCACAO FL ON FL.FilmeId_FK = f.ID
        JOIN
    LOCACAO LO ON FL.ID = LO.FilmeLocacaoId_FK
        JOIN
    USUARIO U ON lo.UsuarioId_FK = U.ID
WHERE
    MONTH(DtLocacao) = 06
 
/* 1.7 QUERY QUE APRESENTA TODOS OS USUARIOS INATIVOS QUE JA TIVERAM ALGUMA LOCAÇAO, 
COM AS COLUNAS: USUARIO.NOME, USUARIO.CPF */

SELECT DISTINCT
    U.NOME, U.CPF, U.ATIVO
FROM
    USUARIO U
        JOIN
    LOCACAO LO
WHERE
    U.ATIVO = 0   /*COLUNA GERA RESULTADOS BOOLEANOS, ENTAO 0 SIGNIFICA INATIVO E 1 ATIVO*/

/* 1.8 QUERY QUE APRESENTA OS FILMES ALUGADOS POR USUARIOS QUE CONTEM A LETRA A EM SEU EMAIL,
COM AS SEGUINTES COLUNAS: FILME.ID, FILME.NOME*/

	SELECT F.ID AS FILME_ID, F.NOME AS NOME_FILME
    FROM
	FILME F
    JOIN
    FILMELOCACAO FL
    ON F.ID = FL.FILMEID_FK
    JOIN 
    LOCACAO LO
    ON FL.ID = LO.FILMELOCACAOID_FK
    JOIN USUARIO U
    ON LO.USUARIOID_FK = U.ID
    WHERE U.EMAIL LIKE '%a%'
    ;
    
 /* 1.9 QUERY COM OS FILMES MAIS ALUGADOS, COLUNAS: FILME.NOME, QUANTIDADE DE ALUGUEIS*/
    
SELECT 
    f.NOME,
    COUNT(lo.FilmeLocacaoId_FK) AS Quantidade_de_Alugueis
FROM
    FILME F
        JOIN
    FILMELOCACAO FL ON FL.FilmeId_FK = F.ID
        JOIN
    locacao lo ON lo.FilmeLocacaoId_FK = FL.ID
GROUP BY lo.FilmeLocacaoId_FK
ORDER BY Quantidade_de_Alugueis DESC;