-- criando tabela empresa com UNIQUE e CHAVE PRIMARIA
-- TABELA PAI
create table EMPRESADELL
(
ender_EMPRESADELL	int			not null,
nome				varchar(30)	not null,
cidade				varchar(30)	not null,
cep					varchar(30)	unique,
telef				varchar(30)		null,
estado				varchar(10)	not null,	
filial				varchar(30)	not null
primary key(ender_EMPRESADELL)
);

-- criando tabela loja com UNIQUE e CHAVE ESTRANGEIRA
-- TABELA FILHO
create table EMPREGADO
(
ender_EMPRESADELL	int			not null,
ender_EMPREGADO		int			not null,
nome				varchar(30)	not null,
sobrenome			varchar(30)	not null,
cep					varchar(30)	unique,
telefone			varchar(30)		null,
empresa				varchar(30)		null,
cidade				varchar(30)	not null
primary key(ender_EMPREGADO)
foreign key(ender_EMPRESADELL) references EMPRESADELL (ender_EMPRESADELL)
);

-- inserindo dados na tabela EMPRESADELL
-- TABELA PAI
insert into EMPRESADELL values (1,'Anieles','Bauru','11055-230','99129-1349','SP','DellNote');
insert into EMPRESADELL values (2,'Niliris','Jau','13481-840','99238-4568','BH','DellCia');

-- verificando dados cadastrados
select * from EMPRESADELL;


-- inserindo dados na tabela EMPREGADO
-- TABELA FILHO
insert into EMPREGADO values (1,1,'Merlin','MerlinYoki','14412-200','99345-5432','Dell','Assis');
insert into EMPREGADO values (1,2,'Thor','ThorRagnar','13500-920','99567-6789','Dell','Palmital');
insert into EMPREGADO values (2,3,'Flash','FlashDarker','14523-025','99891-7890','Dell','Perdeneiras');

-- verificando dados cadastrados
select * from EMPREGADO;
