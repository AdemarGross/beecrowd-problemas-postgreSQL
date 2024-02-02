/* 
Quando os dados foram migrados de Banco de Dados, houve um pequeno mal-entendido por parte do antigo DBA.

Seu chefe precisa que você exiba o código e o nome dos produtos, cuja categoria inicie com 'super'. 
*/

--MONTAGEM DAS TABELAS
CREATE TABLE categories (
id numeric PRIMARY KEY,
name varchar);

CREATE TABLE products (
id numeric PRIMARY KEY,
name varchar,
amount numeric,
price numeric,
id_categories numeric REFERENCES categories(id)
);

--Inserção dos dados

INSERT INTO categories (id, name)
VALUES
(1, 'old stock'),
(2, 'new stock'),
(3, 'modern'),
(4, 'commercial'),
(5, 'recyclable'),
(6, 'executive'),
(7, 'superior'),
(8, 'wood'),
(9, 'super luxury'),
(10, 'vintage');



-- RESPOSTA
select products.id, products.name from products join categories on categories.id = id_categories 
where categories.name like 'super%';

