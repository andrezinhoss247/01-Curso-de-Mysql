# Apagando um banco de dados
DROP DATABASE curso_sql;

# Apagando tabela
DROP TABLE pessoas

# Criando um banco de dados adicionando constraints
# 
CREATE DATABASE cadastro              -- 1. Cria banco de dados
DEFAULT CHARACTER SET utf8            -- 2. Padrao universal suporta quase todas as linguas
DEFAULT COLLATE utf8_general_ci;      -- 3. Ignora maiúsculas/minúsculas nas buscas (A = a)

#Usando banco de dados antes de criar as tabelas
USE cadastro;

# Criando uma tabela
CREATE TABLE pessoas ( 

    id INT NOT NULL AUTO_INCREMENT,
    nome CHARACTER(50) not null , 
    nascimento DATE,
    sexo ENUM('M','F'),
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id)




) DEFAULT CHARSET = utf8;

