/* 
EXERCÍCIO 2613 - Filmes em Promoção
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE prices (
    id numeric PRIMARY KEY,
    categorie varchar,
    value numeric
);

CREATE TABLE movies (
    id numeric PRIMARY KEY,
    name varchar,
    id_prices numeric REFERENCES prices(id)
);

-- INSERÇÃO DOS DADOS

INSERT INTO prices (id, categorie, value)
VALUES
(1, 'Releases', 3.50),
(2, 'Bronze Seal', 2.00),
(3, 'Silver Seal', 2.50),
(4, 'Gold Seal', 3.00),
(5, 'Promotion', 1.50);

INSERT INTO movies (id, name, id_prices)
VALUES
(1, 'Batman', 3),
(2, 'The Battle of the Dark River', 3),
(3, 'White Duck', 5),
(4, 'Breaking Barriers', 4),
(5, 'The Two Hours', 2);

-- RESPOSTA
select movies.id, movies.name from movies join prices on movies.id_prices = prices.id
where prices.value<2.00;