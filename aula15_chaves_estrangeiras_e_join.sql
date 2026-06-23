# Adicionando chave estrangeira

DESC gafanhotos;
ALTER TABLE gafanhotos 
ADD COLUMN cursopreferido INT;


ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido) REFERENCES cursos (idcursos);

SELECT * FROM gafanhotos;


UPDATE gafanhotos SET cursopreferido = '5' WHERE id = '2';

# Selecionado coluna das duas tabelas com inner join
SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos INNER JOIN cursos
ON cursos.idcursos = gafanhotos.cursopreferido
ORDER BY cursos.ano;


# Adicionado apelido para as tabelas no select
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g  INNER JOIN cursos as c
ON c.idcursos = g.cursopreferido
ORDER BY c.ano;


# Selecionando todos da tabela gafanhotos mesmo que nao tem curso preferido, OBS: LEFT 
SELECT g.nome, c.nome, c.ano 
FROM gafanhotos as g  LEFT OUTER JOIN cursos as c
ON c.idcursos = g.cursopreferido
ORDER BY c.ano;