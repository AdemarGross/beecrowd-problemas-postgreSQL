/* 
EXERCÍCIO 
2615 - Expandindo o Negocio

A locadora tem objetivos de criar várias franquias espalhadas pelo Brasil. Para isso queremos saber em quais cidades nossos clientes moram.

Para você nos ajudar selecione o nome de todas as cidades onde a locadora tem clientes. Mas por favor, não repita o nome da cidade.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar,
    street varchar,
    city varchar
);



-- INSERÇÃO DOS DADOS

INSERT INTO customers (id, name, street, city)
VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

-- RESPOSTA
select city from customers group by city;