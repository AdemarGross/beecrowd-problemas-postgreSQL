/* 
EXERCÍCIO 2746 - Virus


Os vírus estão evoluindo, porém uma nova pesquisa tem provado que trocando algumas proteínas a vacina se torna imbatível. A proteína H1 (Hemaglutinina) quando é substituída pela proteína X (Xenomorphina) tem efeitos interessantes no combate de quase todas as doenças virais. Alguns conspiracionistas dizem que após a descoberta dessa vacina algumas criaturas de 3 metros de altura foram vistas perto do laboratório, mas claro, isso é mentira.

Portanto você deve substituir todo caractere 'H1' ( Hemaglutinina ) por 'X' ( Xenomorphina ).
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE virus (
    id integer PRIMARY KEY,
    name varchar(255)
);

-- INSERÇÃO DOS DADOS

INSERT INTO virus (id, name)
VALUES
(1, 'H1RT'),
(2, 'H7H1'),
(3, 'HUN8'),
(4, 'XH1HX'),
(5, 'XXXX');


-- RESPOSTA
select replace(name, 'H1','X') as name from virus