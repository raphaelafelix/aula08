-- database: 2_0_banco.sqlite

-- CREATE TABLE

-- Exemplo 1 - Tabela simples sem tipos definidos
CREATE TABLE exemplo1(id, nome, idade);

-- Exemplo 2 - Tabela com tipos e restrições
CREATE TABLE exemplo2 (
    id INTEGER PRIMARY KEY, -- chave primária
    nome TEXT NOT NULL, -- texto obrigatório
    email TEXT UNIQUE, -- texto único (não pode repetir)
    salario REAL, -- número real (pode ser nulo)
    ativo INTEGER DEFAULT 1
);

-- ===================================================================
-- DROP TABLE - Remove completamente uma tabela e todos os seus dados
DROP TABLE IF EXISTS exemplo1;

CREATE TABLE alunos(
    matricula INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT UNIQUE,
    datanascimento TEXT,
    ativo INTEGER DEFAULT 1
);

-- ========================
-- PRAGMA
-- ========================
-- Exibir a estrutura da tabela

PRAGMA table_info('alunos');

DROP TABLE IF EXISTS alunos;
DROP TABLE IF EXISTS exemplo2;
