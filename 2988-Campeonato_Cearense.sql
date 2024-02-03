/* 
EXERCÍCIO 2988 - Campeonato Cearense


O Campeonato Cearense de Futebol atrai milhares de torcedores todos os anos, você trabalha em um jornal e está encarregado de calcular a tabela de pontuação dos times. Mostre uma tabela com as seguintes colunas: o nome do time, número de partidas, vitórias, derrotas, empates e pontuação. Sabendo que a pontuação é calculada com cada vitória valendo 3 pontos, empate vale 1 e derrota rende 0. No final mostre sua tabela com a pontuação ordenada do maior para o menor.
*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE teams (
    id integer PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE matches (
    id integer PRIMARY KEY,
    team_1 integer REFERENCES teams(id),
    team_2 integer REFERENCES teams(id),
    team_1_goals integer,
    team_2_goals integer
);

-- INSERÇÃO DOS DADOS

INSERT INTO teams (id, name)
VALUES
(1, 'CEARA'),
(2, 'FORTALEZA'),
(3, 'GUARANY DE SOBRAL'),
(4, 'FLORESTA');

INSERT INTO matches (id, team_1, team_2, team_1_goals, team_2_goals)
VALUES
(1, 4, 1, 0, 4),
(2, 3, 2, 0, 1),
(3, 1, 3, 3, 0),
(4, 3, 4, 0, 1),
(5, 1, 2, 0, 0),
(6, 2, 4, 2, 1);

-- RESPOSTA
SELECT
    t.name AS team_name,
    COUNT(*) AS matches_played,
    SUM(CASE WHEN m.team_1 = t.id AND m.team_1_goals > m.team_2_goals THEN 1
             WHEN m.team_2 = t.id AND m.team_2_goals > m.team_1_goals THEN 1 ELSE 0 END) AS wins,
    SUM(CASE WHEN m.team_1 = t.id AND m.team_1_goals < m.team_2_goals THEN 1
             WHEN m.team_2 = t.id AND m.team_2_goals < m.team_1_goals THEN 1 ELSE 0 END) AS losses,
    SUM(CASE WHEN m.team_1 = t.id AND m.team_1_goals = m.team_2_goals THEN 1
             WHEN m.team_2 = t.id AND m.team_2_goals = m.team_1_goals THEN 1 ELSE 0 END) AS draws,
    SUM(CASE WHEN m.team_1 = t.id AND m.team_1_goals > m.team_2_goals THEN 3
             WHEN m.team_2 = t.id AND m.team_2_goals > m.team_1_goals THEN 3
             WHEN (m.team_1 = t.id OR m.team_2 = t.id) AND m.team_1_goals = m.team_2_goals THEN 1 ELSE 0 END) AS points
FROM teams t
LEFT JOIN matches m ON t.id = m.team_1 OR t.id = m.team_2
GROUP BY t.id, t.name
ORDER BY points DESC;