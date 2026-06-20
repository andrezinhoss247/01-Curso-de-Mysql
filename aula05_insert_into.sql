# Inserindo dados na tabela
INSERT INTO pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Andre','1992/04/25','M','75','1.72','');

# Inserindo dados sem adicionar os campos
INSERT INTO pessoas VALUES
(DEFAULT,'Daiane','1991/11/10','F','61','1.60',DEFAULT);

# Seleciona toda tabela pessas e exibi na tela
SELECT * FROM pessoas; 

