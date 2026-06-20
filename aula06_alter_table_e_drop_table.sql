# Alterando estrutura da tabela

# Adicionando nova coluna
ALTER TABLE pessoas ADD COLUMN profissao varchar(20);

# Apagando uma coluna
ALTER TABLE pessoas DROP COLUMN profissao;


# Adicionando nova coluna depois do campo 'after nome' da tabela
ALTER TABLE pessoas ADD COLUMN profissao varchar(20) AFTER nome;


# Adicionando nova coluna no inicio da tabela 
ALTER TABLE pessoas ADD COLUMN codigo int(13) FIRST;


# Alterando constrainst de um campo
ALTER TABLE pessoas MODIFY COLUMN codigo VARCHAR(30);


# Alterando o nome da coluna
ALTER TABLE pessoas CHANGE COLUMN codigo identidade VARCHAR(30);


# Alterando nome da tabela
ALTER TABLE pessoas RENAME TO gafanhotos;


# Criando tabela e verificando  se não existi uma com mesmo nome PARA PROTEGER
CREATE TABLE IF NOT EXISTS cursos (

    nome VARCHAR(30) NOT NULL UNIQUE, # 
    descricao TEXT,
    carga INT UNSIGNED, 
    totalaulas INT,
    ano YEAR DEFAULT '2016'

) DEFAULT CHARSET= utf8mb4


ALTER TABLE cursos ADD COLUMN idcursos INT PRIMARY KEY first