-- inserindo a tabela de produtos
create table produtos_aula1
(
id				int				identity,
nome			varchar(30)			null,
prod			varchar(30)		not null,
quantde			int				not null,
saldoinicial	varchar(30)			null,
forncedor		varchar(30)		not null
);

-- inserindo dados na tabela de produtos
insert into produtos_aula1 values ('Ana','Relpio',200,'1.000','Asus');
insert into produtos_aula1 values ('Marciana','Caneta',100,'5.000','Samsung');
insert into produtos_aula1 values ('Marciano','Adaptador',90,'10.000','Dell');

-- inserindo dados de redundância na tabela produtos
insert into produtos_aula1 values ('Ana','Relpio',200,'1.000','Apple');

-- verificando dados cadastrados
select * from produtos_aula1;


create table produtos1_aula1
(
codgo			int				identity,
nome			varchar(30)		not null,
quantde			int				not null,
saldoinicial	varchar(30)			null
);
-- inserindo dados na tabela de produtos
insert into produtos1_aula1 values ('Marios',20,'10.000');
insert into produtos1_aula1 values ('Oscares',40,'15.000');
insert into produtos1_aula1 values ('Lili',20,'20.000');

-- inserindo dados de redundância na tabela produtos
insert into produtos1_aula1 values ('Marios',20,'10.000');

-- verificando dados cadastrados
select * from produtos1_aula1;


create table produtos2_aula1
(
id				int				identity,
prod			varchar(30)		not null,
forncedor		varchar(30)			null,
dtnasc			varchar(30)		not null
);

-- inserindo dados na tabela de produtos
insert into produtos2_aula1 values ('Relpio','Bivc','12/12/1908');
insert into produtos2_aula1 values ('Lapis','´Pro','12/04/1909');
insert into produtos2_aula1 values ('Mpouse','Bic','12/13/1910');

-- inserindo dados de redundância na tabela produtos
insert into produtos2_aula1 values ('Mpouse','Pro','12/12/1908');

-- verificando dados cadastrados
select * from produtos2_aula1;


create table produtos3_aula1
(
id				int				identity,
nome			varchar(30)		not null,
quantde			int					null,
saldoinicial	varchar(30)		not null
);

-- inserindo dados na tabela de produtos
insert into produtos3_aula1 values ('Brany',150,'20.000');
insert into produtos3_aula1 values ('Bianca',20,'30.000');
insert into produtos3_aula1 values ('Bre',30,'40.000');

-- inserindo dados de redundância na tabela produtos
insert into produtos3_aula1 values ('Bre',30,'40.000');

-- verificando dados cadastrados
select * from produtos3_aula1;

