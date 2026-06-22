# Adicionando chave estrangeira

DESC gafanhotos;
ALTER TABLE gafanhotos 
ADD COLUMN cursopreferido INT;


ALTER TABLE gafanhotos
ADD FOREIGN KEY (cursopreferido) REFERENCES cursos (idcursos);

SELECT * FROM gafanhotos;


UPDATE gafanhotos SET cursopreferido = '5' WHERE id = '2';