-- database: bancoexercicios.sqlite


-- Exercício 1: Insira um curso com id=1, nome='HTML', aulas=10.
CREATE TABLE cursos(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    aulas INTEGER DEFAULT 0, -- número de aulas, padrão
    ativo INTEGER DEFAULT 1 -- 1 = ativo, 0 = inativo
);


INSERT INTO cursos (id, nome, aulas, ativo)
VALUES (1, 'HTML', 10, 1 );


-- Exercício 2: Insira um curso com id=2, nome='CSS', sem especificar aulas (deve usar o padrão 0).
INSERT INTO cursos(id, nome)
VALUES(2, 'CSS');

-- Exercício 3: Selecione todos os dados da tabela cursos.
SELECT * FROM cursos;

-- Exercício 4: Tente inserir um curso com id=1 novamente (id duplicado). O que acontece? (apenas observe)
-- Dá erro, porque o ID deve ser único, ao repeti-lo, é impossível.

-- Exercício 5: Insira um curso com id=3, nome='JavaScript', aulas=15, ativo=1.
INSERT INTO cursos(id, nome, aulas, ativo)
VALUES(3, 'JavaScript', 15, 1);

-- Exercício 6: Insira um curso com id=4, nome='Python', usando aspas duplas nos identificadores
INSERT INTO cursos("id", "nome")
VALUES(4, 'Python');

-- Exercício 7: Selecione todos os cursos novamente.
SELECT * FROM cursos;

-- Exercício 8: Insira múltiplos cursos de uma vez: (5, 'React', 20), (6, 'Vue', 18), (7, 'Angular', 22).
INSERT INTO cursos(id, nome, aulas)
VALUES
(5, 'React', 20),
(6, 'Vue', 18),
(7, 'Angular', 22);

-- Exercício 9: Tente inserir um curso sem informar o nome (campo NOT NULL). Qual o erro?
-- Ocorre um erro, isso porque o nome deve ser preenchido, conforme programado (TEXT NOT NULL), então o código não acontece

-- Exercício 10: Insira um curso com id=8, nome='SQL', aulas=12, e use identação adequada.
INSERT INTO cursos(id, nome, aulas)
VALUES(8, 'SQL', 12);

-- Exercício 11: Selecione apenas a coluna 'nome' de todos os cursos.
SELECT nome FROM cursos;

-- Exercício 12: Insira um curso com id=9, nome='NoSQL', e deixe aulas com valor padrão.
INSERT INTO cursos(id, nome)
VALUES(9, 'NoSQL');

-- Exercício 13: Insira um curso com id=10, nome='TypeScript', aulas=16, ativo=0
INSERT INTO cursos(id, nome, aulas, ativo)
VALUES(10, 'TypeScript', 16, 0);

-- Exercício 14: Selecione todos os cursos que estão ativos (ativo = 1). (Desafio: use WHERE, mesmo não explicado)
SELECT * FROM cursos WHERE ativo==1;

-- Exercício 15: Insira um curso com id=11, nome='PHP', utilizando aspas simples para o nome.
INSERT INTO cursos(id, nome)
VALUES(11, 'PHP')

-- Exercício 16: Insira dois cursos de uma vez: (12, 'C#', 20) e (13, 'Ruby', 15).
INSERT INTO cursos(id, nome, aulas)
VALUES
(12, 'C#', 20),
(13, 'Ruby', 15);


-- Exercício 17: Selecione todos os cursos com mais de 15 aulas.
SELECT * FROM cursos WHERE aulas>15;

-- Exercício 18: Tente inserir um curso com id nulo. O que acontece?
-- A ação não é finalizada! O ID deve ser preenchido

-- Exercício 19: Insira um curso com id=14, nome='Kotlin', aulas=18, ativo=1, usando aspas duplas em tudo.
INSERT INTO cursos(id, nome, aulas, ativo)
VALUES(14, 'Kotlin', 18, 1);


