# Selecionando toda tabela cursos
SELECT * FROM cursos;

# Ordena de acordo com a coluna indicada
SELECT * FROM cursos ORDER BY ano;

# Ordena de acordo coluna de forma descrecente 
SELECT * FROM cursos ORDER BY ano DESC;

# Ordena de acordo coluna de forma crescente
SELECT * FROM cursos ORDER BY ano ASC;


# Selecionando e filtrando colunas 
SELECT idcursos, nome, carga  FROM cursos ORDER BY carga DESC;

# Selecionando linhas
SELECT * FROM cursos WHERE ano = '2016' ORDER BY nome;


# Selecionando linhas com condiçoes 
SELECT * FROM cursos 
WHERE ano > '2016' AND ano < 2021 
ORDER BY nome;


# Selecionando linhas com condiçoes 
SELECT ano, carga FROM cursos 
WHERE ano > '2016' OR carga < 50
ORDER BY ano;


# Selecionando ano entre(between) 2014 e(and) 2016 
SELECT * FROM cursos 
WHERE  ano BETWEEN '2014' AND '2021'
ORDER BY nome;



# Selecionando ano em (2025, 2024, 2023)
# Exibi somente esses anos
SELECT * FROM cursos 
WHERE  ano IN (2025, 2024, 2023)
ORDER BY nome;