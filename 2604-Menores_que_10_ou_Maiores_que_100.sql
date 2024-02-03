/* 
EXERCÍCIO 2604 - MENORES QUE 10 OU MAIORES QUE 100



O setor financeiro da empresa precisa de um relatório que mostre o código e o nome dos produtos cujo preço são menores que 10 ou maiores que 100.
*/

--MONTAGEM DAS TABELAS:
CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar,
    amount numeric,
    price numeric
);

--INSERÇÃO DOS DADOS
INSERT INTO products (id, name, amount, price)
VALUES
(1, 'Two-door wardrobe', 100, 80),
(2, 'Dining table', 1000, 560),
(3, 'Towel holder', 10000, 5.50),
(4, 'Computer desk', 350, 100),
(5, 'Chair', 3000, 210.64),
(6, 'Single bed', 750, 99);


-- RESPOSTA
SELECT id, name FROM products where price < '10' or price > '100';

