/* 
EXERCÍCIO 2624 - Quantidades de Cidades por Clientes


A diretoria da empresa pediu para você um relatório simples de quantas cidades a empresa já alcançou.

Para fazer isso você deve exibir a quantidade de cidades distintas da tabela clientes.
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

-- INSERÇÃO DOS DADOS

INSERT INTO customers (id, name, street, city, state, credit_limit)
VALUES
(1, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(2, 'Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
(3, 'Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
(4, 'Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
(5, 'Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
(6, 'Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

-- RESPOSTA
select count(distinct(city)) as count from customers;