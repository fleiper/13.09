CREATE database banco_exemplo1E;

#CRIANDO TABELA PRODUTOS

CREATE TABLE produtos(
	cod_produto integer primary key,
	nome varchar (30),
    preco numeric (10, 2)
);

CREATE TABLE pedidos(
	cod_pedido integer primary key,
    cod_produto integer,
    quantidade integer,
    foreign key(cod_produto) references produtos (cod_produto)
);