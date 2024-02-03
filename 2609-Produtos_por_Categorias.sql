/* 
EXERCÍCIO 2609 - Produtos por Categorias


Como de costume o setor de vendas está fazendo uma análise de quantos produtos temos em estoque, e você poderá ajudar eles.

Então seu trabalho será exibir o nome e a quantidade de produtos de cada uma categoria.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar
);

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar,
    amount numeric,
    price numeric,
    id_categories numeric REFERENCES categories(id)
);


-- INSERÇÃO DOS DADOS
INSERT INTO categories (id, name)
VALUES
(1, 'wood'),
(2, 'luxury'),
(3, 'vintage'),
(4, 'modern'),
(5, 'super luxury');


INSERT INTO products (id, name, amount, price, id_categories)
VALUES
(1, 'Two-doors wardrobe', 100, 800, 1),
(2, 'Dining table', 1000, 560, 3),
(3, 'Towel holder', 10000, 25.50, 4),
(4, 'Computer desk', 350, 320.50, 2),
(5, 'Chair', 3000, 210.64, 4),
(6, 'Single bed', 750, 460, 1);

-- RESPOSTA
select categories.name, sum(products.amount) from products 
join categories on products.id_categories = categories.id
group by categories.id;