-- Script com consultas SQL para o banco de dados da biblioteca
-- Execute estas consultas após ter configurado o banco de dados com 01_library_setup.sql

-- Garante que estamos usando o banco de dados correto.
USE biblioteca_db;

-- 1. Listar todos os livros com seus autores
-- Usa INNER JOIN para combinar informações de Livros e Autores onde há correspondência.
SELECT
    L.titulo,                    -- Seleciona o título do livro
    A.nome AS Nome_Autor,        -- Seleciona o nome do autor e o renomeia para 'Nome_Autor'
    L.ano_publicacao,            -- Seleciona o ano de publicação
    L.genero                     -- Seleciona o gênero do livro
FROM
    Livros L                     -- 'L' é um alias para a tabela Livros
INNER JOIN
    Autores A ON L.autor_id = A.autor_id -- Conecta Livros e Autores pela chave autor_id
ORDER BY
    L.titulo;                    -- Ordena os resultados pelo título do livro

-- 2. Encontrar todos os livros de um autor específico (ex: Machado de Assis)
-- Filtra os resultados para mostrar apenas os livros de 'Machado de Assis'.
SELECT
    L.titulo,
    L.ano_publicacao,
    L.genero
FROM
    Livros L
INNER JOIN
    Autores A ON L.autor_id = A.autor_id
WHERE
    A.nome = 'Machado de Assis'  -- Condição para filtrar pelo nome do autor
ORDER BY
    L.ano_publicacao;

-- 3. Listar autores por nacionalidade e contar quantos há em cada uma
-- Agrupa os autores pela nacionalidade e conta o número de autores em cada grupo.
SELECT
    nacionalidade,
    COUNT(autor_id) AS Total_Autores -- Conta o número de IDs de autor em cada nacionalidade
FROM
    Autores
GROUP BY
    nacionalidade                -- Agrupa os resultados pela nacionalidade
ORDER BY
    Total_Autores DESC;          -- Ordena pelo total de autores em ordem decrescente

-- 4. Encontrar livros publicados antes de um ano específico (ex: antes de 1900)
-- Filtra livros com base no ano de publicação.
SELECT
    titulo,
    ano_publicacao,
    genero
FROM
    Livros
WHERE
    ano_publicacao < 1900        -- Condição para selecionar livros publicados antes de 1900
ORDER BY
    ano_publicacao DESC;

-- 5. Contar o número total de livros por gênero
-- Agrupa os livros pelo gênero e conta quantos há em cada um.
SELECT
    genero,
    COUNT(livro_id) AS Total_Livros -- Conta o número de IDs de livro em cada gênero
FROM
    Livros
GROUP BY
    genero                       -- Agrupa os resultados pelo gênero
ORDER BY
    Total_Livros DESC;

-- 6. Listar todos os autores e, se tiverem livros, seus livros (demonstra LEFT JOIN)
-- O LEFT JOIN inclui todos os autores, mesmo aqueles que não têm livros registrados.
SELECT
    A.nome AS Nome_Autor,
    L.titulo                     -- O título será NULL se o autor não tiver livros.
FROM
    Autores A
LEFT JOIN
    Livros L ON A.autor_id = L.autor_id -- Inclui todos os autores do lado esquerdo (Autores)
ORDER BY
    A.nome, L.titulo;            -- Ordena por nome do autor e depois por título do livro

-- Opcional: Exemplos de UPDATE e DELETE (descomente para usar)

-- Exemplo de atualização: Mudar o gênero de um livro
-- UPDATE Livros
-- SET genero = 'Romance Clássico'
-- WHERE titulo = 'Dom Casmurro';

-- Exemplo de exclusão: Remover um livro
-- DELETE FROM Livros
-- WHERE titulo = 'A Hora da Estrela';
