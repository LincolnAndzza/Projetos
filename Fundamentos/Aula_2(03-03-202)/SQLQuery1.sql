-- criando tabela de clientes2 com chave composta
-- Exercicio 1
create table clientes4
(
id		int			not null,
nome	varchar(40) not null,
fone	varchar(18)		null
primary key(id,nome)
);

-- Exercicio 2
-- Inserindo dois dados na tabela clientes
insert into clientes4 values (1,'Marco','99262-0000');
insert into clientes4 values (2,'Maria','99272-1010');

-- Exercicio 3
-- verificando os dados cadastrados
select * from clientes4;

-- Exercicio 4
-- inserindo o drop table na tabela
drop table clientes4;

-- Exercicio 5
-- inserindo dados no campos con null
insert into clientes4 values (1,'Marco',null);
insert into clientes4 values (1,'Marco','99262-0000');

-- inserindo a tabela novamente
create table clientes4
(
id		int			not null,
nome	varchar(40) not null,
fone	varchar(18)		null
primary key(id,nome)
);

-- Exercicio 6
-- inserindo com todos os campos preenchidos
insert into clientes4 values (1,'Marco','99262-0000');

-- Exercicio 7
-- inserindo o campo com null
insert into clientes4 values (2,'Marco',null);

-- Exercicio 8
-- forçando o erro com chave primaria
insert into clientes4 values (1,'Marco','99262-0000');
insert into clientes4 values (1,'Marco','99262-0000');

-- Exercicio 9
-- forçando o erro com chave primaria composta
insert into clientes4 values (1,'Marco','99262-0000','Rkss');

-- Exercicio 10
-- inserindo com todos os campos preenchidos
insert into clientes4 values (1,'Marco','99262-0000');

-- Exercicio 11
-- inserindo o campo com null
insert into clientes4 values (3,'Marco',null);

-- Exercicio 12
-- verificando os dados cadastrados
select * from clientes4;

-- Exercicio 13
-- inserindo o drop table na tabela 5
drop table clientes4;

-- Exercicio 14
-- modificando o campo codcli
create table clientes4
(
id_cli	int			identity,
nome	varchar(40) not null,
fone	varchar(18)		null
primary key(id_cli,nome)
);


-- Exercicio 15
-- inserindo um registro
insert into clientes4 values ('Marco','99262-0000');

-- Exercicio 16
-- inserindo um registro com null
insert into clientes4 values ('Marcela',null);

-- Exercicio 17
-- forçando o erro com chave primaria composta
insert into clientes4 values (1,'Marco','99262-0000','Rkss');

-- Exercicio 18
-- inserindo com todos os campos preenchidos
insert into clientes4 values ('Marta','99262-0000');

-- Exercicio 19
-- inserindo um registro com null
insert into clientes4 values ('Maria',null);

-- Exercicio 20
-- verificando os dados cadastrados
select * from clientes4;


