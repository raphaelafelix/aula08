-- database: 2_0_banco.sqlite

-- 1- Criação de uma tabela de exemplo

CREATE TABLE cursos(
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    aulas INTEGER DEFAULT 0, -- número de aulas, padrão
    ativo INTEGER DEFAULT 1 -- 1 = ativo, 0 = inativo
);

-- =============================

-- INSERT INTO - Inserindo dados

-- =============================

INSERT INTO cursos (id, nome, aulas, ativo)
VALUES (1, 'HTML', 10, 1 );

-- é possível omitir colunas que aceitam o NULL ou têm DEFAULT:
INSERT INTO cursos(id, nome) VALUES (2, 'CSS');

INSERT INTO cursos(id, nome, aulas)
VALUES
(3, 'node.js', 18),
(4, 'Express', 18),
(5, 'MongoDB', 18);
-- -- =============================
-- SELECT - Consultando dados
-- -- =============================

-- O asterisco (*) faz com que selecione toda a tabela
SELECT * FROM cursos;

SELECT nome FROM cursos;