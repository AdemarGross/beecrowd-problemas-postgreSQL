/* 
EXERCÍCIO 2623 - Categorias com Vários Produtos


O setor de vendas precisa de um relatório para saber quais produtos estão sobrando em estoque.

Para você ajudar o setor de vendas, exiba o nome do produto e o nome da categoria, para os produtos cuja quantidade seja maior que 100 e o código da categoria seja 1,2,3,6 ou 9. Mostre essas informações em ordem crescente pelo código da categoria.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar(255),
    amount numeric,
    price numeric,
    id_categories numeric REFERENCES categories(id)
);

-- INSERÇÃO DOS DADOS


INSERT INTO categories (id, name)
VALUES
(1, 'Superior'),
(2, 'Super Luxury'),
(3, 'Modern'),
(4, 'Nerd'),
(5, 'Infantile'),
(6, 'Robust'),
(9, 'Wood');


INSERT INTO products (id, name, amount, price, id_categories)
VALUES
(1, 'Blue Chair', 30, 300.00, 9),
(2, 'Red Chair', 200, 2150.00, 2),
(3, 'Disney Wardrobe', 400, 829.50, 4),
(4, 'Blue Toaster', 20, 9.90, 3),
(5, 'Solar Panel', 30, 3000.25, 4);


-- RESPOSTA
select products.name, categories.name from products 
join categories on products.id_categories = categories.id
where products.amount > '100' and categories.id in (1,2,3,6,9)
order by categories.id;