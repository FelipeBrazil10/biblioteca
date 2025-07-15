# # Projeto: Gerenciamento Básico de Biblioteca com SQL

Este é um projeto simples, porém fundamental, para demonstrar habilidades básicas em SQL. Ele cria e gerencia um banco de dados para uma biblioteca, registrando livros e seus autores, e realizando consultas essenciais para extrair informações.

## 🚀 Habilidades SQL Demonstradas

* **Criação de Banco de Dados e Tabelas:** Uso de `CREATE DATABASE` e `CREATE TABLE` para definir a estrutura do banco de dados.
* **Definição de Tipos de Dados e Restrições:** Aplicação de `PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL` para garantir a integridade dos dados.
* **Inserção de Dados:** População de tabelas com dados de exemplo usando `INSERT INTO`.
* **Consultas Básicas:** Extração e filtragem de dados com `SELECT`, `FROM`, `WHERE`, `ORDER BY`.
* **Junções (JOINs):** Conexão de informações de múltiplas tabelas (`INNER JOIN` e `LEFT JOIN`) para obter um panorama completo.
* **Agregação de Dados:** Uso de `COUNT` e `GROUP BY` para resumir e analisar dados.

## 📊 Estrutura do Banco de Dados

O banco de dados `biblioteca_db` é composto por duas tabelas principais, que se relacionam para armazenar informações de livros e seus respectivos autores:

* **`Autores`**: Contém informações sobre os autores.
    * `autor_id` (PK): Identificador único do autor.
    * `nome`: Nome completo do autor (obrigatório).
    * `nacionalidade`: Nacionalidade do autor.

* **`Livros`**: Contém detalhes sobre os livros.
    * `livro_id` (PK): Identificador único do livro.
    * `titulo`: Título do livro (obrigatório).
    * `autor_id` (FK): Chave estrangeira que referencia o `autor_id` na tabela `Autores`.
    * `ano_publicacao`: Ano em que o livro foi publicado.
    * `genero`: Gênero literário do livro.

## ⚙️ Como Executar o Projeto

Para rodar este projeto, você precisará de um **Sistema de Gerenciamento de Banco de Dados Relacional (SGBD)**. As instruções são focadas em **MySQL**, mas o código SQL é amplamente compatível com outros SGBDs (como PostgreSQL, SQLite, etc.) com poucas ou nenhuma alteração.

1.  **Pré-requisitos:**
    * Certifique-se de ter o **MySQL Server** instalado e rodando em sua máquina.
    * Você precisará de um cliente MySQL para interagir com o banco de dados (ex: MySQL Workbench, DBeaver, ou o cliente de linha de comando `mysql`).

2.  **Clone o repositório:**
    Abra seu terminal ou prompt de comando e execute:
    ```bash
    git clone [https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git](https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git)
    cd SEU_REPOSITORIO/
    ```
    *(Lembre-se de substituir `SEU_USUARIO` e `SEU_REPOSITORIO` pelos seus dados reais do GitHub).*

3.  **Configure o Banco de Dados e Insira os Dados:**
    * Abra seu cliente MySQL.
    * Execute o conteúdo do arquivo `sql/01_library_setup.sql`. Este script criará o banco de dados `biblioteca_db`, suas tabelas e as preencherá com dados de exemplo.

4.  **Execute as Consultas de Análise:**
    * No seu cliente MySQL, certifique-se de que o banco de dados `biblioteca_db` esteja selecionado (ou adicione `USE biblioteca_db;` no início das suas consultas).
    * Execute as consultas presentes no arquivo `sql/02_library_queries.sql` uma a uma, ou em blocos. Observe os resultados para entender as informações que podem ser extraídas do banco de dados.

## 📚 Exemplos de Consultas

O arquivo `sql/02_library_queries.sql` inclui consultas para demonstrar as operações básicas de SQL:

* Listar todos os livros com os nomes de seus autores.
* Encontrar todos os livros de um autor específico.
* Contar autores por nacionalidade.
* Listar livros publicados antes de um determinado ano.
* Contar o número total de livros por gênero.
* Visualizar todos os autores e seus respectivos livros (incluindo autores que ainda não têm livros registrados), utilizando um `LEFT JOIN`.

## 🤝 Contribuições

Sinta-se à vontade para explorar este projeto, sugerir melhorias, adicionar mais dados, ou criar novas consultas e análises. Pull requests são bem-vindos!

## 📄 Licença

Este projeto está sob a licença MIT. Para mais detalhes, consulte o arquivo `LICENSE` (se você decidir criar um).
