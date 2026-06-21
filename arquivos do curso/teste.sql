CREATE DATABASE cadastro1              -- 1. Cria banco de dados
DEFAULT CHARACTER SET utf8mb4            -- 2. Padrao universal suporta quase todas as linguas
DEFAULT COLLATE utf8mb4_unicode_ci;      -- 3. Ignora maiúsculas/minúsculas nas buscas (A = a)

#Usando banco de dados antes de criar as tabelas
USE cadastro1;

# Criando uma tabela
CREATE TABLE pessoas ( 

    identificador INT NOT NULL AUTO_INCREMENT,
    nome CHARACTER(20) NOT NULL, 
    sobrenome CHARACTER(30) NOT NULL,
    email CHARACTER(50),
    whatssap DECIMAL(5,2),
    dataCadastro DATE,

    PRIMARY KEY (identificador)

) DEFAULT CHARSET = utf8;

CREATE TABLE atendente ( 

    identificadorPessoas INT NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    funcao VARCHAR(30),
    PRIMARY KEY (cpf),
    FOREIGN KEY  (identificadorPessoas) REFERENCES pessoas(identificador)

) DEFAULT CHARSET = utf8;

INSERT INTO pessoas VALUES 
('Andre','Silva de Souza','andrezinhoss247@gmail.com',)
