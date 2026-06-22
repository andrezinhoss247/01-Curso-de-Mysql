# Result set = resultado de uma instrução
SELECT * FROM cursos;

# Inserindo dados na tabela cursos
INSERT INTO cursos VALUES
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Logica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','40','37','2010'),
('4','PGP','Curso de PHP para iniciantes','40','37','2000'),
('5','Jarva','Introdução','40','37','2016'),
('6','MySQL','Banco de Dados Relacional','40','30','2018'),
('7','C#','Programação Orientada a Objetos','60','45','2020'),
('8','Python','Automação de Tarefas','30','25','2021'),
('9','CSS3','Estilização Avançada com Flexbox e Grid','40','35','2019'),
('10','JavaScript','Programação Assíncrona e APIs','60','50','2022'),
('11','Git e GitHub','Controle de Versão de Código','20','15','2017'),
('12','Node.js','Desenvolvimento Backend Escalável','50','40','2023'),
('13','React','Criação de Interfaces Dinâmicas','40','35','2022'),
('14','Docker','Criando e Gerenciando Containers','30','25','2021'),
('15','Flutter','Desenvolvimento Mobile Multiplataforma','60','50','2024'),
('16','Excel Avançado','Dashboards e Análise de Dados','40','32','2015'),
('17','Linux Linux','Comandos de Terminal e Shell Script','20','18','2013'),
('18','Scrum','Metodologias Ágeis para Equipes','16','12','2016'),
('19','Cybersecurity','Fundamentos de Segurança da Informação','40','30','2019'),
('20','Linguagem R','Análise Estatística de Dados','30','24','2018'),
('21','TypeScript','JavaScript com Tipagem Estática','40','35','2023'),
('22','Kotlin','Desenvolvimento Android Nativo','50','42','2022'),
('23','Vue.js','Construção de Single Page Applications','30','25','2021'),
('24','Inteligência Artificial','Introdução ao Machine Learning','60','55','2024'),
('25','Figma','Design de Interface e Prototipagem','40','30','2020'),
('26','Swift','Desenvolvimento iOS Nativo','50','45','2023'),
('27','WordPress','Criação de Sites e Blogs','20','16','2015'),
('28','MongoDB','Banco de Dados NoSQL Orientado a Documentos','30','25','2019'),
('29','Kubernetes','Orquestração de Containers em Larga Escala','40','35','2025'),
('30','COBOL','Manutenção de Sistemas Legados','80','70','1999');


# Atualize tabela cursos e configure nome para HTML5 onde idcursos = 1
UPDATE cursos SET nome = 'HTML5' WHERE idcursos = '1';

UPDATE cursos SET nome = 'PHP' WHERE idcursos = '4';

# Usando limitador de linha para atualizar OBS pode ser especificado mais de uma linha
UPDATE cursos SET nome = 'JAVA', carga = '40' WHERE idcursos = '5' LIMIT 1;


# Atualizando mais de uma linha onde os dados são repetidos
UPDATE cursos SET ano = '2026' WHERE ano = '2014';

# Apagando registro da tabela
DELETE FROM cursos WHERE  idcursos = '6';

# Para apagar mais de uma linha da tabela só informar os dados que não seja id e seja repedido
DELETE FROM cursos WHERE  ano = '2005';


# Removendo todas os registro da tabela

TRUNCATE TABLE cursos;
