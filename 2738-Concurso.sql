/* 
EXERCÍCIO 2738 - Concurso


A Universidade Tecnológica de Marte está com seu concurso aberto para Pesquisadores. Porém o computador que processava os dados dos candidatos estragou. Você deve mostrar a lista dos candidatos, contendo o nome do candidato e a sua pontuação final (com duas casas decimais após a vírgula). Lembre-se de mostrar a lista ordenada pela pontuação do candidato (maior pontuação no topo da lista).

A pontuação do candidato é o resultado da média ponderada descrita abaixo:

Avg=((math∗2)+(specific∗3)+(project_plan∗5))10

*/

-- MONTAGEM DAS TABELAS:

CREATE TABLE candidate (
    id integer PRIMARY KEY,
    name varchar(255)
);

CREATE TABLE score (
    candidate_id integer REFERENCES candidate(id),
    math numeric,
    specific numeric,
    project_plan numeric
);

-- INSERÇÃO DOS DADOS


INSERT INTO candidate (id, name)
VALUES
(1, 'Michael P Cannon'),
(2, 'Barbra J Cable'),
(3, 'Ronald D Jones'),
(4, 'Timothy K Fitzsimmons'),
(5, 'Ivory B Morrison'),
(6, 'Sheila R Denis'),
(7, 'Edward C Durgan'),
(8, 'William K Spencer'),
(9, 'Donna D Pursley'),
(10, 'Ann C Davis');


INSERT INTO score (candidate_id, math, specific, project_plan)
VALUES
(1, 76, 58, 21),
(2, 4, 5, 22),
(3, 15, 59, 12),
(4, 41, 42, 99),
(5, 22, 90, 9),
(6, 82, 77, 15),
(7, 82, 99, 56),
(8, 11, 4, 22),
(9, 16, 29, 94),
(10, 1, 7, 59);


-- RESPOSTA
select candidate.name, 
ROUND((score.math*2 + score.specific*3 + score.project_plan*5)/10,2) as avg 
from candidate 
    join 
        score 
        on candidate.id = score.candidate_id
        order by avg DESC; 