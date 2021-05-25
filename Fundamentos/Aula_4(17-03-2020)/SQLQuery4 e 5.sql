-- criando tabela PRODUTOS
create table PRODUTOS1_AULA4
(
id_pro		int				identity,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null,
quantdd		int				default	100,
dtvalidade	varchar(30)		not null
primary key(id_pro)
);

insert into PRODUTOS1_AULA4 values ('Ovomaltine',90.99,default,'04/05/2020');
insert into PRODUTOS1_AULA4 values ('Diamante Negro',80.99,default,'01/10/2020');
insert into PRODUTOS1_AULA4 values ('Ovomaltine',70.99,default,'08/01/2020');

-- EXERCICIO 4
-- criando tabela PRODUTOS2
create table PRODUTOS2_AULA4
(
id_pro		int				identity,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null
primary key(id_pro)
);

-- EXERCICIO 5
-- importando dados da tabela PRODUTOS1
insert into PRODUTOS2_AULA4	(nome, preco)
select nome, preco from PRODUTOS1_AULA4 Where id_pro <= 2;


-- verificando dados cadastrados
select * from PRODUTOS1_AULA4;
select * from PRODUTOS2_AULA4;

