-- EXERCICIO 13
-- criando tabela autor
create table autor
(
id		int			identity,
nome	varchar(40) not null,
fone	varchar(20)		null
primary key(id)
);

-- criando tabela autor temporaria
create table autor_tmp
(
id		int			not null,
nome	varchar(40)	not null,
fone	varchar(20)		null
primary key(id)
);

-- inserindo dados na tabela
insert into autor values ('José','99262-8021');
insert into autor values ('João','99812-9018');

-- importando dados da tabela
insert into autor_tmp
select * from autor;

-- verificando dados cadastrados
select * from autor_tmp;
