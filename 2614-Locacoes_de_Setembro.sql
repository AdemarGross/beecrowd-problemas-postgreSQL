/* 
EXERCÍCIO 2614 - Locações de Setembro



A vídeo locadora está fazendo seu relatório semestral e precisa da sua ajuda. Basta você selecionar o nome dos clientes e a data de locação, das locações realizadas no mês de setembro de 2016.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar,
    street varchar,
    city varchar
);

CREATE TABLE rentals (
    id numeric PRIMARY KEY,
    rentals_date date,
    id_customers numeric REFERENCES customers(id)
);


-- INSERÇÃO DOS DADOS

INSERT INTO customers (id, name, street, city)
VALUES
(1, 'Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
(2, 'Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
(3, 'Rebeca Barbosa Santos', 'Rua Observatório Meteorológico', 'Salvador'),
(4, 'Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
(5, 'João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
(6, 'Diogo Melo Dias', 'Rua Duzentos e Cinqüenta', 'Várzea Grande');


INSERT INTO rentals (id, rentals_date, id_customers)
VALUES
(1, '2016-09-10'::date, 3),
(2, '2016-02-09'::date, 1),
(3, '2016-02-08'::date, 4),
(4, '2016-02-09'::date, 2),
(5, '2016-02-03'::date, 6),
(6, '2016-04-04'::date, 4);


-- RESPOSTA
select customers.name, rentals.rentals_date from customers 
join rentals on rentals.id_customers = customers.id where rentals.rentals_date between '2016-08-31' and '2016-10-01';