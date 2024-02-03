/* 
EXERCÍCIO 2745 - Taxas


Você está indo para uma reunião no plano Internacional de Taxas Pessoais, sua proposta é: toda pessoa com renda acima de 3000 deve pagar uma taxa para o governo, essa taxa é 10% do que ela ganha.

Portanto, mostre o nome da pessoa e o valor que ela deve pagar para o governo com a precisão de duas casas decimais.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE people (
    id integer PRIMARY KEY,
    name varchar(255),
    salary numeric
);

-- INSERÇÃO DOS DADOS

INSERT INTO people (id, name, salary)
VALUES
(1, 'James M. Tabarez', 883),
(2, 'Rafael T. Hendon', 4281),
(3, 'Linda J. Gardner', 4437),
(4, 'Nicholas J. Conn', 8011),
(5, 'Karol A. Morales', 2508),
(6, 'Lolita S. Graves', 8709);


-- RESPOSTA
select name, round(salary*0.1,2) from people where salary > '3000';