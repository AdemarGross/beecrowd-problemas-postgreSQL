/* 
EXERCÍCIO 2611 - Filmes de Ação



Uma Vídeo locadora contratou seus serviços para catalogar os filmes dela. Eles precisam que você selecione o código e o nome dos filmes cuja descrição do gênero seja 'Action'.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE genres (
    id numeric PRIMARY KEY,
    description varchar
);

CREATE TABLE movies (
    id numeric PRIMARY KEY,
    name varchar,
    id_genres numeric REFERENCES genres(id)
);

-- INSERÇÃO DOS DADOS

INSERT INTO genres (id, description)
VALUES
(1, 'Animation'),
(2, 'Horror'),
(3, 'Action'),
(4, 'Drama'),
(5, 'Comedy');

INSERT INTO movies (id, name, id_genres)
VALUES
(1, 'Batman', 3),
(2, 'The Battle of the Dark River', 3),
(3, 'White Duck', 1),
(4, 'Breaking Barriers', 4),
(5, 'The Two Hours', 2);

-- RESPOSTA
select movies.id, movies.name from movies join genres on id_genres = genres.id
where genres.description = 'Action';