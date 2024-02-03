/* 
EXERCÍCIO 2620 - Pedidos no Primeiro Semestre


A auditoria financeira da empresa está pedindo para nós um relatório do primeiro semestre de 2016. Então exiba o nome dos clientes e o número do pedido para os clientes que fizeram pedidos no primeiro semestre de 2016.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE customers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2),
    credit_limit numeric
);

CREATE TABLE orders (
    id numeric PRIMARY KEY,
    orders_date date,
    id_customers numeric REFERENCES customers(id)
);



-- INSERÇÃO DOS DADOS

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

INSERT INTO orders (id, orders_date, id_customers)
VALUES
(1, '2016-05-13'::date, 3),
(2, '2016-01-12'::date, 2),
(3, '2016-04-18'::date, 5),
(4, '2016-09-07'::date, 4),
(5, '2016-02-13'::date, 6),
(6, '2016-08-05'::date, 3);

-- RESPOSTA
select customers.name, orders.id from customers join orders
on orders.id_customers=customers.id
where orders.orders_date between '2015-12-31' and '2016-07-01';