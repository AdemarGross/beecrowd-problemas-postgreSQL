/* 
EXERCÍCIO 2744 - Senhas


Você foi contratado para dar consultoria a uma empresa. Analisando o banco de dados você notou que as senhas gravadas dos usuários estão em formato de texto, sendo que isso pode gerar uma falha de segurança, uma vez que elas não estão criptografadas.

Por tanto você deve selecionar o id, a senha atual e a senha transformada em MD5 de cada usuário na tabela account.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE account (
    id integer PRIMARY KEY,
    name varchar(255),
    login varchar(255),
    password varchar(255)
);

-- INSERÇÃO DOS DADOS

INSERT INTO account (id, name, login, password)
VALUES
(1, 'Joyce P. Parry', 'Promeraw', 'noh1Oozei'),
(2, 'Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi'),
(3, 'Heather W. Lawless', 'Hankicht', 'diShono4'),
(4, 'Otis C. Hitt', 'Conalothe', 'zooFohH7w'),
(5, 'Roger N. Brownfield', 'Worseente', 'fah7ohNg');


-- RESPOSTA
select id, password,  MD5(password) from account;