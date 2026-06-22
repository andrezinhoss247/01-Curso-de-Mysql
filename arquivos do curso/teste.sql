CREATE DATABASE agenda              -- 1. Cria banco de dados
DEFAULT CHARACTER SET utf8mb4            -- 2. Padrao universal suporta quase todas as linguas
DEFAULT COLLATE utf8mb4_unicode_ci;      -- 3. Ignora maiúsculas/minúsculas nas buscas (A = a)

#Usando banco de dados antes de criar as tabelas
USE agenda;

# Criando uma tabela
CREATE TABLE Cliente 
( 
 idCliente INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(30) NOT NULL,  
 sobrenome VARCHAR(40) NOT NULL
); 

CREATE TABLE Agendamento 
( 
 idAgendamento INT PRIMARY KEY AUTO_INCREMENT,  
 data DATE TIME,  
 servico VARCHAR(30) NOT NULL,  
 nomeDoAtendente VARCHAR(30) NOT NULL 
); 

CREATE TABLE Solicita 
( 
 idCliente INT,  
 idAgendamento INT,  
 dataDaSolicitacao DATE AUTO_INCREMENT,  
 
 PRIMARY KEY (idCliente, idAgendamento),
 FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
 FOREIGN KEY (idAgendamento) REFERENCES Agendamento (idAgendamento)
);


DROP DATABASE agenda