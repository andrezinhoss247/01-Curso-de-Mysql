-- Active: 1781838802528@@127.0.0.1@3306
CREATE DATABASE agendamento                  -- 1. Cria banco de dados
DEFAULT CHARACTER SET utf8mb4            -- 2. Padrao universal suporta quase todas as linguas
DEFAULT COLLATE utf8mb4_unicode_ci;      -- 3. Ignora maiúsculas/minúsculas nas buscas (A = a)

#Usando banco de dados antes de criar as tabelas
USE agendamento;

# Criando uma tabela
CREATE TABLE Cliente 
( 
 idcliente INT PRIMARY KEY AUTO_INCREMENT,  
 nome VARCHAR(30) NOT NULL,  
 sobrenome VARCHAR(40) NOT NULL
); 




CREATE TABLE Servico 
( 
 idservico INT PRIMARY KEY AUTO_INCREMENT,  
 tiposervico VARCHAR(30) NOT NULL,  
 valor int NOT NULL 
); 

CREATE TABLE Agenda 
( 
 idcliente INT,  
 idservico INT,  
 datadasolicitacao DATETIME DEFAULT CURRENT_TIMESTAMP,
 datadoservico DATETIME,
 
 PRIMARY KEY (idcliente, idservico),
 FOREIGN KEY (idcliente) REFERENCES Cliente (idcliente),
 FOREIGN KEY (idservico) REFERENCES Servico (idservico)
);

SELECT * FROM Servico;
SELECT * FROM Agenda;

DROP DATABASE agenda


INSERT INTO Cliente VALUES
(DEFAULT,'Andre', 'Silva'),
(DEFAULT,'Daiane', 'Santos'),
(DEFAULT,'Mabelle', 'Souza');

INSERT INTO Servico VALUES
(DEFAULT,'Corte', '35'),
(DEFAULT,'Barba', '20'),
(DEFAULT,'Sobrancelha', '10');

INSERT INTO Agenda VALUES
('1','2',DEFAULT,'2026-06-24 14:00:18'),
('3','1',DEFAULT,'2026-06-24 15:00:18'),
('2','3',DEFAULT,'2026-06-24 16:00:18');