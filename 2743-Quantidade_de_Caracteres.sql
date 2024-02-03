/* 
EXERCÍCIO 2743 - Quantidade de Caracteres


A Organização Mundial de Caracteres em Nomes de Pessoas (OMCNP) está fazendo um censo para saber qual é a quantidade de caracteres que as pessoas têm em seus nomes.

Para ajudar a OMCNP, você deve mostrar a quantidade de caracteres de cada nome em ordem decrescente pela quantidade de caracteres.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE people (
    id integer PRIMARY KEY,
    name varchar(255)
);

-- INSERÇÃO DOS DADOS

INSERT INTO people (id, name)
VALUES
(1, 'Karen'),
(2, 'Manuel'),
(3, 'Ygor'),
(4, 'Valentine'),
(5, 'Jo');


-- RESPOSTA
select name, LENGTH(name) as lenght from people order by lenght desc;