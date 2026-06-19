# Tipos primitivos 

# Numeros: 
#   inteiros  -> TinyInt, SmallInt, Int, MediumInt, BigInt
#   reais     -> Decimal, Float, Double, Real
#   logicos   -> Bit, Boolean, 

# Data/tempo  -> Date, DateTime, TimeStamp, Time, Year

# Literais:
#   Caractere -> Char, Varchar
#   Texto     -> TinyText, Text, MediumText, LongText
#   Binário   -> TinyBlob, Blob, MediumBlob, LoongBlob
#   Coleções  -> Enun, Set

# Espacial    -> Geometry, Point, Polygon, MultiPolygon


# Criando banco de dados
CREATE DATABASE cadastro;

# Usando banco de dados
USE cadastro;

# Criando tabelas
CREATE TABLE pessoas(

    nome VARCHAR(50),
    idade INT(3),
    sexo CHAR(1),
    peso FLOAT,
    altura FLOAT,
    nacinalidade VARCHAR(50)
);

# Descrevendo uma tablea
DESCRIBE pessoas;

# Mostrando os bancos de dados
SHOW DATABASES;

# Mostrando as tabelas
SHOW TABLES;
