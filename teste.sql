#create database empresa_1e;
#use empresa_1e;

create table cliente(
codigo integer,
nome varchar(100),
endereco varchar(100)
);
describe cliente;
drop table cliente;

CREATE TABLE produto_1e(
cod integer,
descricao varchar(40),
valor float);

describe produto_1e;
drop table produto_1e;

Create table produtos(
cod_prod integer PRIMARY KEY,
nome varchar(40),
preco numeric(10,2)
);

CREATE TABLE exemplo (
cod integer,
item integer,
cod_prod integer,
PRIMARY KEY (cod,item)
);

