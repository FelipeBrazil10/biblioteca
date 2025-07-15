-- Script para configurar o banco de dados e as tabelas da biblioteca

-- 1. Criação do Banco de Dados
-- Cria o banco de dados 'biblioteca_db' se ele ainda não existir.
CREATE DATABASE IF NOT EXISTS biblioteca_db;

-- Seleciona o banco de dados 'biblioteca_db' para que as operações subsequentes sejam aplicadas nele.
USE biblioteca_db;

-- 2. Criação da Tabela de Autores
-- Esta tabela armazena informações sobre os autores.
CREATE TABLE IF NOT EXISTS Autores (
    autor_id INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária, auto-incrementa para cada novo autor.
    nome VARCHAR(100) NOT NULL,              -- Nome do autor, não pode ser nulo.
    nacionalidade VARCHAR(50)                -- Nacionalidade do autor.
);

-- 3. Criação da Tabela de Livros
-- Esta tabela armazena informações sobre os livros e se relaciona com a tabela Autores.
CREATE TABLE IF NOT EXISTS Livros (
    livro_id INT PRIMARY KEY AUTO_INCREMENT, -- Chave primária, auto-incrementa para cada novo livro.
    titulo VARCHAR(255) NOT NULL,            -- Título do livro, não pode ser nulo.
    autor_id INT NOT NULL,                   -- Chave estrangeira, referencia o autor do livro.
    ano_publicacao INT,                      -- Ano de publicação do livro.
    genero VARCHAR(50),                      -- Gênero literário do livro.
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id) -- Define autor_id como chave estrangeira, ligando à tabela Autores.
);

-- 4. Inserção de Dados de Exemplo

-- Inserir dados na tabela Autores
INSERT INTO Autores (nome, nacionalidade) VALUES
('Machado de Assis', 'Brasileira'),
('Jane Austen', 'Britânica'),
('George Orwell', 'Britânico'),
('Gabriel Garcia Marquez', 'Colombiano'),
('Clarice Lispector', 'Brasileira');

-- Inserir dados na tabela Livros
-- O autor_id deve corresponder aos IDs gerados na tabela Autores.
-- Por exemplo, 'Dom Casmurro' e 'Memórias Póstumas de Brás Cubas' têm autor_id = 1 (Machado de Assis).
INSERT INTO Livros (titulo, autor_id, ano_publicacao, genero) VALUES
('Dom Casmurro', 1, 1899, 'Romance'),
('Memórias Póstumas de Brás Cubas', 1, 1881, 'Romance'),
('Orgulho e Preconceito', 2, 1813, 'Romance'),
('1984', 3, 1949, 'Distopia'),
('A Revolução dos Bichos', 3, 1945, 'Alegoria Política'),
('Cem Anos de Solidão', 4, 1967, 'Realismo Mágico'),
('A Hora da Estrela', 5, 1977, 'Ficção');

-- Verificando os dados inseridos (opcional, para testes rápidos após a execução)
SELECT * FROM Autores;
SELECT * FROM Livros;
