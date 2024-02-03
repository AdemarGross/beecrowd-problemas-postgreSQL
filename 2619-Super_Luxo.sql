/* 
EXERCÍCIO 2619 - Super Luxo


A nossa empresa está querendo fazer um novo contrato para o fornecimento de novos produtos superluxuosos, e para isso precisamos de alguns dados dos nossos produtos.

Seu trabalho é exibir o nome dos produtos, nome dos fornecedores e o preço, para os produtos cujo preço seja maior que 1000 e sua categoria seja ‘Super Luxury.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE providers (
    id numeric PRIMARY KEY,
    name varchar(255),
    street varchar(255),
    city varchar(255),
    state char(2)
);

CREATE TABLE categories (
    id numeric PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE products (
    id numeric PRIMARY KEY,
    name varchar(255),
    amount numeric,
    price numeric,
    id_providers numeric REFERENCES providers(id),
    id_categories numeric REFERENCES categories(id)
);

-- INSERÇÃO DOS DADOS

INSERT INTO providers (id, name, street, city, state)
VALUES
(1, 'Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS'),
(2, 'Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
(3, 'South Chairs', 'Rua do Moinho', 'Santa Maria', 'RS'),
(4, 'Elon Electro', 'Rua Apolo', 'São Paulo', 'SP'),
(5, 'Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');


INSERT INTO categories (id, name)
VALUES
(1, 'Super Luxury'),
(2, 'Imported'),
(3, 'Tech'),
(4, 'Vintage'),
(5, 'Supreme');


INSERT INTO products (id, name, amount, price, id_providers, id_categories)
VALUES
(1, 'Blue Chair', 30, 300.00, 5, 5),
(2, 'Red Chair', 50, 2150.00, 2, 1),
(3, 'Disney Wardrobe', 400, 829.50, 4, 1),
(4, 'Blue Toaster', 20, 9.90, 3, 1),
(5, 'TV', 30, 3000.25, 2, 2);



-- RESPOSTA
select products.name, providers.name, products.price 
from products join providers on providers.id = products.id_providers
join categories on categories.id = products.id_categories 
where products.price > '1000' and categories.name = 'Super Luxury'