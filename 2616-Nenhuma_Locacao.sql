/* 
EXERCÍCIO 2616 - Nenhuma Locação


A locadora pretende fazer uma promoção para os clientes que ainda não fizeram nenhuma locação.

Seu trabalho é nos entregar o ID e o nome dos clientes que não realizaram nenhuma locação. Ordene a saída por ID.
*/

-- MONTAGEM DAS TABELAS:
CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar,
    street varchar,
    city varchar
);

CREATE TABLE locations (
    id numeric PRIMARY KEY,
    locations_date date,
    id_customers numeric REFERENCES customers(id)
);

-- INSERÇÃO DOS DADOS

-- Inserindo dados na tabela locations
INSERT INTO customers (id, name, street, city)
VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');

INSERT INTO locations (id, locations_date, id_customers)
VALUES
(1, '2016-10-09'::date, 3),
(2, '2016-09-02'::date, 1),
(3, '2016-08-02'::date, 4),
(4, '2016-09-02'::date, 2),
(5, '2016-03-02'::date, 6),
(6, '2016-04-04'::date, 4);

-- RESPOSTA
Select id, name from customers where id not in (select id_customers from locations)
order by customers.id;