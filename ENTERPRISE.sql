Create database ENTERPRISE_1e;

#Este arquivo foi criado pelo 2°A

CREATE TABLE DEPARTAMENTO(
	Cod_departamento integer primary key,
    Cod_nome varchar (50)
);

CREATE TABLE FUNCIONÁRIO(
	Cod_func integer primary key,
    Cod_departamento integer,
    nome varchar(100),
    nascimento date,
    sálario numeric (10, 2),
    foreign key (Cod_departamento) references DEPARTAMENTO (Cod_departamento)
);

CREATE TABLE DEPENDENTE (
	Cod_dependente integer primary key,
    Cod_func integer,
    Depertamento_nome varchar (100),
    foreign key (Cod_func) references FUNCIONÁRIO (Cod_func)
);